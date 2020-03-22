hook.Add("PlayerSay", "Comms_Hook", function(ply, text)
    util.AddNetworkString("Comms_ToClient")
    util.AddNetworkString("Comms_Error")
    if IsValid(ply) then
        for k,v in pairs(Chats) do
            if(string.sub(text, 1, string.len(v["command"])) == v["command"]) then
                local Jobs = v["jobs"]
                local Text = string.sub(text , string.len(v["command"]) + 1)
                if v["jobs"][team.GetName(ply:Team())] == true then
                    local JobTag = "[" .. v["name"] .. "] "
                    local TagColor = v["color"]
                    for k,v in pairs(player.GetAll()) do
                    if Jobs[team.GetName(v:Team())] == true then
                    local PlayerTable = {}
                    table.insert(PlayerTable, v)
                    net.Start("Comms_ToClient")
                        net.WriteString(Text)
                        net.WriteString(JobTag)
                        net.WriteTable(TagColor)
                        net.WriteEntity(ply)
                    net.Send(PlayerTable)
                    end
                    end
                else
                    net.Start("Comms_Error")
                    net.Send(ply)
                end
                return ""
            end
        end
    end
end)