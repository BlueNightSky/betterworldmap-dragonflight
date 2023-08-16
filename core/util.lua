-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local ADDON_NAME, ns = ...

------------------------------------------------------------------------------
-------------------------------- LOCALIZATION --------------------------------
------------------------------------------------------------------------------

function PrepareText(str)
    for type, id in str:gmatch('{(%l+):(%d+)(%l*)}') do
        if type == 'spell' then
            C_Spell.RequestLoadSpellData(tonumber(id))
        end
    end
end

function RenderText(str)
    for type, id in str:gmatch('{(%l+):(%d+)(%l*)}') do
        if type == 'spell' then
            local name = GetSpellInfo(tonumber(id))
            return name
        end
    end
    return str
end

ns.PrepareText = PrepareText
ns.RenderText = RenderText

-------------------------------------------------------------------------------
---------------------------------- UTLITIES -----------------------------------
-------------------------------------------------------------------------------

function GetXY(coord)
    return floor(coord / 10000) / 10000, (coord % 10000) / 10000
end

function IsActiveMap(mapID)
    for _, map in pairs(ns.maps) do
        if map.parent == mapID then return true end
    end
    return false
end

function IsGroupEnabled(group)
    return ns.GetOpt('enable_' .. group.name)
end

function IsGroupMember(childMapID, id, group)
    return ns.maps[childMapID].pins[id].group == group
end

function IsValidID(childMapID, id)
    return ns.maps[childMapID].pins[id] and true or false
end

ns.GetXY = GetXY
ns.IsActiveMap = IsActiveMap
ns.IsGroupEnabled = IsGroupEnabled
ns.IsGroupMember = IsGroupMember
ns.IsValidID = IsValidID
