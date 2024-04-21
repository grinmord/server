local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateCallback('orion-presence:server:GetCurrentPlayers', function(_, cb)
    cb(#GetPlayers())
end)