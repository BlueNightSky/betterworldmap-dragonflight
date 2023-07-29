---------------------------------- NAMESPACE ----------------------------------
local _, ns = ...
local Map = ns.Map

local map = Map({id = 2022})

------------------------------ ANCIENT WAYGATES -------------------------------

map[2842] = {
    group = ns.groups.ANCIENT_WAYGATES,
    coordinates = 48904632
} -- Rubyscale Outpost

map[2841] = {
    group = ns.groups.ANCIENT_WAYGATES,
    coordinates = 57673589
} -- Skytop Observatory

------------------------------ DRAGONBANE SIEGE -------------------------------

local DragonbaneSiege = {group = ns.groups.DRAGONBANE_SIEGE}

map[7267] = DragonbaneSiege -- Siege on Dragonbane Keep - Before
map[7104] = DragonbaneSiege -- Siege on Dragonbane Keep - During
map[7413] = DragonbaneSiege -- Siege on Dragonbane Keep - After

------------------------------ DRAGONRIDING RALLY -----------------------------

map[7261] = {
    group = ns.groups.DRAGONRIDING_RALLY
} -- Waking Shores Rally

------------------------------- ELEMENTAL STORM -------------------------------

local ElementalStorm = {group = ns.groups.ELEMENTAL_STORM}

map[7249] = ElementalStorm -- Dragonbane Keep - Thunderstorm
map[7250] = ElementalStorm -- Dragonbane Keep - Sandstorm
map[7251] = ElementalStorm -- Dragonbane Keep - Firestorm
map[7252] = ElementalStorm -- Dragonbane Keep - Snowstorm
map[7253] = ElementalStorm -- Slagmire - Thunderstorm
map[7254] = ElementalStorm -- Slagmire - Sandstorm
map[7255] = ElementalStorm -- Slagmire - Firestorm
map[7256] = ElementalStorm -- Slagmire - Snowstorm
map[7257] = ElementalStorm -- Scalecracker Keep - Thunderstorm
map[7258] = ElementalStorm -- Scalecracker Keep - Sandstorm
map[7259] = ElementalStorm -- Scalecracker Keep - Firestorm
map[7260] = ElementalStorm -- Scalecracker Keep - Snowstorm

-------------------------------- FISHING HOLE ---------------------------------

local FishingHole = {group = ns.groups.FISHING_HOLE}

map[7086] = FishingHole -- River Mouth Fishing Hole
map[7272] = FishingHole -- Burning Ascent Fishing Hole

--------------------------------- GRAND HUNTS ---------------------------------

local GrandHunt = {group = ns.groups.GRAND_HUNTS}

map[7091] = GrandHunt -- Southern Waking Shores Hunt
map[7092] = GrandHunt -- Eastern Waking Shores Hunt
map[7093] = GrandHunt -- Northern Waking Shores Hunt
