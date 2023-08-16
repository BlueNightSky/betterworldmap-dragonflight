-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local _, ns = ...
local Map = ns.Map

local AncientWaygate = ns.pin.AncientWaygate
local DragonbaneSiege = ns.pin.DragonbaneSiege
local DragonridingRally = ns.pin.DragonridingRally
local ElementalStorm = ns.pin.ElementalStorm
local FishingHole = ns.pin.FishingHole
local GrandHunt = ns.pin.GrandHunt

-------------------------------------------------------------------------------

local map = Map({id = 2022, parent = ns.parentMapID})

-------------------------------------------------------------------------------
----------------------------- DRAGONSCALE BASECAMP ----------------------------
-------------------------------------------------------------------------------

map.pins[7365] = {group = ns.groups.FACTION_EXPEDITION} -- Dragonscale Basecamp

-------------------------------------------------------------------------------
------------------------------ ANCIENT WAYGATES -------------------------------
-------------------------------------------------------------------------------

map.pins[2842] = AncientWaygate({coordinates = 48904632}) -- Rubyscale Outpost
map.pins[2841] = AncientWaygate({coordinates = 57673589}) -- Skytop Observatory

-------------------------------------------------------------------------------
------------------------------ DRAGONBANE SIEGE -------------------------------
-------------------------------------------------------------------------------

map.pins[7267] = DragonbaneSiege -- Siege on Dragonbane Keep - Before
map.pins[7104] = DragonbaneSiege -- Siege on Dragonbane Keep - During
map.pins[7413] = DragonbaneSiege -- Siege on Dragonbane Keep - After

-------------------------------------------------------------------------------
------------------------------ DRAGONRIDING RALLY -----------------------------
-------------------------------------------------------------------------------

map.pins[7261] = DragonridingRally -- Waking Shores Rally

-------------------------------------------------------------------------------
------------------------------- ELEMENTAL STORM -------------------------------
-------------------------------------------------------------------------------

map.pins[7249] = ElementalStorm -- Dragonbane Keep - Thunderstorm
map.pins[7250] = ElementalStorm -- Dragonbane Keep - Sandstorm
map.pins[7251] = ElementalStorm -- Dragonbane Keep - Firestorm
map.pins[7252] = ElementalStorm -- Dragonbane Keep - Snowstorm
map.pins[7253] = ElementalStorm -- Slagmire - Thunderstorm
map.pins[7254] = ElementalStorm -- Slagmire - Sandstorm
map.pins[7255] = ElementalStorm -- Slagmire - Firestorm
map.pins[7256] = ElementalStorm -- Slagmire - Snowstorm
map.pins[7257] = ElementalStorm -- Scalecracker Keep - Thunderstorm
map.pins[7258] = ElementalStorm -- Scalecracker Keep - Sandstorm
map.pins[7259] = ElementalStorm -- Scalecracker Keep - Firestorm
map.pins[7260] = ElementalStorm -- Scalecracker Keep - Snowstorm

-------------------------------------------------------------------------------
-------------------------------- FISHING HOLE ---------------------------------
-------------------------------------------------------------------------------

map.pins[7086] = FishingHole -- River Mouth Fishing Hole
map.pins[7272] = FishingHole -- Burning Ascent Fishing Hole

-------------------------------------------------------------------------------
--------------------------------- GRAND HUNTS ---------------------------------
-------------------------------------------------------------------------------

map.pins[7091] = GrandHunt -- Southern Waking Shores Hunt
map.pins[7092] = GrandHunt -- Eastern Waking Shores Hunt
map.pins[7093] = GrandHunt -- Northern Waking Shores Hunt
