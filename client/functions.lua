

function wow()
	local playerPed    = PlayerPedId()
	local playerCoords = GetEntityCoords(playerPed)
	local inDirection  = GetOffsetFromEntityInWorldCoords(playerPed, 0.0, 25.0, 0.0)
	local rayHandle    = StartShapeTestRay(playerCoords, inDirection, 2, playerPed, 0)
	local numRayHandle, hit, endCoords, surfaceNormal, entityHit = GetShapeTestResult(rayHandle)

	if hit == 1 and GetEntityType(entityHit) == 2 then
		return entityHit
	end

	return nil
end

function daddy(vehicle)
	if DoesEntityExist(vehicle) then
		return {
			model             = GetEntityModel(vehicle),
			plate             = ESX.Math.Trim(GetVehicleNumberPlateText(vehicle)),
			plateIndex        = GetVehicleNumberPlateTextIndex(vehicle),
		}
	else
		return
	end
end



local fakeid = {
	[1] = 'Johnny Robbins',
	[2] = 'Robert Robbins',
	[3] = 'George Johnson',
	[4] = 'Jon Doe',
	[5] = 'Kimberly Karson The Third',
}


function BitchWhat(vehicleData)
	ESX.TriggerServerCallback('SB-VehInfo', function(retrivedInfo)
		if retrivedInfo == retrivedInfo then
			local owner = retrivedInfo.owner
			if owner == nil then
				owner = fakeid[math.random(1,5)]
			end

			TriggerEvent('chat:addMessage', {
		       template = '<div class="chat-message emergency">^*Dispatch^r: ^* Vehicle Information: ^r ^*Owner:^r {0} ^*Plate:^r {1} </div>',
		       args = {owner, retrivedInfo.plate}
		    });
		end
	end, vehicleData.plate)
end