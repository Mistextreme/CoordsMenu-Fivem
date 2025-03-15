local menuState = false
local menuCoords = RageUI.CreateMenu(Config_titlemenu, Config_subtile, 0, 0, Config_TextureDictionary, Config_TextureName)

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

                
                RageUI.Separator("Copier des "..Config_mainColor.."coordonnés~s~, et plus "..Config_mainColor.."encores~")

                RageUI.Line()

                RageUI.Button("Copier le vector2", nil, {RightLabel = Config_RightLabel}, true, {
                    onSelected = function ()
                        getCoordsPlayer()
                        SendNUIMessage({
                            type = 'clipboard',
                            data = "vector2("..getCoordsPlayer().x..", "..getCoordsPlayer().y..")"
                        })
                        print("vector2("..getCoordsPlayer().x..", "..getCoordsPlayer().y..")")
                        createNotification("Vous avez copier avez succes la valeur elle est dans votre console F8 ou dans le presse papier", "success", 2500)
                    end
                })
                

                RageUI.Button("Copier le vector3", nil, {RightLabel = Config_RightLabel}, true, {
                    onSelected = function ()
                        getCoordsPlayer()
                        SendNUIMessage({
                            type = 'clipboard',
                            data = ""..getCoordsPlayer()
                        })
                        print(getCoordsPlayer())
                        createNotification("Vous avez copier avez succes la valeur elle est dans votre console F8 ou dans le presse papier", "success", 2500)
                    end
                })

                RageUI.Button("Copier le vector4", nil, {RightLabel = Config_RightLabel}, true, {
                    onSelected = function ()
                        getPlayerHanding()
                        getCoordsPlayer()
                        SendNUIMessage({
                            type = 'clipboard',
                            data = "vector4("..getCoordsPlayer().x..", "..getCoordsPlayer().y..", "..getCoordsPlayer().z..", "..getPlayerHanding()..")"
                        })
                        print("vector4("..getCoordsPlayer().x..", "..getCoordsPlayer().y..", "..getCoordsPlayer().z..", "..getPlayerHanding()..")")
                        createNotification("Vous avez copier avez succes la valeur elle est dans votre console F8 ou dans le presse papier", "success", 2500)
                    end
                })

                RageUI.Line()

                RageUI.Button("Copier X, Y", nil, {RightLabel = Config_RightLabel}, true, {
                    onSelected = function ()
                        getCoordsPlayer()
                        SendNUIMessage({
                            type = 'clipboard',
                            data = "X = "..getCoordsPlayer().x..", Y = "..getCoordsPlayer().y
                        })
                        print("X = "..getCoordsPlayer().x..", Y = "..getCoordsPlayer().y)
                        createNotification("Vous avez copier avez succes la valeur elle est dans votre console F8 ou dans le presse papier", "success", 2500)
                    end
                })

                RageUI.Button("Copier X, Y, Z", nil, {RightLabel = Config_RightLabel}, true, {
                    onSelected = function ()
                        getCoordsPlayer()
                        SendNUIMessage({
                            type = 'clipboard',
                            data = "X = "..getCoordsPlayer().x..", Y = "..getCoordsPlayer().y..", Z = "..getCoordsPlayer().z
                        })
                        print("X = "..getCoordsPlayer().x..", Y = "..getCoordsPlayer().y..", Z = "..getCoordsPlayer().z)
                        createNotification("Vous avez copier avez succes la valeur elle est dans votre console F8 ou dans le presse papier", "success", 2500)
                    end
                })

                RageUI.Button("Copier X, Y, Z, A", nil, {RightLabel = Config_RightLabel}, true, {
                    onSelected = function ()
                        getPlayerHanding()
                        getCoordsPlayer()
                        SendNUIMessage({
                            type = 'clipboard',
                            data = "X = "..getCoordsPlayer().x..", Y = "..getCoordsPlayer().y..", Z = "..getCoordsPlayer().z..", A = "..getPlayerHanding()
                        })
                        print("X = "..getCoordsPlayer().x..", Y = "..getCoordsPlayer().y..", Z = "..getCoordsPlayer().z..", A = "..getPlayerHanding())
                        createNotification("Vous avez copier avez succes la valeur elle est dans votre console F8 ou dans le presse papier", "success", 2500)
                    end
                })

                RageUI.Line()

                RageUI.Button("Copier le Handing", nil, {RightLabel = Config_RightLabel}, true, {
                    onSelected = function ()
                        getPlayerHanding()
                        SendNUIMessage({
                            type = 'clipboard',
                            data = "Handling = "..getPlayerHanding()
                        })
                        print("Handling = "..getPlayerHanding())
                        createNotification("Vous avez copier avez succes la valeur elle est dans votre console F8 ou dans le presse papier", "success", 2500)
                    end
                })

            end)
            Wait(0)
        end
    end)
end
