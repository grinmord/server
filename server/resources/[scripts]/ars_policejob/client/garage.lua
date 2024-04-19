local IsPositionOccupied       = IsPositionOccupied
local CreateVehicle            = CreateVehicle
local SetModelAsNoLongerNeeded = SetModelAsNoLongerNeeded
local NetworkFadeInEntity      = NetworkFadeInEntity
local TaskEnterVehicle         = TaskEnterVehicle
local GetPedInVehicleSeat      = GetPedInVehicleSeat
local IsControlJustReleased    = IsControlJustReleased
local TaskLeaveVehicle         = TaskLeaveVehicle
local FreezeEntityPosition     = FreezeEntityPosition
local NetworkFadeOutEntity     = NetworkFadeOutEntity
local DeleteVehicle            = DeleteVehicle
local DrawMarker               = DrawMarker
local Wait                     = Wait
local IsEntityDead             = IsEntityDead
local vector3                  = vector3
local TaskVehicleDriveWander   = TaskVehicleDriveWander
local DeletePed                = DeletePed

local depositPositions         = {}

local function openCarList(garage)
    local vehicles = {}
    local playerPed = cache.ped
    local jobGrade = getPlayerJobGrade()

    for k, v in pairs(garage.vehicles) do
        if jobGrade >= v.min_grade then
            table.insert(vehicles, {
                title = v.label,
                onSelect = function(data)
                    local isPosOccupied = IsPositionOccupied(garage.spawn.x, garage.spawn.y, garage.spawn.z, 10, false, true, true, false, false, 0, false)

                    if isPosOccupied then return end

                    local model = lib.requestModel(v.spawn_code)

                    if not model then return end

                    local vehicle = CreateVehicle(model, garage.spawn.x, garage.spawn.y, garage.spawn.z, garage.spawn.w, true, false)
                    SetModelAsNoLongerNeeded(model)
                    NetworkFadeInEntity(vehicle, 1)
                    lib.setVehicleProperties(vehicle, v.modifications)

                    TaskEnterVehicle(playerPed, vehicle, -1, -1, 1.0, 1, 0)
                end
            })
        end
    end

    lib.registerContext({
        id = 'vehicleList',
        title = 'Vehicle menu',
        options = vehicles
    })
    lib.showContext('vehicleList')
end


local function depositVehicle(data)
    if hasJob(data.jobs) then
        local playerPed = cache.ped
        local playerVehicle = cache.vehicle
        if playerVehicle and GetPedInVehicleSeat(playerVehicle, -1) ~= 0 then
            DrawMarker(0, data.coords.x, data.coords.y, data.coords.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.8,
                0.8, 0.8, 199, 208, 209, 100, false, true, 2, nil, nil, false)

            if data.currentDistance < 2 and IsControlJustReleased(0, 38) then
                TaskLeaveVehicle(playerPed, playerVehicle, 64)

                while cache.vehicle do Wait(100) end

                local vehicleToDelete = playerVehicle

                lib.hideTextUI()

                local policeDriver = utils.createPed(data.model, data.driverSpawnCoords)
                FreezeEntityPosition(policeDriver, false)

                TaskEnterVehicle(policeDriver, vehicleToDelete, -1, -1, 1.0, 1, 0)

                Wait(1000)

                while GetPedInVehicleSeat(vehicleToDelete, 0) ~= 0 do Wait(1) end
                while GetPedInVehicleSeat(vehicleToDelete, 1) ~= 0 do Wait(1) end
                while GetPedInVehicleSeat(vehicleToDelete, 2) ~= 0 do Wait(1) end

                TaskVehicleDriveWander(policeDriver, vehicleToDelete, 60.0, 8)

                Wait(20 * 1000) -- 20 seconds

                NetworkFadeOutEntity(vehicleToDelete, false, true)
                NetworkFadeOutEntity(policeDriver, false, true)

                Wait(1 * 1000)

                DeleteVehicle(vehicleToDelete)
                DeletePed(policeDriver)

                vehicleToDelete = nil
                policeDriver = nil
            end
        end
    end
end

function initGarage(data, jobs)
    for index, garage in pairs(data) do
        local ped = utils.createPed(garage.model, garage.pedPos)

        exports.ox_target:addLocalEntity(ped, {
            {
                name = 'garageGuy' .. ped,
                label = locale('garage_interact_label'),
                icon = 'fa-solid fa-car',
                distance = 3,
                groups = jobs,
                canInteract = function(entity, distance, coords, name, bone)
                    return not IsEntityDead(entity) and player.inDuty()
                end,
                onSelect = function(data)
                    local position, heading = vector3(garage.spawn.x, garage.spawn.y, garage.spawn.z),
                        garage.spawn.w
                    openCarList(garage)
                end,
            }
        })

        depositPositions[index] = lib.points.new({
            coords = garage.deposit,
            distance = 5,
            onEnter = function(self)
                if cache.vehicle and hasJob(jobs) then
                    lib.showTextUI(locale('deposit_vehicle'))
                end
            end,
            onExit = function(self)
                lib.hideTextUI()
            end,
            nearby = function(self)
                self.model = garage.model
                self.driverSpawnCoords = garage.driverSpawnCoords
                self.jobs = jobs
                depositVehicle(self)
            end

        })
    end
end
