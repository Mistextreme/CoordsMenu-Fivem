print("^1[CoordsMenu]^7 Este recurso foi criado por #dayzzzzzzzzz.")

ESX.RegisterServerCallback('dayz:getGroupPlayer', function(src, cb)
    local xPlayer = ESX.GetPlayerFromId(src)
    cb(xPlayer.getGroup())
end)
