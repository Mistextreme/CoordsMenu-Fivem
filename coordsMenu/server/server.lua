print("^1[CoordsMenu]^7 Cette ressource a été créée par #dayzzzzzzzzz.")

ESX.RegisterServerCallback('dayz:getGroupPlayer', function(src, cb)
    local xPlayer = ESX.GetPlayerFromId(src)
    cb(xPlayer.getGroup())
end)
