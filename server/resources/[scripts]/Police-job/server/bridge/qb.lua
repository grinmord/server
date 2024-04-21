QBCore = GetResourceState('qb-core'):find('start') and exports['qb-core']:GetCoreObject() or nil

if not QBCore then return end

function removeAccountMoney(target, account, amount)
    local xPlayer = QBCore.Functions.GetPlayer(target)
    xPlayer.Functions.RemoveMoney(account, amount)
end

function hasJob(target, jobs)
    local xPlayer = QBCore.Functions.GetPlayer(target)

    if type(jobs) == "table" then
        for index, jobName in pairs(jobs) do
            if xPlayer.PlayerData.job.name == jobName then return true end
        end
    else
        return xPlayer.PlayerData.job.name == jobs
    end

    return false
end

function playerJob(target)
    local xPlayer = QBCore.Functions.GetPlayer(target)

    return xPlayer.PlayerData.job.name
end
