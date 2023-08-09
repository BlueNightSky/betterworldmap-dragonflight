---------------------------------- NAMESPACE ----------------------------------
local _, ns = ...
local Map = ns.Map

local map = Map({id = 2023})

----------------------------------- MARUUKAI ----------------------------------

map[7392] = {
    group = ns.groups.FACTION_CENTAUR
} -- Maruukai

------------------------------ ANCIENT WAYGATES -------------------------------

map[2840] = {
    group = ns.groups.ANCIENT_WAYGATES,
    coordinates = 34705779
} -- Shady Sanctuary

map[2839] = {
    group = ns.groups.ANCIENT_WAYGATES,
    coordinates = 49765289
} -- Ruszathar Reach

-------------------------------- AYLAAG CAMPS ---------------------------------

local AylaagCamp = {group = ns.groups.AYLAAG_CAMPS}

map[7101] = AylaagCamp -- Aylaag Camp - River Camp
map[7102] = AylaagCamp -- Aylaag Camp - Aylaag Outpost
map[7103] = AylaagCamp -- Aylaag Camp - Eaglewatch Outpost

------------------------------ DRAGONRIDING RALLY -----------------------------

map[7262] = {
    group = ns.groups.DRAGONRIDING_RALLY
} -- Ohn'ahran Plains Rally

------------------------------- ELEMENTAL STORM -------------------------------

local ElementalStorm = {group = ns.groups.ELEMENTAL_STORM}

map[7221] = ElementalStorm -- Nokhudon Hold - Thunderstorm
map[7222] = ElementalStorm -- Nokhudon Hold - Sandstorm
map[7223] = ElementalStorm -- Nokhudon Hold - Firestorm
map[7224] = ElementalStorm -- Nokhudon Hold - Snowstorm

-------------------------------- FISHING HOLE ---------------------------------

map[7270] = {
    group = ns.groups.FISHING_HOLE
} -- Dragonsprings Fishing Hole

--------------------------------- GRAND HUNTS ---------------------------------

local GrandHunt = {group = ns.groups.GRAND_HUNTS}

map[7098] = GrandHunt -- Northern Ohn'ahran Plains Hunt
map[7089] = GrandHunt -- Western Ohn'ahran Plains Hunt
map[7090] = GrandHunt -- Eastern Ohn'ahran Plains Hunt

-------------------------- ZARALEK CAVERN ENTRANCES ---------------------------

local ZaralekCavernEntrance = {
    group = ns.groups.ZARALEK_CAVERN_ENTRANCES,
    passive = true
}

map[7438] = ZaralekCavernEntrance -- The Throughway
map[7467] = ZaralekCavernEntrance -- Old Loamm Road
