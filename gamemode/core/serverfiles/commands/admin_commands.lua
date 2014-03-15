function AdminKick(plyOffender, strReason)
	if !plyOffender:IsPlayer() then return end
	if !strReason or strReason == "" then strReason = "Don't do that again" end
	plyOffender:Kick(strReason)
end
concommand.Add("UD_Admin_Kick", function(ply, command, args)
	if ply:IsAdmin() then 
		AdminKick(player.GetByID(tonumber(args[1])), tostring(args[2]))
	end
end)

function AdminBan(plyOffender, intTime, strReason)
	if !plyOffender:IsPlayer() then return end
	if !strReason or strReason == "" then strReason = "Don't do that again" end
	game.ConsoleCommand("banid ".. intTime .." "..plyOffender:SteamID().."\n")
	game.ConsoleCommand("kickid "..plyOffender:SteamID().." Banned for "..strReason or "Not defined".." \n")
end
concommand.Add("UD_Admin_Ban", function(ply, command, args)
	if ply:IsAdmin() then
		AdminBan(player.GetByID(tonumber(args[1])), tonumber(args[2]), tostring(args[3]))
	end
end)

function GM:ChangeMapTimed(strNewMap, intChangeTime)
	intChangeTime = intChangeTime or 10
	GAMEMODE.StopSaving = true
	for _, ply in pairs(player.GetAll()) do
		if IsValid(ply) then
			ply:CreateNotification("Saving Accounts")
			ply:SaveGame()
			ply:CreateNotification("Server changing map to " .. strNewMap .. " in " .. intChangeTime .. " seconds")
			for i = 1, intChangeTime do
				timer.Simple(i, function() ply:CreateNotification(tostring(intChangeTime - (i - 1)) .. " ...") end)
			end
		end
	end
	timer.Simple(intChangeTime, function() game.ConsoleCommand("changelevel " .. strNewMap .. "\n") end)
end
concommand.Add("UD_Admin_ChangeMap", function(ply, command, args) 
	if ply:IsAdmin() && args[1] then
		local strNewMap = args[1]
		local intChangeTime = args[2] || 10
		GAMEMODE:ChangeMapTimed(strNewMap, intChangeTime)
	end
end)


function GM:AdminBackup()
	for _, ply in pairs(player.GetAll()) do
		ply:SaveGame()
	end
end
concommand.Add("UD_Admin_SaveBackup", function(ply, command, args) 
	if ply:IsAdmin() then
		GAMEMODE:AdminBackup()
	end
end)

function GM:AdminSetUsergroup(args)
	local player = player.GetByID(args[1])
	player.Data.Usergroup = args[2]
	player:SetUserGroup(args[2])
	player:SaveGame()
end
concommand.Add("UD_Admin_SetUserGroup", function(ply, command, args)
	if ply:IsSuperAdmin() then
		if !args && !args[1] then return end
		if !args[2] then return end
		GAMEMODE:AdminSetUsergroup(args)
	end
end)
