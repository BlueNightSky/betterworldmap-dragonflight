---------------------------------- NAMESPACE ----------------------------------
local _, ns = ...
local Map = ns.Map

local map = Map({id = 2151})

------------------------------ ANCIENT WAYGATES -------------------------------

map.pins[2862] = {
    group = ns.groups.ANCIENT_WAYGATES,
    coordinates = 61221253
} -- Morqut Islet

-------------------------------- FISHING HOLE ---------------------------------

map.pins[7412] = {
    group = ns.groups.FISHING_HOLE
} -- Dragonskull Island Fishing Hole

------------------------ FROSTSTONE VAULT PRIMAL STORM ------------------------

local FrostStoneVaultStorm = {group = ns.groups.FROSTSTONE_VAULT_STORM}

map.pins[7408] = FrostStoneVaultStorm -- Froststone Vault Primal Storm - Air
map.pins[7409] = FrostStoneVaultStorm -- Froststone Vault Primal Storm - Earth
map.pins[7410] = FrostStoneVaultStorm -- Froststone Vault Primal Storm - Fire
map.pins[7411] = FrostStoneVaultStorm -- Froststone Vault Primal Storm - Water
