-- Variables
local inmenu = false
local activepolicemenu = false

Citizen.CreateThread(
    function()
        while true do
            local ped = GetPlayerPed(-1)
            Citizen.Wait(7)
            if inmenu == false then
                if IsControlJustPressed(0, 73) then
                    inmenu = true

                    SetCursorLocation(0.5, 0.5)
                    SetNuiFocus(true, true)
                    SendNUIMessage(
                        {
                            type = "MakeInteraktionsMenu",
                            activepolicemenu = activepolicemenu
                        }
                    )
                    PlaySoundFrontend(-1, "NAV", "HUD_AMMO_SHOP_SOUNDSET", 1)
                end
            else
                Citizen.Wait(100)
            end
        end
    end
)
RegisterNUICallback(
    "CloseMenu",
    function()
        SetNuiFocus(false, false)
        inmenu = false
        PlaySoundFrontend(-1, "NAV", "HUD_AMMO_SHOP_SOUNDSET", 1)
    end
)
