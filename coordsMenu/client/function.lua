function getCoordsPlayer()
    local player = PlayerPedId()
    local playerCoords = GetEntityCoords(player)
    return playerCoords
end

function getPlayerHanding()
    local player = PlayerPedId()
	local playerHanding = GetEntityHeading(player)
    return playerHanding
end

function createNotification(title, type, duration)
    ESX.ShowNotification(title, type, duration)
end

function playerGroupCallBack()
    ESX.TriggerServerCallback('dayz:getGroupPlayer', function(grouPlayer)
        group = grouPlayer
        done = true
    end)

    while not done do Wait(0) end

    return group
end
