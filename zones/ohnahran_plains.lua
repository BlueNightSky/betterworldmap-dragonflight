---------------------------------- NAMESPACE ----------------------------------
local _, ns = ...
local Map = ns.Map

local map = Map({id = 2023})

----------------------------------- MARUUKAI ----------------------------------

map.pins[7392] = {
    group = ns.groups.FACTION_CENTAUR
} -- Maruukai

------------------------------ ANCIENT WAYGATES -------------------------------

map.pins[2840] = {
    group = ns.groups.ANCIENT_WAYGATES,
    coordinates = 34705779
} -- Shady Sanctuary

map.pins[2839] = {
    group = ns.groups.ANCIENT_WAYGATES,
    coordinates = 49765289
} -- Ruszathar Reach

-------------------------------- AYLAAG CAMPS ---------------------------------

local AylaagCamp = {group = ns.groups.AYLAAG_CAMPS}

map.pins[7101] = AylaagCamp -- Aylaag Camp - River Camp
map.pins[7102] = AylaagCamp -- Aylaag Camp - Aylaag Outpost
map.pins[7103] = AylaagCamp -- Aylaag Camp - Eaglewatch Outpost

------------------------------ DRAGONRIDING RALLY -----------------------------

map.pins[7262] = {
    group = ns.groups.DRAGONRIDING_RALLY
} -- Ohn'ahran Plains Rally

------------------------------- ELEMENTAL STORM -------------------------------

local ElementalStorm = {group = ns.groups.ELEMENTAL_STORM}

map.pins[7221] = ElementalStorm -- Nokhudon Hold - Thunderstorm
map.pins[7222] = ElementalStorm -- Nokhudon Hold - Sandstorm
map.pins[7223] = ElementalStorm -- Nokhudon Hold - Firestorm
map.pins[7224] = ElementalStorm -- Nokhudon Hold - Snowstorm

-------------------------------- FISHING HOLE ---------------------------------

map.pins[7270] = {
    group = ns.groups.FISHING_HOLE
} -- Dragonsprings Fishing Hole

--------------------------------- GRAND HUNTS ---------------------------------

local GrandHunt = {group = ns.groups.GRAND_HUNTS}

map.pins[7098] = GrandHunt -- Northern Ohn'ahran Plains Hunt
map.pins[7089] = GrandHunt -- Western Ohn'ahran Plains Hunt
map.pins[7090] = GrandHunt -- Eastern Ohn'ahran Plains Hunt

-------------------------- ZARALEK CAVERN ENTRANCES ---------------------------

local ZaralekCavernEntrance = {
    group = ns.groups.ZARALEK_CAVERN_ENTRANCES,
    passive = true
}

map.pins[7438] = ZaralekCavernEntrance -- The Throughway
map.pins[7467] = ZaralekCavernEntrance -- Old Loamm Road
