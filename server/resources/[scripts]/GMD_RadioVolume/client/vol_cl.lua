ESX = exports['es_extended']:getSharedObject()

local volume = Config.DefaultVolume
local channel =


RegisterKeyMapping('volumeUp', 'Volume Up Key', 'keyboard', Config.VolUpKey)
RegisterKeyMapping('volumeDown', 'Volume Down Key', 'keyboard', Config.VolDownKey)
RegisterKeyMapping('channelUp', 'Channel Up Key', 'keyboard', Config.ChannelUpKey)
RegisterKeyMapping('channelDown', 'Channel Down Key', 'keyboard', Config.ChannelDownKey)

if Config.Salty then
    volume = exports['saltychat']:GetRadioVolume()
    channel = exports['saltychat']:GetRadioChannel()
else
    volume = exports['pma-voice']:GetRadioVolume()
    channel = exports['pma-voice']:GetRadioChannel()
end

RegisterCommand('volumeUp', function()
if Config.Salty then
    volume = volume + 0.2

    if volume > 1.6 then
        volume = 1.6
    end
        exports['saltychat']:SetRadioVolume(volume)
    else
        volume = volume + 10
        if volume > 100 then
            volume = 100
        end
        exports['pma-voice']:setRadioVolume(volume)
    end
end)


RegisterCommand('volumeDown', function()
    if Config.Salty then
        volume = volume - 0.2

        if volume < 0.1 then
            volume = 0.1
        end

        exports['saltychat']:SetRadioVolume(volume)
    else
        volume = volume - 10
        if volume < 10 then
            volume = 10
        end
        exports['pma-voice']:setRadioVolume(volume)
    end
end)

RegisterCommand('channelUp', function()
    if Config.Salty then
        channel = channel + 1.0
        exports['saltychat']:SetRadioChannel(channel)
    else
        channel = channel + 1.0
        exports["pma-voice"]:setRadioChannel(channel)
    end
end)


RegisterCommand('channelDown', function()
    if Config.Salty then
        channel = channel - 1.0
        exports['saltychat']:SetRadioChannel(channel)
    else
        channel = channel - 1.0
        exports["pma-voice"]:setRadioChannel(channel)
    end
end)
