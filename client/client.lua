ESX = nil


Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end

	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
	end

	PlayerData = ESX.GetPlayerData()
end)

RegisterNetEvent('VehSpawn')
AddEventHandler('VehSpawn', function(vehicle)

	local model = GetHashKey('CHGR')
	local playerPed = PlayerPedId()
	local coords    = GetOffsetFromEntityInWorldCoords(PlayerPedId(), 1.5, 6.0, 2.0)

	ESX.Game.SpawnVehicle(model, coords + 3, heading, function(vehicle)
	end)

end)

RegisterNetEvent('fine:Anim')
AddEventHandler('fine:Anim', function()
	RequestAnimDict('mp_common')
    while not HasAnimDictLoaded('mp_common') do
        Citizen.Wait(5)
    end
    TaskPlayAnim(PlayerPedId(), "mp_common", "givetake1_a", 8.0, -8, -1, 12, 1, 0, 0, 0)
end)



RegisterCommand('sv', function(source, args, user)
	for i=1, #Config.AuthLocations, 1  do
		local player = GetPlayerPed(-1)
		local coords = GetEntityCoords(player, 0)
        local AuthLocations = Config.AuthLocations[i]
		local Auth = GetDistanceBetweenCoords(AuthLocations, coords, true)
		if Auth <= 60 then

			if PlayerData.job.name == 'police' or PlayerData.job.name == 'offpolice' then

				if tostring(args[1]) == nil then
					return
				else
					if tostring(args[1]) ~= nil then
						local argh = tostring(args[1])

						if argh == '1' then
							local model = GetHashKey(Config.VehList[1])
							local playerPed = PlayerPedId()
							local coords    = GetOffsetFromEntityInWorldCoords(PlayerPedId(), 1.5, 6.0, 2.0)
							local heading = GetEntityHeading(playerPed)

							ESX.Game.SpawnVehicle(model, coords, heading, function(vehicle)
							end)
						elseif argh == '2' then
							local model = GetHashKey(Config.VehList[2])
							local playerPed = PlayerPedId()
							local coords    = GetOffsetFromEntityInWorldCoords(PlayerPedId(), 1.5, 6.0, 1.0)
							local heading = GetEntityHeading(playerPed)

							ESX.Game.SpawnVehicle(model, coords, heading, function(vehicle)
							end)
						elseif argh == '3' then
							local model = GetHashKey(Config.VehList[3])
							local playerPed = PlayerPedId()
							local coords    = GetOffsetFromEntityInWorldCoords(PlayerPedId(), 1.5, 6.0, 1.0)
							local heading = GetEntityHeading(playerPed)

							ESX.Game.SpawnVehicle(model, coords, heading, function(vehicle)
							end)
						elseif argh == '4' then
							local model = GetHashKey(Config.VehList[4])
							local playerPed = PlayerPedId()
							local coords    = GetOffsetFromEntityInWorldCoords(PlayerPedId(), 1.5, 6.0, 1.0)
							local heading = GetEntityHeading(playerPed)

							ESX.Game.SpawnVehicle(model, coords, heading, function(vehicle)
							end)
						elseif argh == '5' then
							local model = GetHashKey(Config.VehList[5])
							local playerPed = PlayerPedId()
							local coords    = GetOffsetFromEntityInWorldCoords(PlayerPedId(), 1.5, 6.0, 1.0)
							local heading = GetEntityHeading(playerPed)

							ESX.Game.SpawnVehicle(model, coords, heading, function(vehicle)
							end)
						elseif argh == '6' then
							local model = GetHashKey(Config.VehList[6])
							local playerPed = PlayerPedId()
							local coords    = GetOffsetFromEntityInWorldCoords(PlayerPedId(), 1.5, 6.0, 1.0)
							local heading = GetEntityHeading(playerPed)

							ESX.Game.SpawnVehicle(model, coords, heading, function(vehicle)
							end)
						elseif argh == '7' then
							local model = GetHashKey(Config.VehList[7])
							local playerPed = PlayerPedId()
							local coords    = GetOffsetFromEntityInWorldCoords(PlayerPedId(), 1.5, 6.0, 1.0)
							local heading = GetEntityHeading(playerPed)

							ESX.Game.SpawnVehicle(model, coords, heading, function(vehicle)
							end)
						elseif argh == '8' then -- 
							local model = GetHashKey(Config.VehList[8])
							local playerPed = PlayerPedId()
							local coords    = GetOffsetFromEntityInWorldCoords(PlayerPedId(), 1.5, 10.0, 2.0)
							local heading = GetEntityHeading(playerPed)

							ESX.Game.SpawnVehicle(model, coords, heading, function(vehicle)
							end)
						elseif argh == '9' then -- Boat
							local model = GetHashKey(Config.VehList[9])
							local playerPed = PlayerPedId()
							local coords    = GetOffsetFromEntityInWorldCoords(PlayerPedId(), 1.5, 10.0, 1.0)
							local heading = GetEntityHeading(playerPed)

							ESX.Game.SpawnVehicle(model, coords, heading, function(vehicle)
							end)
						elseif argh == '10' then -- Heli
							local model = GetHashKey(Config.VehList[10])
							local playerPed = PlayerPedId()
							local coords    = GetOffsetFromEntityInWorldCoords(PlayerPedId(), 1.5, 10.0, 1.0)
							local heading = GetEntityHeading(playerPed)

							ESX.Game.SpawnVehicle(model, coords, heading, function(vehicle)
							end)
						end
					end
				end
			elseif PlayerData.job.name == 'ambulance' or PlayerData.job.name == 'offambulance' then -- firetruk
				if tostring(args[1]) == nil then
					return
				else
					if tostring(args[1]) ~= nil then
						local argh = tostring(args[1])

						if argh == '1' then
							local model = GetHashKey(Config.VehListEMS[1])
							local playerPed = PlayerPedId()
							local coords    = GetOffsetFromEntityInWorldCoords(PlayerPedId(), 1.5, 6.0, 2.0)
							local heading = GetEntityHeading(playerPed)

							ESX.Game.SpawnVehicle(model, coords, heading, function(vehicle)
							end)
						elseif argh == '2' then
							local model = GetHashKey(Config.VehListEMS[2])
							local playerPed = PlayerPedId()
							local coords    = GetOffsetFromEntityInWorldCoords(PlayerPedId(), 1.5, 6.0, 1.0)
							local heading = GetEntityHeading(playerPed)

							ESX.Game.SpawnVehicle(model, coords, heading, function(vehicle)
							end)

						elseif argh == '4' then
							local model = GetHashKey(Config.VehListEMS[4])
							local playerPed = PlayerPedId()
							local coords    = GetOffsetFromEntityInWorldCoords(PlayerPedId(), 1.5, 6.0, 1.0)
							local heading = GetEntityHeading(playerPed)

							ESX.Game.SpawnVehicle(model, coords, heading, function(vehicle)
							end)
						end
					end
				end
			end

		end
	end
end)



