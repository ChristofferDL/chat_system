-- EASY TO CONFIGURE

-- do not touch --
Comms = {} or {}
Comms.CFG = {} or {}
Chats = {}
-- do not touch --

-- General Configuration
Comms.CFG.BrandColor = Color(0, 151, 230) -- Server Color.
Comms.CFG.ServerTag = "[TAG]" -- Tag displayed infront of error messages.
Comms.CFG.TextColor = Color(0, 255, 68) -- Color of players message.

/* 
HERE YOU CAN CREATE NEW CHATS
1. Just copy and paste this: 
Chats[1] = {
	name = "name",
	color = Color(255,55,55),
	command = "/command",
	jobs = {
		["Citizen"] = true,
	}
}
2. Make sure to change the key. Chats[1], Chats[2] etc.
3. Configure to your likings.
NOTE: Make sure to add a space at the end of the command.
*/

Chats[1] = {
	name = "Test 1",
	color = Color(0,151,230),
	command = "/t1 ",
	jobs = {
		["Citizen"] = true,
	}
}

Chats[2] = {
	name = "Test 2",
	color = Color(0,151,230),
	command = "/te2 ",
	jobs = {
		["Hobo"] = true,
	}
}

Chats[3] = {
	name = "Test 3",
	color = Color(0,151,230),
	command = "/tes3 ",
	jobs = {
		["Medic"] = true,
	}
}

Chats[4] = {
	name = "Test 4",
	color = Color(0,151,230),
	command = "/test4 ",
	jobs = {
		["Gangster"] = true,
	}
}





















SCP.Config.DebugEnabled = false -- For use if errors occur with Chat Table.

if SCP.Config.DebugEnabled then
	for k,v in pairs(Chats) do
		print(k,v["name"], v["color"], v["command"], v["jobs"])
	end
end