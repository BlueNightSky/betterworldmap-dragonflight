---------------------------------- NAMESPACE ----------------------------------
local _, ns = ...
local Map = ns.Map

local map = Map({id = 2151})

------------------------------ ANCIENT WAYGATES -------------------------------

map[2862] = {
    group = ns.groups.ANCIENT_WAYGATES,
    coordinates = 61221253
} -- Morqut Islet

-------------------------------- FISHING HOLE ---------------------------------

map[7412] = {
    group = ns.groups.FISHING_HOLE
} -- Dragonskull Island Fishing Hole

------------------------ FROSTSTONE VAULT PRIMAL STORM ------------------------

local FrostStoneVaultStorm = {group = ns.groups.FROSTSTONE_VAULT_STORM}

map[7408] = FrostStoneVaultStorm -- Froststone Vault Primal Storm - Air
map[7409] = FrostStoneVaultStorm -- Froststone Vault Primal Storm - Earth
map[7410] = FrostStoneVaultStorm -- Froststone Vault Primal Storm - Fire
map[7411] = FrostStoneVaultStorm -- Froststone Vault Primal Storm - Water
