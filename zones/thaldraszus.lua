-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local _, ns = ...
local Map = ns.Map

local AncientWaygate = ns.pin.AncientWaygate
local DragonridingRally = ns.pin.DragonridingRally
local ElementalStorm = ns.pin.ElementalStorm
local FishingHole = ns.pin.FishingHole
local GrandHunt = ns.pin.GrandHunt

-------------------------------------------------------------------------------

local map = Map({id = 2025, parent = ns.parentMapID})
local val = Map({id = 2112, parent = ns.parentMapID})

-------------------------------------------------------------------------------
--------------------------- THE SEAT OF THE ASPECTS ---------------------------
-------------------------------------------------------------------------------

map.pins[7391] = {group = ns.groups.FACTION_VALDRAKKEN} -- The Seat of the Aspects

-------------------------------------------------------------------------------
------------------------------ ANCIENT WAYGATES -------------------------------
-------------------------------------------------------------------------------

map.pins[2834] = AncientWaygate({coordinates = 60925612}) -- Eon's Fringe
map.pins[2836] = AncientWaygate({coordinates = 64934099}) -- Algeth'era

-------------------------------------------------------------------------------
------------------------------ DRAGONRIDING RALLY -----------------------------
-------------------------------------------------------------------------------

map.pins[7264] = DragonridingRally -- Thaldraszus Rally

-------------------------------------------------------------------------------
------------------------------- ELEMENTAL STORM -------------------------------
-------------------------------------------------------------------------------

map.pins[7245] = ElementalStorm -- Tyrhold - Thunderstorm
map.pins[7246] = ElementalStorm -- Tyrhold - Sandstorm
map.pins[7247] = ElementalStorm -- Tyrhold - Firestorm
map.pins[7248] = ElementalStorm -- Tyrhold - Snowstorm
map.pins[7298] = ElementalStorm -- Primalist Future - Thunderstorm
map.pins[7299] = ElementalStorm -- Primalist Future - Sandstorm
map.pins[7300] = ElementalStorm -- Primalist Future - Firestorm
map.pins[7301] = ElementalStorm -- Primalist Future - Snowstorm

-------------------------------------------------------------------------------
-------------------------------- FISHING HOLE ---------------------------------
-------------------------------------------------------------------------------

map.pins[7271] = FishingHole -- Tyrhold Fishing Hole

-------------------------------------------------------------------------------
--------------------------------- GRAND HUNTS ---------------------------------
-------------------------------------------------------------------------------

map.pins[7097] = GrandHunt -- Southern Thaldraszus Hunt
map.pins[7099] = GrandHunt -- Northern Thaldraszus Hunt

-------------------------------------------------------------------------------
--------------------------------- GREAT VAULT ---------------------------------
-------------------------------------------------------------------------------

val.pins[7455] = {group = ns.groups.GREAT_VAULT} -- Great Vault

-------------------------------------------------------------------------------
---------------------------------- TIME RIFT ----------------------------------
-------------------------------------------------------------------------------

map.pins[7492] = {group = ns.groups.TIME_RIFT} -- Time Rift
