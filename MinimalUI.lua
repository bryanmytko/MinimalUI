function Greeting(self)
  local name = UnitName("player")
  message("Hello " .. name .. realm)
end

Greeting()

-- Create a hidden parent to attach frames we want to hide to
local HiddenUI = CreateFrame("Frame", "BlizzardUIHider", UIParent)
HiddenUI:Hide()

-- Hide default frames
MainMenuBarArtFrame:SetParent(HiddenUI)
MainMenuExpBar:SetParent(HiddenUI)
MainMenuBarMaxLevelBar:SetParent(HiddenUI)

-- Demo stuff

-- local scale = 1.5
--
-- local frame = CreateFrame("Frame","LOLFrame",UIParent)
-- frame:SetWidth((#CLASS_SORT_ORDER*40)+20)
-- frame:SetHeight(40+20)
-- frame:ClearAllPoints()
-- frame:SetBackdrop(StaticPopup1:GetBackdrop())
-- frame:SetPoint("CENTER",UIParent)
-- frame:SetScale(scale)
-- frame:Show()
--
-- local prevpos = false
--
-- local function myButton(pos,name)
--
--   local button = CreateFrame("Button", "LOL"..name.."LOL", UIParent, "ActionButtonTemplate")
--   button:SetScale(scale)
--   if not prevpos then button:SetPoint("TOPLEFT",frame,"TOPLEFT",13,-13)
--   else button:SetPoint("LEFT",prevpos,"RIGHT",4,0)
--   end
--   _G[button:GetName().."Icon"]:SetTexture("Interface\\GLUES\\CHARACTERCREATE\\UI-CHARACTERCREATE-CLASSES")
--   local class = CLASS_SORT_ORDER[pos]
--   local coords = CLASS_ICON_TCOORDS[class]
--   _G[button:GetName().."Icon"]:SetTexCoord(unpack(coords))
--   button:SetScript("OnClick", function()
--     SendChatMessage("LOL "..class,"GUILD")
--   end )
--   prevpos = "LOL"..name.."LOL"
-- end
--
-- for k,v in pairs(CLASS_SORT_ORDER) do
--   myButton(k,v)
-- end
