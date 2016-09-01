SLASH_TOYBOX_RAFT1 = "/raft";
SLASH_TOYBOX_MILLHOUSE1 = "/millhouse";

local EventFrame = CreateFrame("Frame")
EventFrame:RegisterEvent("PLAYER_LOGIN")

function SlashCmdList.TOYBOX_RAFT(msg, editbox)
  ChatFrame1:AddMessage("/usetoy Cursed Orb")
end

function SlashCmdList.TOYBOX_RAFT(msg, editbox)
  ChatFrame1:AddMessage("/usetoy Manastorm's Duplicator")
end
