-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local _, ns = ...

ns.maps = {}

-------------------------------------------------------------------------------
------------------------------------- MAP -------------------------------------
-------------------------------------------------------------------------------

function Map(attrs)
    local map = {}
    if attrs then for k, v in pairs(attrs) do map[k] = v end end

    if not map.id then error('Map must have an id!') end
    if not map.parent then error('Map must have a parent!') end

    map.pins = {}

    if ns.maps[map.id] then error('Map already added: ' .. map.id) end
    ns.maps[map.id] = map

    return map
end

ns.Map = Map
