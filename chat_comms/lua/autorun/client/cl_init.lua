net.Receive("Comms_ToClient", function()
	local text = net.ReadString()
	local tag = net.ReadString()
	local color = net.ReadTable()
	local ply = net.ReadEntity()
	chat.PlaySound()
	chat.AddText(color, tag, team.GetColor(ply:Team()), ply:Nick(), color_white, ":", Comms.CFG.TextColor, " ", text)
end)

net.Receive("Comms_Error", function()
	chat.AddText(Comms.CFG.BrandColor, Comms.CFG.ServerTag .. " ", Color(255,55,55), "This Frequency Is Encrypted")
end)