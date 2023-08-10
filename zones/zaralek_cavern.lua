---------------------------------- NAMESPACE ----------------------------------
local _, ns = ...
local Map = ns.Map

local map = Map({id = 2133})

------------------------------------ LOAMM ------------------------------------

map[7489] = {
    group = ns.groups.FACTION_NIFFEN,
    coordinates = 88898299
} -- Loamm

--------------------------- RESEARCHERS UNDER FIRE ----------------------------

local ResearchersUnderFire = {
    group = ns.groups.RESEARCHERS_UNDER_FIRE,
    coordinates = 87248274
}

map[7459] = ResearchersUnderFire -- Titan Lockdown - Before
map[7461] = ResearchersUnderFire -- Titan Lockdown - During

map[7460] = ResearchersUnderFire -- Zaqali Ruin Investigation - Before
map[7462] = ResearchersUnderFire -- Zaqali Ruin Investigation - During
