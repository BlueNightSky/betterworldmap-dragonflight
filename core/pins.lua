-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...

-------------------------------------------------------------------------------
----------------------------------- HELPERS -----------------------------------
-------------------------------------------------------------------------------

ns.GetXY = function(coord)
    return floor(coord / 10000) / 10000, (coord % 10000) / 10000
end

ns.IsGroupEnabled = function(group)
    return ns.GetOpt('enable_' .. group.name)
end

ns.IsValidID = function(childMapID, id)
    return ns.map[ns.parentMapID][childMapID][id] and true or false
end

-------------------------------------------------------------------------------
---------------------------------- AREA POIS ----------------------------------
-------------------------------------------------------------------------------

ns.POI = {}

ns.POI.ProcessPOIInfo = function(self, map, mapID, childMapID, poiInfo)
    local poi = ns.map[mapID][childMapID][poiInfo.areaPoiID]
    if ns.IsGroupEnabled(poi.group) then
        local oX, oY = poiInfo.position:GetXY()
        local nX, nY = ns.HBD:TranslateZoneCoordinates(oX, oY, childMapID, mapID)
        poiInfo.dataProvider = self
        poiInfo.position:SetXY(nX, nY)
        map:AcquirePin(self:GetPinTemplate(), poiInfo)
    end
end

ns.POI.ProcessMapPOIs = function(self, map, mapID, childMapID)
    for _, poiID in next, C_AreaPoiInfo.GetAreaPOIForMap(childMapID) do
        local poiInfo = C_AreaPoiInfo.GetAreaPOIInfo(childMapID, poiID)
        if poiInfo and ns.IsValidID(childMapID, poiID) then
            ns.POI.ProcessPOIInfo(self, map, mapID, childMapID, poiInfo)
        end
    end
end

ns.POI.ProcessChildMap = function(self, map, mapID)
    for childMapID in next, ns.map[mapID] do
        ns.POI.ProcessMapPOIs(self, map, mapID, childMapID)
    end
end

ns.POI.UpdateAreaPOIs = function(self)
    local map = self:GetMap()
    local mapID = map:GetMapID()
    if mapID == ns.parentMapID then
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
------------------------------ ANCIENT WAYGATES -------------------------------
-------------------------------------------------------------------------------

ns.AWG = {}

ns.AWG.CreatePin = function(nodeID)
    local pin = CreateFrame('Frame', 'BWM_Pin_' .. nodeID .. '_AW', nil)
    pin:SetWidth(22)
    pin:SetHeight(22)
    pin.texture = pin:CreateTexture()
    pin.texture:SetAtlas(ns.groups.ANCIENT_WAYGATES.atlas, true)
    pin.texture:SetAllPoints()
    return pin
end

ns.AWG.ProcessTaxiNode = function(mapID, childMapID, taxiNode)
    local fp = ns.map[mapID][childMapID][taxiNode.nodeID]
    if not fp.pin then fp.pin = ns.AWG.CreatePin(taxiNode.nodeID) end
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
    ns.PIN:AddWorldMapIconMap(ADDON_NAME, pin, mapID, x, y)
    pin:Show()
end

ns.AWG.ProcessTaxiNodes = function(mapID, childMapID)
    for _, taxiNode in next, C_TaxiMap.GetTaxiNodesForMap(childMapID) do
        if taxiNode and ns.IsValidID(childMapID, taxiNode.nodeID) then
            ns.AWG.ProcessTaxiNode(mapID, childMapID, taxiNode)
        end
    end
end

ns.AWG.ProcessChildMap = function(mapID)
    for childMapID in next, ns.map[mapID] do
        ns.AWG.ProcessTaxiNodes(mapID, childMapID)
    end
end

ns.AWG.UpdateAncientWaygates = function(mapID)
    if mapID == ns.parentMapID then
        if ns.IsGroupEnabled(ns.groups.ANCIENT_WAYGATES) then
            ns.AWG.ProcessChildMap(mapID)
        else
            ns.PIN:RemoveAllWorldMapIcons(ADDON_NAME)
        end
    end
end

hooksecurefunc(WorldMapFrame, 'OnMapChanged', function()
    ns.AWG.UpdateAncientWaygates(WorldMapFrame.mapID)
end)
