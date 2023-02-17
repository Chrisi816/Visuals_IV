ESX = nil

Citizen.CreateThread(
    function()
        while ESX == nil do
            TriggerEvent(
                "esx:getSharedObject",
                function(obj)
                    ESX = obj
                end
            )
            Citizen.Wait(10)
        end
    end
)


RegisterNetEvent("esx:playerLoaded")
AddEventHandler(
    "esx:playerLoaded",
    function(xPlayer)
        ShutdownLoadingScreenNui()
        
        ESX.TriggerServerCallback(
            "VisualsIV:Register:GetData",
            function(result)
                if result then
                    SetNuiFocus(true, true)
                    SendNUIMessage(
                        {
                            type = "OpenRegisterMenu"
                        }
                    )
                end
            end
        )
    end
)
    
	
    

RegisterNUICallback(
    "SendRegister",
    function(data)
	SetNuiFocus(false, false)
        TriggerServerEvent(
            "VisualsIV:Register:InsertData",
            data.Vorname,
            data.Nachname,
            data.Geburtstag,
            data.Groesse,
            data.Geschlecht
        )
    end
)
