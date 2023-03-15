-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local _, ns = ...
local Map = ns.Map

-------------------------------------------------------------------------------

local map = Map({id = 2151})

-------------------------------------------------------------------------------
------------------------------ ANCIENT WAYGATES -------------------------------
-------------------------------------------------------------------------------

map[2862] = {
	name = 'Morqut Islet',
	group = ns.groups.ANCIENT_WAYGATES,
	coordinates = 61221253
}

-------------------------------------------------------------------------------
-------------------------------- FISHING HOLE ---------------------------------
-------------------------------------------------------------------------------

map[7412] = {
	name = 'Dragonskull Island Fishing Hole',
	group = ns.groups.FISHING_HOLE
}

-------------------------------------------------------------------------------
------------------------ FROSTSTONE VAULT PRIMAL STORM ------------------------
-------------------------------------------------------------------------------

map[7408] = {
	name = 'Froststone Vault Primal Storm - Air',
	group = ns.groups.FROSTSTONE_VAULT_STORM
}

map[7409] = {
	name = 'Froststone Vault Primal Storm - Earth',
	group = ns.groups.FROSTSTONE_VAULT_STORM
}

map[7410] = {
	name = 'Froststone Vault Primal Storm - Fire',
	group = ns.groups.FROSTSTONE_VAULT_STORM
}

map[7411] = {
	name = 'Froststone Vault Primal Storm - Water',
	group = ns.groups.FROSTSTONE_VAULT_STORM
}
