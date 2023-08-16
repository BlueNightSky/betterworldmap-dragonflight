-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...

ns.POI = {}
ns.FP = {}

-------------------------------------------------------------------------------
---------------------------------- AREA POIS ----------------------------------
-------------------------------------------------------------------------------

ns.POI.ProcessPOIInfo = function(self, map, mapID, childMapID, poiInfo)
    local poi = ns.maps[childMapID].pins[poiInfo.areaPoiID]
    if ns.IsGroupEnabled(poi.group) then
        if poi.coordinates then
            local x, y = ns.GetXY(poi.coordinates)
            poiInfo.position:SetXY(x, y)
        else
            local oX, oY = poiInfo.position:GetXY()
            local nX, nY = ns.libs.HBD:TranslateZoneCoordinates(oX, oY, childMapID, mapID)
            poiInfo.position:SetXY(nX, nY)
        end
        poiInfo.dataProvider = self
        map:AcquirePin(self:GetPinTemplate(), poiInfo)
    end
end

ns.POI.ProcessPassiveMapPOIs = function(self, map, mapID, childMapID)
    for poiID, poiData in pairs(ns.maps[childMapID].pins) do
        if poiData.passive and poiData.passive == true then
            local poiInfo = C_AreaPoiInfo.GetAreaPOIInfo(childMapID, poiID)
            if poiInfo then
                ns.POI.ProcessPOIInfo(self, map, mapID, childMapID, poiInfo)
            end
        end
    end
end

ns.POI.ProcessActiveMapPOIs = function(self, map, mapID, childMapID)
    for _, poiID in next, C_AreaPoiInfo.GetAreaPOIForMap(childMapID) do
        local poiInfo = C_AreaPoiInfo.GetAreaPOIInfo(childMapID, poiID)
        if poiInfo and ns.IsValidID(childMapID, poiID) then
            ns.POI.ProcessPOIInfo(self, map, mapID, childMapID, poiInfo)
        end
    end
end

ns.POI.ProcessChildMap = function(self, map, mapID)
    for childMapID, childMap in pairs(ns.maps) do
        if childMap.parent == mapID then
            ns.POI.ProcessActiveMapPOIs(self, map, mapID, childMapID)
            ns.POI.ProcessPassiveMapPOIs(self, map, mapID, childMapID)
        end
    end
end

ns.POI.UpdateAreaPOIs = function(self)
    local map = self:GetMap()
    local mapID = map:GetMapID()
    if ns.IsActiveMap(mapID) then
        ns.POI.ProcessChildMap(self, map, mapID)
    end
end

for provider in next, WorldMapFrame.dataProviders do
    if provider.GetPinTemplate then
        if provider:GetPinTemplate() == 'AreaPOIPinTemplate' then
            hooksecurefunc(provider, 'RefreshAllData', ns.POI.UpdateAreaPOIs)
        end
    end
end

-------------------------------------------------------------------------------
-------------------------------- FLIGHT POINTS --------------------------------
-------------------------------------------------------------------------------

ns.FP.CreatePin = function(nodeID, group)
    local pin = CreateFrame('Frame', 'BWM_PIN_FP_' .. nodeID, nil)
    pin:SetWidth(22)
    pin:SetHeight(22)
    pin.texture = pin:CreateTexture()
    pin.texture:SetAtlas(group.atlas, true)
    pin.texture:SetAllPoints()
    return pin
end

ns.FP.ProcessTaxiNode = function(mapID, childMapID, taxiNode, group)
    local fp = ns.maps[childMapID].pins[taxiNode.nodeID]
    if not fp.pin then fp.pin = ns.FP.CreatePin(taxiNode.nodeID, group) end
    local pin = fp.pin
    pin:HookScript('OnEnter', function()
        GameTooltip:SetOwner(pin, 'ANCHOR_TOP')
        GameTooltip:AddLine(taxiNode.name, 1, 1, 1)
        GameTooltip:Show()
    end)
    pin:HookScript('OnLeave', function()
        GameTooltip:Hide()
    end)
    local x, y = ns.GetXY(fp.coordinates)
    ns.libs.PIN:AddWorldMapIconMap(ADDON_NAME, pin, mapID, x, y)
    pin:Show()
end

ns.FP.ProcessTaxiNodes = function(mapID, childMapID, group)
    local taxiNodes = C_TaxiMap.GetTaxiNodesForMap(childMapID)
    for _, taxiNode in pairs(taxiNodes) do
        if taxiNode and ns.IsValidID(childMapID, taxiNode.nodeID) then
            if ns.IsGroupMember(childMapID, taxiNode.nodeID, group) then
                ns.FP.ProcessTaxiNode(mapID, childMapID, taxiNode, group)
            end
        end
    end
end

ns.FP.ProcessChildMap = function(mapID, group)
    for childMapID, childMap in pairs(ns.maps) do
        if childMap.parent == mapID then
            ns.FP.ProcessTaxiNodes(mapID, childMapID, group)
        end
    end
end

ns.FP.UpdateFlightPoints = function(mapID, group)
    if ns.IsActiveMap(mapID) then
        if ns.IsGroupEnabled(group) then
            ns.FP.ProcessChildMap(mapID, group)
        else
            ns.libs.PIN:RemoveAllWorldMapIcons(ADDON_NAME)
        end
    end
end

ns.FP.UpdateAllFlightPoints = function(mapID)
    for _, group in pairs(ns.groups) do
        if group.type and group.type == 'flightpoint' then
            ns.FP.UpdateFlightPoints(mapID, group)
        end
    end
end

hooksecurefunc(WorldMapFrame, 'OnMapChanged', function()
    ns.FP.UpdateAllFlightPoints(WorldMapFrame.mapID)
end)
