--[[
	© 2015 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).

	Clockwork was created by Conna Wiles (also known as kurozael.)
	http://cloudsixteen.com/license/clockwork.html
--]]

include("shared.lua")

-- Called when the target ID HUD should be painted.
function ENT:HUDPaintTargetID(x, y, alpha)
	local colorTargetID = Clockwork.option:GetColor("target_id");
	local colorWhite = Clockwork.option:GetColor("white");
	local crateName = self:GetDTString(0);
	local crateDesc = self:GetDTString(1);
	
	if (crateName && crateDesc) then
		y = Clockwork.kernel:DrawInfo(crateName, x, y, colorTargetID, alpha);
		y = Clockwork.kernel:DrawInfo(crateDesc, x, y, colorWhite, alpha);
	end;
end;
