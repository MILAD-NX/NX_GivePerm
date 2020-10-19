--################################################
--#                  Creat by :                  #
--#             Milad_nx & SudoLite              #
--#                  Discord                     #
--#          https://discord.gg/QMvsJap          #
--################################################ 
ESX                = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterCommand('giveperm', function(source, args, user)
	local xPlayer = ESX.GetPlayerFromId(source)
    if (tonumber(xPlayer.permission_level)) >= 10 then
		if tonumber(args[1]) and tonumber(args[2]) then
			
			local onPlayer = ESX.GetPlayerFromId(args[1])
			
			if onPlayer then
				if onPlayer.permission_level ~= '1' or '2' or '3' or '4' or '5' or '6' or '7' or '8' or '9' then
					TriggerClientEvent('chat:addMessage', -1, {
						template = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: #ffbc0066; border-radius: 3px;"><i class="fas fa-gem"></i>  {1}</div>',
						args = { "^1Admin", GetPlayerName(tonumber(args[1])) .. ' Be Team Admin Peyvast!'}
					})
					onPlayer.setPermissionlevel(tonumber(args[2]))
				else
					TriggerClientEvent('chat:addMessage', source, { args = { '^1SYSTEM', 'Player Morde nazar az qabl in permission darad.' } })
				end

			else
				TriggerClientEvent('chat:addMessage', source, { args = { '^1SYSTEM', 'Player not online.' } })
			end
		else
			TriggerClientEvent('chat:addMessage', source, { args = { '^1SYSTEM', 'Invalid usage.' } })
		end
	else
		TriggerClientEvent('chat:addMessage', source, { args = { '^1SYSTEM', 'Insufficient Permissions.' } })
	end		
end)
