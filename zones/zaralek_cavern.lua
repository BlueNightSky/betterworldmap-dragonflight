---------------------------------- NAMESPACE ----------------------------------
local _, ns = ...
local Map = ns.Map

local map = Map({id = 2133})

------------------------------------ LOAMM ------------------------------------

map.pins[7489] = {
    group = ns.groups.FACTION_NIFFEN,
    coordinates = 88898299
} -- Loamm

--------------------------- RESEARCHERS UNDER FIRE ----------------------------

local ResearchersUnderFire = {
    group = ns.groups.RESEARCHERS_UNDER_FIRE,
    coordinates = 87248274
}

map.pins[7459] = ResearchersUnderFire -- Titan Lockdown - Before
map.pins[7461] = ResearchersUnderFire -- Titan Lockdown - During

map.pins[7460] = ResearchersUnderFire -- Zaqali Ruin Investigation - Before
map.pins[7462] = ResearchersUnderFire -- Zaqali Ruin Investigation - During
