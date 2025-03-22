RegisterCommand(Config_commandeName, function(source, args, rawCommand)
    local playerGroup = playerGroupCallBack()
    local hasAccess = false

    for _, group in pairs(Config_menuAcces) do
        if playerGroup == group then
            hasAccess = true
            break
        end
    end
    if hasAccess then
        openMenuCoords()
    else
        createNotification("Você não tem acesso a este menu", "error", 3000)
    end
end, false)

RegisterKeyMapping(Config_commandeName, "Abrir menu", "keyboard", Config_keysOpenMenu)




