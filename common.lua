-------------------------------------------------------------------------------
---------------------------------- NAMESPACE ----------------------------------
-------------------------------------------------------------------------------
local _, ns = ...
local L = ns.locale

-------------------------------------------------------------------------------

ns.expansion = 10 -- Dragonflight
ns.parentMapID = 1978 -- Dragon Isles

ns.map[ns.parentMapID] = {}

-------------------------------------------------------------------------------
----------------------------------- GROUPS ------------------------------------
-------------------------------------------------------------------------------

ns.groups.ANCIENT_WAYGATES = {
    atlas = 'flightmaster_ancientwaygate-taxinode_neutral',
    label = L['ancient_waygate_label'],
    name = 'ancient_waygate'
}

ns.groups.AYLAAG_CAMPS = {
    atlas = 'MajorFactions_MapIcons_Centaur64',
    label = L['aylaag_camp_label'],
    name = 'aylaag_camp'
}

ns.groups.ELEMENTAL_STORM = {
    atlas = 'ElementalStorm-Lesser-Fire',
    label = L['elemental_storm_label'],
    name = 'elemental_storm'
}

ns.groups.GRAND_HUNTS = {
    atlas = 'minimap-genericevent-hornicon',
    label = L['grand_hunt_label'],
    name = 'grand_hunt'
}

ns.groups.COMMUNITY_FEAST = {
    atlas = 'MajorFactions_MapIcons_Tuskarr64',
    label = L['community_feast_label'],
    name = 'community_feast'
}

ns.groups.DRAGONBANE_SIEGE = {
    atlas = 'minimap-genericevent-hornicon',
    label = L['siege_on_dragonbane_keep_label'],
    name = 'siege_on_dragonbane_keep'
}

ns.groups.FISHING_HOLE = {
    atlas = 'Fishing-Hole',
    label = L['tuskarr_fishing_hole_label'],
    name = 'tuskarr_fishing_hole'
}

ns.groups.FROSTSTONE_VAULT_STORM = {
    atlas = 'ElementalStorm-Boss-Air',
    label = L['froststone_vault_storm_label'],
    name = 'froststone_vault_storm'
}
