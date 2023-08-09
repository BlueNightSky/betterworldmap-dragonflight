---------------------------------- NAMESPACE ----------------------------------
local _, ns = ...
local Map = ns.Map

local map = Map({id = 2025})
local val = Map({id = 2112})

--------------------------- THE SEAT OF THE ASPECTS ---------------------------

map[7391] = {
    group = ns.groups.FACTION_VALDRAKKEN
} -- The Seat of the Aspects

------------------------------ ANCIENT WAYGATES -------------------------------

map[2834] = {
    group = ns.groups.ANCIENT_WAYGATES,
    coordinates = 60925612
} -- Eon's Fringe

map[2836] = {
    group = ns.groups.ANCIENT_WAYGATES,
    coordinates = 64934099
} -- Algeth'era

------------------------------ DRAGONRIDING RALLY -----------------------------

map[7264] = {
    group = ns.groups.DRAGONRIDING_RALLY
} -- Thaldraszus Rally

------------------------------- ELEMENTAL STORM -------------------------------

local ElementalStorm = {group = ns.groups.ELEMENTAL_STORM}

map[7245] = ElementalStorm -- Tyrhold - Thunderstorm
map[7246] = ElementalStorm -- Tyrhold - Sandstorm
map[7247] = ElementalStorm -- Tyrhold - Firestorm
map[7248] = ElementalStorm -- Tyrhold - Snowstorm
map[7298] = ElementalStorm -- Primalist Future - Thunderstorm
map[7299] = ElementalStorm -- Primalist Future - Sandstorm
map[7300] = ElementalStorm -- Primalist Future - Firestorm
map[7301] = ElementalStorm -- Primalist Future - Snowstorm

-------------------------------- FISHING HOLE ---------------------------------

map[7271] = {
    group = ns.groups.FISHING_HOLE
} -- Tyrhold Fishing Hole

--------------------------------- GRAND HUNTS ---------------------------------

local GrandHunt = {group = ns.groups.GRAND_HUNTS}

map[7097] = GrandHunt -- Southern Thaldraszus Hunt
map[7099] = GrandHunt -- Northern Thaldraszus Hunt

--------------------------------- GREAT VAULT ---------------------------------

val[7455] = {
    group = ns.groups.GREAT_VAULT
} -- Great Vault

---------------------------------- TIME RIFT ----------------------------------

map[7492] = {
    group = ns.groups.TIME_RIFT
} -- Time Rift
