-- You can implement your custom API here

-- Get vehicle extra data, you can use this to store extra data (such as fuel) for the vehicle to database
-- Args: (number) vehicle
-- Return: table
function GetVehicleExtraData(vehicle)
    -- For Standalone
    return {
        damage = GetVehicleDamageData(vehicle),
    }
end

-- Set vehicle extra data
-- Args: (number) vehicle, (table) data
function SetVehicleExtraData(vehicle, data)
    -- For Standalone
    if data and data.damage then
        SetVehicleDamageData(vehicle, data.damage)
    end
end

-- Send notification to player
-- Args: (string) message
function SendNotification(message)
    -- For ESX
    if Config.framework == 'esx' or Config.framework == 'esx1.9' then
        _g.ESX.ShowNotification(message)
        return
    end

    -- For QBCore
    if Config.framework == 'qbcore' then
        _g.QBCore.Functions.Notify(message, 'primary')
        return
    end

    -- For Standalone
    SetNotificationTextEntry('STRING')
    AddTextComponentString(message)
    DrawNotification(false, false)
end