RegisterCommand('extra', function(source, args, rawCommand)
	for i=1, #Config.AuthLocations, 1  do
		local player = GetPlayerPed(-1)
		local coords = GetEntityCoords(player, 0)
        local AuthLocations = Config.AuthLocations[i]
		local Auth = GetDistanceBetweenCoords(AuthLocations, coords, true)
		if Auth <= 60 then

			if PlayerData.job.name == 'police' or  PlayerData.job.name == 'ambulance' or PlayerData.job.name == 'offpolice' or PlayerData.job.name == 'offambulance' then
			    local ped = PlayerPedId()
			    local veh = GetVehiclePedIsIn(ped, false)
			    local extraID = tonumber(args[1])
			    local toggle = tostring(args[2])
			    if toggle == 'true' then
			        toggle = 0
			    end
			    if veh ~= nil and veh ~= 0 and veh ~= 1 then
			        if extraID == all then
			            SetVehicleAutoRepairDisabled(veh, false)
						SetVehicleExtra(veh, 1, toggle)
						SetVehicleExtra(veh, 2, toggle)
						SetVehicleExtra(veh, 3, toggle)
						SetVehicleExtra(veh, 4, toggle)
						SetVehicleExtra(veh, 5, toggle)				
						SetVehicleExtra(veh, 6, toggle)
						SetVehicleExtra(veh, 7, toggle)
						SetVehicleExtra(veh, 8, toggle)
						SetVehicleExtra(veh, 9, toggle)								
						SetVehicleExtra(veh, 10, toggle)
						SetVehicleExtra(veh, 11, toggle)
						SetVehicleExtra(veh, 12, toggle)
						SetVehicleExtra(veh, 13, toggle)
						SetVehicleExtra(veh, 14, toggle)
						SetVehicleExtra(veh, 15, toggle)
						SetVehicleExtra(veh, 16, toggle)
						SetVehicleExtra(veh, 17, toggle)
						SetVehicleExtra(veh, 18, toggle)
						SetVehicleExtra(veh, 19, toggle)
						SetVehicleExtra(veh, 20, toggle)
						SetVehicleExtra(veh, 21, toggle)
						print('wow')
			        else
			            SetVehicleAutoRepairDisabled(Vehicle, false)
			            SetVehicleExtra(veh, extraID, toggle)
			        end
			    
			    end
			end
		end
	end
end, false)


