---------------------------------- NAMESPACE ----------------------------------
local _, ns = ...
local Map = ns.Map

local map = Map({id = 2024})

----------------------------------- ISKAARA -----------------------------------

map[7393] = {
    group = ns.groups.FACTION_TUSKARR
} -- Iskaara

------------------------------ ANCIENT WAYGATES -------------------------------

map[2838] = {
    group = ns.groups.ANCIENT_WAYGATES,
    coordinates = 51466802
} -- Cobalt Assembly

map[2837] = {
    group = ns.groups.ANCIENT_WAYGATES,
    coordinates = 63966829
} -- Vakthros

------------------------------- COMMUNITY FEAST -------------------------------

local CommunityFeast = {group = ns.groups.COMMUNITY_FEAST}

map[7218] = CommunityFeast -- Community Feast - Before
map[7219] = CommunityFeast -- Community Feast - During
map[7220] = CommunityFeast -- Community Feast - After

------------------------------ DRAGONRIDING RALLY -----------------------------

map[7263] = {
    group = ns.groups.DRAGONRIDING_RALLY
} -- Azure Span Rally

------------------------------- ELEMENTAL STORM -------------------------------

local ElementalStorm = {group = ns.groups.ELEMENTAL_STORM}

map[7229] = ElementalStorm -- Brakenhide Hollow - Thunderstorm
map[7230] = ElementalStorm -- Brakenhide Hollow - Sandstorm
map[7231] = ElementalStorm -- Brakenhide Hollow - Firestorm
map[7232] = ElementalStorm -- Brakenhide Hollow - Snowstorm
map[7233] = ElementalStorm -- Cobalt Assembly - Thunderstorm
map[7234] = ElementalStorm -- Cobalt Assembly - Sandstorm
map[7235] = ElementalStorm -- Cobalt Assembly - Firestorm
map[7236] = ElementalStorm -- Cobalt Assembly - Snowstorm
map[7237] = ElementalStorm -- Imbu - Thunderstorm
map[7238] = ElementalStorm -- Imbu - Sandstorm
map[7239] = ElementalStorm -- Imbu - Firestorm
map[7240] = ElementalStorm -- Imbu - Snowstorm

-------------------------------- FISHING HOLE ---------------------------------

map[7266] = {
    group = ns.groups.FISHING_HOLE
} -- Grimtusks Fishing Hole

--------------------------------- GRAND HUNTS ---------------------------------

local GrandHunt = {group = ns.groups.GRAND_HUNTS}

map[7095] = GrandHunt -- Eastern Azure Span Hunt
map[7096] = GrandHunt -- Southern Azure Span Hunt
map[7094] = GrandHunt -- Western Azure San Hunt

-------------------------- ZARALEK CAVERN ENTRANCES ---------------------------

map[7469] = {
    group = ns.groups.ZARALEK_CAVERN_ENTRANCES,
    passive = true
} -- Lookout Breach
