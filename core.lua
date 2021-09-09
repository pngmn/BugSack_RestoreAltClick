
local addonName, addon = "BugSack", BugSack

local ldb = LibStub:GetLibrary("LibDataBroker-1.1")
if not ldb then return end

local plugin = ldb:GetDataObjectByName(addonName)

local function onClick(self, button)
	if button == "RightButton" then
		InterfaceOptionsFrame_OpenToCategory(addonName)
		InterfaceOptionsFrame_OpenToCategory(addonName)
	else
		if IsShiftKeyDown() then
			ReloadUI()
		elseif IsAltKeyDown() then
			addon:Reset()
		elseif BugSackFrame and BugSackFrame:IsShown() then
			addon:CloseSack()
		else
			addon:OpenSack()
		end
	end
end

plugin.OnClick = onClick