RegisterCommand('livery', function(source, args, rawCommand)
	for i=1, #Config.AuthLocations, 1  do
		local player = GetPlayerPed(-1)
		local coords = GetEntityCoords(player, 0)
        local AuthLocations = Config.AuthLocations[i]
		local Auth = GetDistanceBetweenCoords(AuthLocations, coords, true)
		if Auth <= 60 then

			if PlayerData.job.name == 'police' or  PlayerData.job.name == 'ambulance' or PlayerData.job.name == 'offpolice' or PlayerData.job.name == 'offambulance'  then
				local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
				local livery = tonumber(args[1])

				SetVehicleLivery(Veh, livery)
			end
		end
	end
end)


RegisterCommand('impound', function(source)
	if PlayerData.job.name == 'police' or  PlayerData.job.name == 'ambulance' or PlayerData.job.name == 'offpolice' or PlayerData.job.name == 'offambulance'  then
		TriggerEvent('impoundVeh', source)
	end
end)

RegisterCommand('fix', function(source)
	for i=1, #Config.AuthLocations, 1  do
		local player = GetPlayerPed(-1)
		local coords = GetEntityCoords(player, 0)
        local AuthLocations = Config.AuthLocations[i]
		local Auth = GetDistanceBetweenCoords(AuthLocations, coords, true)
		if Auth <= 60 then
			if PlayerData.job.name == 'police' or  PlayerData.job.name == 'ambulance' or PlayerData.job.name == 'offpolice' or PlayerData.job.name == 'offambulance'  then
				TriggerEvent('veh:fixVehicle')
			end
		end
	end
end)



RegisterNetEvent('impoundVeh')
AddEventHandler('impoundVeh', function()
	local vehicle, attempt = ESX.Game.GetVehicleInDirection(), 0
	while not NetworkHasControlOfEntity(vehicle) and attempt < 100 and DoesEntityExist(vehicle) do
		Citizen.Wait(100)
		NetworkRequestControlOfEntity(vehicle)
		attempt = attempt + 1
	end

	if DoesEntityExist(vehicle) and NetworkHasControlOfEntity(vehicle) then
		local timer = 1500
	    local finished = exports["fu-taskbar"]:taskBar(timer,"Impounding Vehicle")

	    if finished == 100 then
			ESX.Game.DeleteVehicle(vehicle)
	    end
	end
end)



-- Testing RunPlate





RegisterNetEvent('PolRunPlate')
AddEventHandler('PolRunPlate', function()
	local vehicle = wow()
	local vehicleData = daddy(vehicle)
	if vehicleData == nil then
  		TriggerEvent('DoLongHudText','Too far from vehicle',1, 4000)
  	else
  		BitchWhat(vehicleData)
  	end
end)




RegisterCommand('runplate', function(vehicleData)
	if PlayerData.job.name == 'police' or PlayerData.job.name == 'ambulance' or PlayerData.job.name == 'offpolice' or PlayerData.job.name == 'offambulance' then
		  TriggerEvent('PolRunPlate')
	end
end)
