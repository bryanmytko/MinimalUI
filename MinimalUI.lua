-- function Greeting(self)
--   local name = UnitName("player")
--   message("Hello " .. name)
-- end
--
-- Greeting()

-- Create a hidden parent to attach frames we want to hide to
local HiddenUI = CreateFrame("Frame", "BlizzardUIHider", UIParent)
HiddenUI:Hide()

-- Hide default frames
-- MainMenuBarArtFrame:SetParent(HiddenUI)
-- MainMenuExpBar:SetParent(HiddenUI)
-- MainMenuBarMaxLevelBar:SetParent(HiddenUI)

-- Hide Chat Frame
function hideStuff()
  for i = 1, 10 do
    _G[("FriendsMicroButton")]:Hide()
    _G[("ChatFrame%d"):format(i)]:Hide()
    _G[("ChatFrame%dTab"):format(i)]:Hide()
    _G[("ChatFrame%dEditBox"):format(i)]:Hide()
    _G[("ChatFrame%dEditBoxLeft"):format(i)]:Hide()
    _G[("ChatFrame%dEditBoxRight"):format(i)]:Hide()
    _G[("ChatFrame%dEditBoxMid"):format(i)]:Hide()
    _G[("ChatFrame%dEditBoxActive"):format(i)]:Hide()
    _G[("ChatFrame%dButtonFrameUpButton"):format(i)]:Hide()
    _G[("ChatFrame%dButtonFrameDownButton"):format(i)]:Hide()
    _G[("ChatFrame%dButtonFrameBottomButton"):format(i)]:Hide()
    _G[("ChatFrame%dButtonFrame"):format(i)]:Hide()
  end
end

hideStuff()
DEFAULT_CHAT_FRAME:SetScript("OnShow", hideStuff)

local start, duration, enable = GetActionCooldown(1);

-- if (start == 0) then
--   message('cooling')
-- else
--   message('ready')
-- end

-- Demo stuff to create frames

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
