Config = {}

-- IMPORTANT

Config.Core = "qb-core" -- Your Core

Config.Target = "qb-target" -- Your Target Script

Config.Input = 'qb-input' -- Your Input Script

Config.InvEvent = "inventory:server:OpenInventory" -- Your Inventory Event

Config.MenuExport = "crstore:activemenu" -- Your Menu Open Event

Config.DoorLockEvent = 'qb-doorlock:server:updateState' -- Door Lock Event 

Config.Notify = 'QBCore:Notify' -- Notify Event

Config.CameraEvent = "police:client:ActiveCamera" -- Police Job Camera Event

Config.GangName = "families" --  families Gang Name

Config.Vehicle = "supervolito2" -- families Car Name supervolito2

Config.FuelScript = "LegacyFuel" -- Your Fuel Script

Config.VehiclePed = "g_m_m_mexboss_02" -- Vehicle Ped Name

Config.Anim1 = "anim@amb@casino@valet_scenario@pose_d@" -- Vehicle Ped Animation

Config.Anim2 = "base_a_m_y_vinewood_01" -- Vehicle Ped Animation



--Guards Stuff
Config['guards'] = {-- Dont Touch
    ['npcguards'] = {
        { coords = vector3(-134.03, -1601.88, 38.21), heading = 24.37, model = 's_m_m_highsec_01'},
        { coords = vector3(-148.03, -1596.68, 38.21), heading = 288.27, model = 's_m_m_highsec_01'},
        { coords = vector3(-137.84, -1595.46, 34.24), heading = 317.26, model = 's_m_m_highsec_01'},
    },
}

--Guards Stuff

Config.GuardHeal = 400 -- Guards Heal

Config.GuardsWeapons = "WEAPON_ASSAULTRIFLE" -- The Weapons With The Guards

Config.VehicleName = "baller6" -- Guards Vehicle Name

Config.VehicleDeploy = vector3(-119.58, -1612.29, 31.93) -- Where Guards Vehicle Stops

