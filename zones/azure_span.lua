---------------------------------- NAMESPACE ----------------------------------
local _, ns = ...
local Map = ns.Map

local map = Map({id = 2024})

----------------------------------- ISKAARA -----------------------------------

map.pins[7393] = {
    group = ns.groups.FACTION_TUSKARR
} -- Iskaara

------------------------------ ANCIENT WAYGATES -------------------------------

map.pins[2838] = {
    group = ns.groups.ANCIENT_WAYGATES,
    coordinates = 51466802
} -- Cobalt Assembly

map.pins[2837] = {
    group = ns.groups.ANCIENT_WAYGATES,
    coordinates = 63966829
} -- Vakthros

------------------------------- COMMUNITY FEAST -------------------------------

local CommunityFeast = {group = ns.groups.COMMUNITY_FEAST}

map.pins[7218] = CommunityFeast -- Community Feast - Before
map.pins[7219] = CommunityFeast -- Community Feast - During
map.pins[7220] = CommunityFeast -- Community Feast - After

------------------------------ DRAGONRIDING RALLY -----------------------------

map.pins[7263] = {
    group = ns.groups.DRAGONRIDING_RALLY
} -- Azure Span Rally

------------------------------- ELEMENTAL STORM -------------------------------

local ElementalStorm = {group = ns.groups.ELEMENTAL_STORM}

map.pins[7229] = ElementalStorm -- Brakenhide Hollow - Thunderstorm
map.pins[7230] = ElementalStorm -- Brakenhide Hollow - Sandstorm
map.pins[7231] = ElementalStorm -- Brakenhide Hollow - Firestorm
map.pins[7232] = ElementalStorm -- Brakenhide Hollow - Snowstorm
map.pins[7233] = ElementalStorm -- Cobalt Assembly - Thunderstorm
map.pins[7234] = ElementalStorm -- Cobalt Assembly - Sandstorm
map.pins[7235] = ElementalStorm -- Cobalt Assembly - Firestorm
map.pins[7236] = ElementalStorm -- Cobalt Assembly - Snowstorm
map.pins[7237] = ElementalStorm -- Imbu - Thunderstorm
map.pins[7238] = ElementalStorm -- Imbu - Sandstorm
map.pins[7239] = ElementalStorm -- Imbu - Firestorm
map.pins[7240] = ElementalStorm -- Imbu - Snowstorm

-------------------------------- FISHING HOLE ---------------------------------

map.pins[7266] = {
    group = ns.groups.FISHING_HOLE
} -- Grimtusks Fishing Hole

--------------------------------- GRAND HUNTS ---------------------------------

local GrandHunt = {group = ns.groups.GRAND_HUNTS}

map.pins[7095] = GrandHunt -- Eastern Azure Span Hunt
map.pins[7096] = GrandHunt -- Southern Azure Span Hunt
map.pins[7094] = GrandHunt -- Western Azure San Hunt

-------------------------- ZARALEK CAVERN ENTRANCES ---------------------------

map.pins[7469] = {
    group = ns.groups.ZARALEK_CAVERN_ENTRANCES,
    passive = true
} -- Lookout Breach
