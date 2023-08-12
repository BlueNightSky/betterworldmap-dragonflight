---------------------------------- NAMESPACE ----------------------------------
local ADDON_NAME, ns = ...

local Addon = LibStub('AceAddon-3.0'):NewAddon(ADDON_NAME, 'AceEvent-3.0')
local L = LibStub('AceLocale-3.0'):GetLocale(ADDON_NAME)

ns.addon = Addon
ns.locale = L

ns.DB = ADDON_NAME .. 'DB'

ns.HBD = LibStub('HereBeDragons-2.0')
ns.PIN = LibStub('HereBeDragons-Pins-2.0')
ns.DDM = LibStub('LibUIDropDownMenu-4.0')

_G[ADDON_NAME] = Addon

----------------------------------- OPTIONS -----------------------------------

ns.SetDefaultOptions = function()
    _G[ns.DB] = {}
    for _, group in pairs(ns.groups) do
        _G[ns.DB]['enable_' .. group.name] = true
    end
end

ns.GetOpt = function(o) return _G[ns.DB][o] end

ns.SetOpt = function(o) _G[ns.DB][o] = not _G[ns.DB][o] ns.addon:Refresh() end

------------------------------------ TEXT -------------------------------------

ns.PrepareText = function(str)
    for type, id in str:gmatch('{(%l+):(%d+)(%l*)}') do
        if type == 'spell' then
            C_Spell.RequestLoadSpellData(tonumber(id))
        end
    end
end

ns.RenderText = function(str)
    for type, id in str:gmatch('{(%l+):(%d+)(%l*)}') do
        if type == 'spell' then
            local name = GetSpellInfo(tonumber(id))
            return name
        end
    end
    return str
end

------------------------------ WORLD MAP BUTTON -------------------------------

local WorldMapOptionsButtonMixin = {}
_G[ADDON_NAME .. 'WorldMapOptionsButtonMixin'] = WorldMapOptionsButtonMixin

function WorldMapOptionsButtonMixin:OnLoad()
    local drop_down_name = ADDON_NAME .. 'WorldMapDropDownMenu'
    self.DropDown = ns.DDM:Create_UIDropDownMenu(drop_down_name, self)
    ns.DDM:UIDropDownMenu_SetInitializeFunction(self.DropDown, function(dropdown)
        dropdown:GetParent():InitializeDropDown()
    end)
end

function WorldMapOptionsButtonMixin:OnMouseDown()
    self.Icon:SetPoint('TOPLEFT', 8, -8)
    local xOffset = WorldMapFrame.isMaximized and 30 or 0
    self.DropDown.point = WorldMapFrame.isMaximized and 'TOPRIGHT' or 'TOPLEFT'
    ns.DDM:ToggleDropDownMenu(1, nil, self.DropDown, self, xOffset, -5)
    PlaySound(SOUNDKIT.IG_MAINMENU_OPTION_CHECKBOX_ON)
end

function WorldMapOptionsButtonMixin:OnMouseUp()
    self.Icon:SetPoint('TOPLEFT', self, 'TOPLEFT', 6, -6)
end

function WorldMapOptionsButtonMixin:OnEnter()
    GameTooltip:SetOwner(self, 'ANCHOR_RIGHT')
    GameTooltip_SetTitle(GameTooltip, ns.addon_name)
    GameTooltip_AddNormalLine(GameTooltip, L['addon_description'])
    GameTooltip:Show()
end

function WorldMapOptionsButtonMixin:Refresh()
    local mapID = self:GetParent():GetMapID()
    if mapID == ns.parentMapID then self:Show() else self:Hide() end
end

function WorldMapOptionsButtonMixin:InitializeDropDown()
    local mapID = self:GetParent():GetMapID()
    if mapID == ns.parentMapID then
        for _, section in ipairs(ns.menuGroups) do
            ns.DDM:UIDropDownMenu_AddButton({
                isTitle = true,
                text = section.title,
                notClickable = 1,
                notCheckable = 1
            })
            for _, group in ipairs(section.groups) do
                local atlas = CreateAtlasMarkup(group.atlas, 20, 20)
                ns.DDM:UIDropDownMenu_AddButton({
                    text = atlas .. ' ' .. ns.RenderText(group.label),
                    isNotRadio = true,
                    keepShownOnClick = true,
                    checked = ns.GetOpt('enable_' .. group.name),
                    func = function()
                        ns.SetOpt('enable_' .. group.name)
                    end
                })
            end
        end
    end
end

------------------------------------ ADDON ------------------------------------

function Addon:OnInitialize()
    if not ns.expansion then error('Expansion not set: ' .. ADDON_NAME) end
    if not ns.parentMapID then error('Parent map not set: ' .. ADDON_NAME) end

    if not _G[ns.DB] then ns:SetDefaultOptions() end

    local template = ADDON_NAME .. 'WorldMapOptionsButtonTemplate'
    LibStub('Krowi_WorldMapButtons-1.4'):Add(template, 'DROPDOWNTOGGLEBUTTON')

    self:RegisterEvent('PLAYER_ENTERING_WORLD', function()
        self:UnregisterEvent('PLAYER_ENTERING_WORLD')
        local expansion_name = EJ_GetTierInfo(ns.expansion)
        ns.addon_name = 'BetterWorldMap: ' .. expansion_name
    end)
end

function Addon:Refresh()
    for provider in next, WorldMapFrame.dataProviders do
        provider:RefreshAllData()
    end
    ns.FP.UpdateAllFlightPoints(WorldMapFrame.mapID)
end
