---------------------------------- NAMESPACE ----------------------------------
local _, ns = ...
local L = ns.locale

-------------------------------------------------------------------------------

ns.expansion = 10 -- Dragonflight
ns.parentMapID = 1978 -- Dragon Isles

ns.map[ns.parentMapID] = {}

--------------------------------- DRAGON ISLE ---------------------------------

ns.groups.ANCIENT_WAYGATES = {
    atlas = 'flightmaster_ancientwaygate-taxinode_neutral',
    label = L['ancient_waygate_label'],
    name = 'ancient_waygate',
    type = 'flightpoint'
} -- Ancient Waygates

ns.groups.DRAGONRIDING_RALLY = {
    atlas = 'racing',
    label = L['dragonriding_rally_label'],
    name = 'dragonriding_rally'
} -- Dragonriding Rally

ns.groups.ELEMENTAL_STORM = {
    atlas = 'ElementalStorm-Lesser-Fire',
    label = L['elemental_storm_label'],
    name = 'elemental_storm'
} -- Elemental Storms

ns.groups.FISHING_HOLE = {
    atlas = 'Fishing-Hole',
    label = L['tuskarr_fishing_hole_label'],
    name = 'tuskarr_fishing_hole'
} -- Tuskarr Fishing Holes

ns.groups.GRAND_HUNTS = {
    atlas = 'minimap-genericevent-hornicon',
    label = L['grand_hunt_label'],
    name = 'grand_hunt'
} -- Grand Hunt

ns.groups.ZARALEK_CAVERN_ENTRANCES = {
    atlas = 'CaveUnderground-Down',
    label = L['zaralek_cavern_entrance_label'],
    name = 'zaralek_cavern_entrance'
} -- Zaralek Cavern Entrances

------------------------------- THE WAKING SHORE ------------------------------

ns.groups.FACTION_EXPEDITION = {
    atlas = 'MajorFactions_MapIcons_Expedition64',
    label = L['faction_expedition'],
    name = 'faction_expedition',
} -- Dragonscale Basecamp

ns.groups.DRAGONBANE_SIEGE = {
    atlas = 'minimap-genericevent-hornicon',
    label = L['siege_on_dragonbane_keep_label'],
    name = 'siege_on_dragonbane_keep'
} -- Siege on Dragonbane Keep

------------------------------- OHN'AHRAN PLAINS ------------------------------

ns.groups.FACTION_CENTAUR = {
    atlas = 'MajorFactions_MapIcons_Centaur64',
    label = L['faction_centaur'],
    name = 'faction_centaur',
} -- Maruukai

ns.groups.AYLAAG_CAMPS = {
    atlas = 'MajorFactions_MapIcons_Centaur64',
    label = L['aylaag_camp_label'],
    name = 'aylaag_camp'
} -- Aylaag Camp

---------------------------------- AZURE SPAN ---------------------------------

ns.groups.FACTION_TUSKARR = {
    atlas = 'MajorFactions_MapIcons_Tuskarr64',
    label = L['faction_tuskarr'],
    name = 'faction_tuskarr',
} -- Iskaara

ns.groups.COMMUNITY_FEAST = {
    atlas = 'MajorFactions_MapIcons_Tuskarr64',
    label = L['community_feast_label'],
    name = 'community_feast'
} -- Community Feast

--------------------------------- THALDRASZUS ---------------------------------

ns.groups.FACTION_VALDRAKKEN = {
    atlas = 'MajorFactions_MapIcons_Valdrakken64',
    label = L['faction_valdrakken'],
    name = 'faction_valdrakken',
} -- The Seat of the Aspects

ns.groups.GREAT_VAULT = {
    atlas = 'greatvault-dragonflight-32x32',
    label = L['great_vault_label'],
    name = 'great_vault'
} -- Great Vault

ns.groups.STORMS_FURY = {
    atlas = 'ElementalStorm-Boss-Water',
    label = L['storms_fury_label'],
    name = 'storms_fury'
} -- Storm's Fury

ns.groups.TIME_RIFT = {
    atlas = 'minimap-genericevent-hornicon',
    label = L['time_rift_label'],
    name = 'time_rift'
} -- Time Rift

----------------------------- THE FORBIDDEN REACH -----------------------------

ns.groups.FROSTSTONE_VAULT_STORM = {
    atlas = 'ElementalStorm-Boss-Air',
    label = L['froststone_vault_storm_label'],
    name = 'froststone_vault_storm'
} -- Froststone Vault Primal Storm

-------------------------------- ZARALEK CAVERN -------------------------------

ns.groups.FACTION_NIFFEN = {
    atlas = 'MajorFactions_MapIcons_Niffen64',
    label = L['faction_niffen'],
    name = 'faction_niffen',
} -- Loamm

ns.groups.RESEARCHERS_UNDER_FIRE = {
    atlas = 'minimap-genericevent-hornicon',
    label = L['researchers_under_fire'],
    name = 'researchers_under_fire'
} -- Researchers Under Fire

--------------------------------- MENU GROUPS ---------------------------------

ns.menuGroups = {
    [1] = {
        title = L['zone_dragon_isles'],
        groups = {
            [1] = ns.groups.ANCIENT_WAYGATES,
            [2] = ns.groups.DRAGONRIDING_RALLY,
            [3] = ns.groups.ELEMENTAL_STORM,
            [4] = ns.groups.FISHING_HOLE,
            [5] = ns.groups.GRAND_HUNTS,
            [6] = ns.groups.ZARALEK_CAVERN_ENTRANCES
        }
    },
    [2] = {
        title = L['zone_the_waking_shores'],
        groups = {
            [1] = ns.groups.FACTION_EXPEDITION,
            [2] = ns.groups.DRAGONBANE_SIEGE
        }
    },
    [3] = {
        title = L['zone_ohnahran_plains'],
        groups = {
            [1] = ns.groups.FACTION_CENTAUR,
            [2] = ns.groups.AYLAAG_CAMPS
        }
    },
    [4] = {
        title = L['zone_azure_span'],
        groups = {
            [1] = ns.groups.FACTION_TUSKARR,
            [2] = ns.groups.COMMUNITY_FEAST
        }
    },
    [5] = {
        title = L['zone_thaldraszus'],
        groups = {
            [1] = ns.groups.FACTION_VALDRAKKEN,
            [2] = ns.groups.GREAT_VAULT,
            [3] = ns.groups.STORMS_FURY,
            [4] = ns.groups.TIME_RIFT
        }
    },
    [6] = {
        title = L['zone_the_forbidden_reach'],
        groups = {
            [1] = ns.groups.FROSTSTONE_VAULT_STORM
        }
    },
    [7] = {
        title = L['zone_zaralek_cavern'],
        groups = {
            [1] = ns.groups.FACTION_NIFFEN,
            [2] = ns.groups.RESEARCHERS_UNDER_FIRE
        }
    }
}
