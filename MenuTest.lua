if not DropDownMenuTest then
  CreateFrame("Button", "DropDownMenuTest", UIParent, "UIDropDownMenuTemplate")
end

DropDownMenuTest:ClearAllPoints()
DropDownMenuTest:SetPoint("CENTER", 0, 0)
DropDownMenuTest:Show()

local items = {
  "Alpha",
  "Beta",
  "Gamma",
  "Delta",
}

local function OnClick(self)
  UIDropDownMenu_SetSelectedID(DropDownMenuTest, self:GetID())
end

local function initialize(self, level)
  local info = UIDropDownMenu_CreateInfo()
  for k,v in pairs(items) do
    info = UIDropDownMenu_CreateInfo()
    info.text = v
    info.value = v
    info.func = OnClick
    UIDropDownMenu_AddButton(info, level)
  end
end


UIDropDownMenu_Initialize(DropDownMenuTest, initialize)
UIDropDownMenu_SetWidth(DropDownMenuTest, 100);
UIDropDownMenu_SetButtonWidth(DropDownMenuTest, 124)
UIDropDownMenu_SetSelectedID(DropDownMenuTest, 1)
UIDropDownMenu_JustifyText(DropDownMenuTest, "LEFT")
