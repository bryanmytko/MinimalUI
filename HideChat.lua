local HiddenUI = CreateFrame("Frame", "BlizzardUIHider", UIParent)
HiddenUI:Hide()

-- Hide Chat Frame
local function toggleChatUI(parent)
  _G[("GeneralDockManager")]:SetParent(parent);
  _G[("FriendsMicroButton")]:SetParent(parent);
  _G[("ChatFrameMenuButton")]:SetParent(parent);

  for i = 1, 10 do
    _G[("ChatFrame%d"):format(i)]:SetParent(parent);
    _G[("ChatFrame%dEditBox"):format(i)]:SetParent(parent);
  end
end

SLASH_TOGGLECHAT1 = "/togglechat";

local chat_visible = true;

function SlashCmdList.TOGGLECHAT(msg, editbox)
  if chat_visible then
    toggleChatUI(HiddenUI);
    chat_visible = false;
  else
    toggleChatUI(UIParent);
    chat_visible = true;
  end
end
