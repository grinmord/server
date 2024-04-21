local QBCore = exports['qb-core']:GetCoreObject()

local i = math.random(#Config.texts)
local ID = GetPlayerServerId(PlayerId())

CreateThread(function()
    while true do
        SetDiscordAppId(Config.applicationId)
        SetDiscordRichPresenceAsset(Config.iconLarge)
        SetDiscordRichPresenceAssetText(Config.iconLargeHoverText)
        SetDiscordRichPresenceAssetSmall(Config.iconSmall)
        SetDiscordRichPresenceAssetSmallText(Config.iconSmallHoverText)

          QBCore.Functions.TriggerCallback('orion-presence:server:GetCurrentPlayers', function(result)
            SetRichPresence("ID: " .. ID .. " | " .. result .. "/" .. Config.maxPlayers .. " | " .. Config.texts[i])
          end)
        if Config.buttons and type(Config.buttons) == "table" then
            for i, v in pairs(Config.buttons) do
                SetDiscordRichPresenceAction(i - 1, v.text, v.url)
            end
        end
        Wait(Config.updateRate)
    end
end)