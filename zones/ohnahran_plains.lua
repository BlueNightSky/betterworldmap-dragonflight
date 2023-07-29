---------------------------------- NAMESPACE ----------------------------------
local _, ns = ...
local Map = ns.Map

local map = Map({id = 2023})

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

map[7101] = {
    group = ns.groups.AYLAAG_CAMPS
} -- Aylaag Camp - River Camp

map[7102] = {
    group = ns.groups.AYLAAG_CAMPS
} -- Aylaag Camp - Aylaag Outpost

map[7103] = {
    group = ns.groups.AYLAAG_CAMPS
} -- Aylaag Camp - Eaglewatch Outpost

------------------------------ DRAGONRIDING RALLY -----------------------------

map[7262] = {
    group = ns.groups.DRAGONRIDING_RALLY
} -- Ohn'ahran Plains Rally

------------------------------- ELEMENTAL STORM -------------------------------

map[7221] = {
    group = ns.groups.ELEMENTAL_STORM
} -- Nokhudon Hold - Thunderstorm

map[7222] = {
    group = ns.groups.ELEMENTAL_STORM
} -- Nokhudon Hold - Sandstorm

map[7223] = {
    group = ns.groups.ELEMENTAL_STORM
} -- Nokhudon Hold - Firestorm

map[7224] = {
    group = ns.groups.ELEMENTAL_STORM
} -- Nokhudon Hold - Snowstorm

-------------------------------- FISHING HOLE ---------------------------------

map[7270] = {
    group = ns.groups.FISHING_HOLE
} -- Dragonsprings Fishing Hole

--------------------------------- GRAND HUNTS ---------------------------------

map[7098] = {
    group = ns.groups.GRAND_HUNTS
} -- Northern Ohn'ahran Plains Hunt

map[7089] = {
    group = ns.groups.GRAND_HUNTS
} -- Western Ohn'ahran Plains Hunt

map[7090] = {
    group = ns.groups.GRAND_HUNTS
} -- Eastern Ohn'ahran Plains Hunt

-------------------------- ZARALEK CAVERN ENTRANCES ---------------------------

map[7438] = {
    group = ns.groups.ZARALEK_CAVERN_ENTRANCES,
    passive = true
} -- The Throughway

map[7467] = {
    group = ns.groups.ZARALEK_CAVERN_ENTRANCES,
    passive = true
} -- Old Loamm Road
