-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local _, ns = ...
local Map = ns.Map

-------------------------------------------------------------------------------

local map = Map({id = 2023})

-------------------------------------------------------------------------------
------------------------------ ANCIENT WAYGATES -------------------------------
-------------------------------------------------------------------------------

map[2840] = {
	name = 'Shady Sanctuary',
	group = ns.groups.ANCIENT_WAYGATES,
	coordinates = 34705779
}

map[2839] = {
	name = 'Ruszathar Reach',
	group = ns.groups.ANCIENT_WAYGATES,
	coordinates = 49765289
}

-------------------------------------------------------------------------------
-------------------------------- AYLAAG CAMPS ---------------------------------
-------------------------------------------------------------------------------

map[7101] = {
	name = 'Aylaag Camp - River Camp',
	group = ns.groups.AYLAAG_CAMPS
}

map[7102] = {
	name = 'Aylaag Camp - Aylaag Outpost',
	group = ns.groups.AYLAAG_CAMPS
}

map[7103] = {
	name = 'Aylaag Camp - Eaglewatch Outpost',
	group = ns.groups.AYLAAG_CAMPS
}

-------------------------------------------------------------------------------
------------------------------- ELEMENTAL STORM -------------------------------
-------------------------------------------------------------------------------

map[7221] = {
	name = 'Nokhudon Hold - Thunderstorm',
	group = ns.groups.ELEMENTAL_STORM
}

map[7222] = {
	name = 'Nokhudon Hold - Sandstorm',
	group = ns.groups.ELEMENTAL_STORM
}

map[7223] = {
	name = 'Nokhudon Hold - Firestorm',
	group = ns.groups.ELEMENTAL_STORM
}

map[7224] = {
	name = 'Nokhudon Hold - Snowstorm',
	group = ns.groups.ELEMENTAL_STORM
}

-------------------------------------------------------------------------------
-------------------------------- FISHING HOLE ---------------------------------
-------------------------------------------------------------------------------

map[7270] = {
	name = 'Dragonsprings Fishing Hole',
	group = ns.groups.FISHING_HOLE
}

-------------------------------------------------------------------------------
--------------------------------- GRAND HUNTS ---------------------------------
-------------------------------------------------------------------------------

map[7098] = {
	name = 'Northern Ohn\'ahran Plains Hunt',
	group = ns.groups.GRAND_HUNTS
}

map[7089] = {
	name = 'Western Ohn\'ahran Plains Hunt',
	group = ns.groups.GRAND_HUNTS
}

map[7090] = {
	name = 'Eastern Ohn\'ahran Plains Hunt',
	group = ns.groups.GRAND_HUNTS
}
