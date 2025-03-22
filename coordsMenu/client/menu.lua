local menuState = false
local menuCoords = RageUI.CreateMenu(Config_titlemenu, Config_subtitle, 0, 0, Config_TextureDictionary, Config_TextureName)

menuCoords.Closed = function ()
    menuState = false
end

function openMenuCoords()
    while menuState do
        return
    end

    menuState = true

    CreateThread(function()
        RageUI.Visible(menuCoords, true)

        while menuState do
            RageUI.IsVisible(menuCoords, function()

                RageUI.Separator("Copy "..Config_mainColor.."coordinates~s~, and more "..Config_mainColor.."options~")

                RageUI.Line()

                RageUI.Button("Copy vector2", nil, {RightLabel = Config_RightLabel}, true, {
                    onSelected = function ()
                        getCoordsPlayer()
                        SendNUIMessage({
                            type = 'clipboard',
                            data = "vector2("..getCoordsPlayer().x..", "..getCoordsPlayer().y..")"
                        })
                        print("vector2("..getCoordsPlayer().x..", "..getCoordsPlayer().y..")")
                        createNotification("Successfully copied the value, it is in your F8 console or clipboard", "success", 2500)
                    end
                })

                RageUI.Button("Copy vector3", nil, {RightLabel = Config_RightLabel}, true, {
                    onSelected = function ()
                        getCoordsPlayer()
                        SendNUIMessage({
                            type = 'clipboard',
                            data = ""..getCoordsPlayer()
                        })
                        print(getCoordsPlayer())
                        createNotification("Successfully copied the value, it is in your F8 console or clipboard", "success", 2500)
                    end
                })

                RageUI.Button("Copy vector4", nil, {RightLabel = Config_RightLabel}, true, {
                    onSelected = function ()
                        getPlayerHanding()
                        getCoordsPlayer()
                        SendNUIMessage({
                            type = 'clipboard',
                            data = "vector4("..getCoordsPlayer().x..", "..getCoordsPlayer().y..", "..getCoordsPlayer().z..", "..getPlayerHanding()..")"
                        })
                        print("vector4("..getCoordsPlayer().x..", "..getCoordsPlayer().y..", "..getCoordsPlayer().z..", "..getPlayerHanding()..")")
                        createNotification("Successfully copied the value, it is in your F8 console or clipboard", "success", 2500)
                    end
                })

                RageUI.Line()

                RageUI.Button("Copy X, Y", nil, {RightLabel = Config_RightLabel}, true, {
                    onSelected = function ()
                        getCoordsPlayer()
                        SendNUIMessage({
                            type = 'clipboard',
                            data = "X = "..getCoordsPlayer().x..", Y = "..getCoordsPlayer().y
                        })
                        print("X = "..getCoordsPlayer().x..", Y = "..getCoordsPlayer().y)
                        createNotification("Successfully copied the value, it is in your F8 console or clipboard", "success", 2500)
                    end
                })

                RageUI.Button("Copy X, Y, Z", nil, {RightLabel = Config_RightLabel}, true, {
                    onSelected = function ()
                        getCoordsPlayer()
                        SendNUIMessage({
                            type = 'clipboard',
                            data = "X = "..getCoordsPlayer().x..", Y = "..getCoordsPlayer().y..", Z = "..getCoordsPlayer().z
                        })
                        print("X = "..getCoordsPlayer().x..", Y = "..getCoordsPlayer().y..", Z = "..getCoordsPlayer().z)
                        createNotification("Successfully copied the value, it is in your F8 console or clipboard", "success", 2500)
                    end
                })

                RageUI.Button("Copy X, Y, Z, A", nil, {RightLabel = Config_RightLabel}, true, {
                    onSelected = function ()
                        getPlayerHanding()
                        getCoordsPlayer()
                        SendNUIMessage({
                            type = 'clipboard',
                            data = "X = "..getCoordsPlayer().x..", Y = "..getCoordsPlayer().y..", Z = "..getCoordsPlayer().z..", A = "..getPlayerHanding()
                        })
                        print("X = "..getCoordsPlayer().x..", Y = "..getCoordsPlayer().y..", Z = "..getCoordsPlayer().z..", A = "..getPlayerHanding())
                        createNotification("Successfully copied the value, it is in your F8 console or clipboard", "success", 2500)
                    end
                })

                RageUI.Line()

                RageUI.Button("Copy Handling", nil, {RightLabel = Config_RightLabel}, true, {
                    onSelected = function ()
                        getPlayerHanding()
                        SendNUIMessage({
                            type = 'clipboard',
                            data = "Handling = "..getPlayerHanding()
                        })
                        print("Handling = "..getPlayerHanding())
                        createNotification("Successfully copied the value, it is in your F8 console or clipboard", "success", 2500)
                    end
                })

            end)
            Wait(0)
        end
    end)
end
