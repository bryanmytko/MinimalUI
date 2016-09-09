SLASH_TOYBOX_RAFT1 = "/raft";
SLASH_TOYBOX_MILLHOUSE1 = "/millhouse";
SLASH_TOYBOX_GAMON1 = "/gamon";

function SlashCmdList.TOYBOX_RAFT(msg, editbox)
  SendChatMessage("/usetoy Anglers Fishing Raft")
end

function SlashCmdList.TOYBOX_MILLHOUSE(msg, editbox)
  UseToy(1234)
end

function SlashCmdList.TOYBOX_GAMON(msg, editbox)
  ChatFrame1:AddMessage("/usetoy Gamon's Braid")
end
