-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local _, ns = ...
local Map = ns.Map

local ResearchersUnderFire = ns.pin.ResearchersUnderFire

-------------------------------------------------------------------------------

local map = Map({id = 2133, parent = ns.parentMapID})

-------------------------------------------------------------------------------
------------------------------------ LOAMM ------------------------------------
-------------------------------------------------------------------------------

map.pins[7489] = {
    group = ns.groups.FACTION_NIFFEN,
    coordinates = 88898299
} -- Loamm

-------------------------------------------------------------------------------
--------------------------- RESEARCHERS UNDER FIRE ----------------------------
-------------------------------------------------------------------------------

map.pins[7459] = ResearchersUnderFire -- Titan Lockdown - Before
map.pins[7461] = ResearchersUnderFire -- Titan Lockdown - During
map.pins[7460] = ResearchersUnderFire -- Zaqali Ruin Investigation - Before
map.pins[7462] = ResearchersUnderFire -- Zaqali Ruin Investigation - During
