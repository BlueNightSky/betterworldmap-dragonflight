---------------------------------- NAMESPACE ----------------------------------
local ADDON_NAME, ns = ...

------------------------------------- MAP -------------------------------------

ns.map = {}

function Map(attrs)
    local map = {}
    if attrs then for k, v in pairs(attrs) do map[k] = v end end

    if not map.id then error('Map must have an id!') end

    map.pins = {}

    if ns.map[ns.parentMapID][map.id] then
        error('Map already registered: ' .. map.id)
    end
    ns.map[ns.parentMapID][map.id] = map

    return map
end

ns.Map = Map
