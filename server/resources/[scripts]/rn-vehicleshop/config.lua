Config = {}
Config.Core = {
  name = "QBCore",
  gettingCoreObject = "export", -- event/export
  gettingObjectName = "GetCoreObject", -- the event name / export name for getting the core object.
  core_resource_name = "qb-core" -- the core resource name.
}
Config.Location = vector3(-57.4348, -1097.52, 26.422) -- The location of the vehicleshop.

Config.BoughtVehicleSpawnLocation = {coords= vector3(-47.74, -1074.79, 26.72),heading = 70.81} -- The location where the purchased/testdrive vehicle will be spawned. 

Config.Blip = {
  id = 825,
  color = 60,
  scale = 0.8,
  label = "Araba Satıcısı",
  showBlip = true
}

------------------------------------------------------------------------------------------------------------------------
-- Vehicle Stock
------------------------------------------------------------------------------------------------------------------------

Config.Hour = 20 -- The time when new vehicles will be added to the stock.
Config.NumOfVehicles = 5 -- The amount of vehicles that will be added to the stock.

-- Every day the stock renewing itself with 5 (Config.NumOfVehicles = 5) new vehicles at 12:00 p.m. (Config.Hour = 12).
-- In order for the stock to work you need to call the Config.SetDefaultStockEvent function, Otherwise the stock will be UNLIMITED. 

------------------------------------------------------------------------------------------------------------------------
-- Test Drive
------------------------------------------------------------------------------------------------------------------------

Config.TestDrive = {
    testDriveTimer = 60, -- Duration of the test drive (seconds).
    testDriveCost = 50, -- The price of the test drive.
}

------------------------------------------------------------------------------------------------------------------------
-- Categories And Vehicles
------------------------------------------------------------------------------------------------------------------------

Config.Vehicles = {
  {
    title = "compacts", -- Title of category.
    buttons = {
      {name = "Panto", costs = 500, model = "panto"},
      {name = "Asbo", costs = 500, model = "asbo"},
      {name = "Brioso", costs = 500, model = "brioso"},
      {name = "Club", costs = 500, model = "club"},
      {name = "Kanjo", costs = 500, model = "kanjo"},
    }
  },
  {
    title = "coupes", -- Title of category.
    buttons = {
      {name = "Previon", costs = 500, model = "previon"},
      {name = "Sentinel", costs = 500, model = "sentinel"},
      {name = "Sentinel XS", costs = 500, model = "sentinel2"},
      {name = "Sentinel Classic", costs = 500, model = "sentinel3"},
      {name = "Futo", costs = 500, model = "futo"},
      {name = "Zion", costs = 500, model = "zion"},
      {name = "Felon", costs = 500, model = "felon"},
      {name = "Felon GT", costs = 500, model = "felon2"},
      {name = "Oracle XS", costs = 500, model = "oracle2"},
    }
  },
  {
    title = "sports", -- Title of category.
    buttons = {
      {name = "Futo GTX", costs = 44590, model = "futo2", maxStock = 1000},
      {name = "Pfister Comet", costs = 52890, model = "comet2", maxStock = 1000},
      {name = "8F Drafter", costs = 44990, model = "drafter", maxStock = 1000},
      {name = "Comet SR", costs = 53990, model = "comet5", maxStock = 1000},
      {name = "Comet S2", costs = 54900, model = "comet6", maxStock = 1000},
      {name = "Schafter V12", costs = 26900, model = "schafter3", maxStock = 1000},
      {name = "Locust", costs = 47900, model = "locust", maxStock = 1000},
      {name = "Schafter LWB", costs = 27890, model = "schafter4", maxStock = 1000},
      {name = "Sultan", costs = 38900, model = "sultan", maxStock = 1000},
      {name = "Sultan RS", costs = 38900, model = "sultanrs", maxStock = 1000},
      {name = "Sultan Custom", costs = 44900, model = "sultan2", maxStock = 1000},
      {name = "Sultan Classic Custom", costs = 46900, model = "sultan3", maxStock = 1000},
      {name = "Sugoi", costs = 32900, model = "sugoi", maxStock = 1000},
      {name = "Komoda", costs = 40900, model = "komoda", maxStock = 1000},
      {name = "Feltzer", costs = 34590, model = "feltzer2", maxStock = 1000},
      {name = "Remus", costs = 34900, model = "remus", maxStock = 1000},
      {name = "Elegy RH8", costs = 41900, model = "elegy2", maxStock = 1000},
      {name = "Penumbra FF", costs = 42900, model = "penumbra2", maxStock = 1000},
      {name = "Jugular", costs = 42900, model = "jugular", maxStock = 1000},
      {name = "ZR350", costs = 32900, model = "zr350", maxStock = 1000},
      {name = "Jester Classic", costs = 32890, model = "jester3", maxStock = 1000},
      {name = "Elegy Retro Custom", costs = 49900, model = "elegy", maxStock = 1000},
      {name = "Rapid GT", costs = 35900, model = "rapidgt", maxStock = 1000},
      {name = "Schwartzer", costs = 31900, model = "schwarzer", maxStock = 1000},
      {name = "Kuruma", costs = 38900, model = "kuruma", maxStock = 1000},
      {name = "Calico GTF", costs = 36900, model = "calico", maxStock = 1000},
    }
  },
  {
    title = "super", -- Title of category.
    buttons = {
      {name = "Banshee 900R", costs = 59900, model = "banshee2", maxStock = 1000},
      {name = "Entity XF", costs = 31000, model = "entityxf", maxStock = 1000},
      {name = "Turismo R", costs = 64000, model = "turismor", maxStock = 1000},
      {name = "Cheetah", costs = 54900, model = "cheetah2", maxStock = 1000},
      {name = "Bullet", costs = 58000, model = "bullet", maxStock = 1000},
      {name = "Reaper", costs = 65000, model = "reaper", maxStock = 1000},
      {name = "Vacca", costs = 60000, model = "vacca", maxStock = 1000},
      {name = "Italia GTB", costs = 62000, model = "italigtb", maxStock = 1000},
      {name = "Furia", costs = 77900, model = "furia", maxStock = 1000},
      {name = "GP1", costs = 57000, model = "gp1", maxStock = 1000},
      {name = "Torero XO", costs = 58900, model = "torero2", maxStock = 1000},
      {name = "Adder", costs = 63900, model = "adder", maxStock = 1000},
      {name = "Tempesta", costs = 62900, model = "tempesta", maxStock = 1000},
      {name = "Voltic", costs = 58900, model = "voltic", maxStock = 1000},
      {name = "T20", costs = 62900, model = "t20", maxStock = 1000},
      {name = "Penetrator", costs = 65900, model = "penetrator", maxStock = 1000},
      {name = "Pfister 811", costs = 64900, model = "pfister811", maxStock = 1000},
    }
  },
  {
    title = "sedans", -- Title of category.
    buttons = {
      {name = "Cognoscenti 55", costs = 26900, model = "cog55", maxStock = 1000},
      {name = "Schafter", costs = 27900, model = "schafter2", maxStock = 1000},
      {name = "Stratum", costs = 22900, model = "stratum", maxStock = 1000},
      {name = "Fugitive", costs = 29900, model = "fugitive", maxStock = 1000},
      {name = "Primo", costs = 20900, model = "primo", maxStock = 1000},
      {name = "Primo Custom", costs = 21900, model = "primo2", maxStock = 1000},
      {name = "Oracle", costs = 28900, model = "oracle", maxStock = 1000},
      {name = "Washington", costs = 19900, model = "washington", maxStock = 1000},
      {name = "Glendale", costs = 20900, model = "glendale", maxStock = 1000},
      {name = "Cognoscenti", costs = 28900, model = "cognoscenti", maxStock = 1000},
      {name = "Stanier", costs = 22900, model = "stanier", maxStock = 1000},
      {name = "Pfister", costs = 28900, model = "astron", maxStock = 1000},
      {name = "Tailgater S", costs = 30900, model = "tailgater2", maxStock = 1000},
      {name = "Lampadati", costs = 28900, model = "felon", maxStock = 1000},
      {name = "Deity", costs = 28900, model = "deity", maxStock = 1000},
      {name = "Super Diamond", costs = 24500, model = "superd", maxStock = 1000},
      {name = "Tailgater", costs = 28900, model = "tailgater", maxStock = 1000},
      {name = "Warrener", costs = 19900, model = "warrener", maxStock = 1000},
      {name = "Asterope", costs = 19900, model = "asterope", maxStock = 1000},
      {name = "Intruder", costs = 19900, model = "intruder", maxStock = 1000},
    }
  },
  {
    title = "suv", -- Title of category.
    buttons = {
      {name = "Baller LE", costs = 35500, model = "baller3", maxStock = 1000},
      {name = "Baller", costs = 32900, model = "baller", maxStock = 1000},
      {name = "Cavalcade", costs = 29900, model = "cavalcade", maxStock = 1000},
      {name = "Dubsta", costs = 28900, model = "dubsta", maxStock = 1000},
      {name = "Gresley", costs = 27900, model = "gresley", maxStock = 1000},
      {name = "Rocoto", costs = 27900, model = "rocoto", maxStock = 1000},
      {name = "XLS", costs = 29900, model = "xls", maxStock = 1000},
      {name = "Rebla GTS", costs = 32000, model = "rebla", maxStock = 1000},
      {name = "Patriot", costs = 31900, model = "patriot", maxStock = 1000},
      {name = "Granger 3600LX", costs = 34900, model = "granger2", maxStock = 1000},
      {name = "Toros", costs = 27900, model = "toros", maxStock = 1000},
      {name = "Landstalker XL", costs = 29900, model = "landstalker2", maxStock = 1000},
      {name = "Novak", costs = 34500, model = "novak", maxStock = 1000},
      {name = "FQ2", costs = 29900, model = "fq2", maxStock = 1000},
    }
  },
  {
    title = "muscle", -- Title of category.
    buttons = {
      {name = "Buccaneer Rider", costs = 25900, model = "buccaneer2", maxStock = 1000},
      {name = "Buccaneer", costs = 26500, model = "buccaneer", maxStock = 1000},
      {name = "Beater Dukes", costs = 27900, model = "dukes3", maxStock = 1000},
      {name = "Manana Custom", costs = 29900, model = "manana2", maxStock = 1000},
      {name = "Virgo", costs = 24800, model = "virgo2", maxStock = 1000},
      {name = "Sabre GT", costs = 26800, model = "sabregt", maxStock = 1000},
      {name = "Dukes", costs = 24900, model = "dukes", maxStock = 1000},
      {name = "Classic Gauntlet", costs = 25900, model = "gauntlet3", maxStock = 1000},
      {name = "Gauntlet", costs = 27900, model = "gauntlet", maxStock = 1000},
      {name = "Gauntlet Hellfire", costs = 26000, model = "gauntlet4", maxStock = 1000},
      {name = "Tampa", costs = 25000, model = "tampa", maxStock = 1000},
      {name = "Vigero ZX", costs = 26900, model = "vigero2", maxStock = 1000},
      {name = "Dominator GTT", costs =27900, model = "dominator8", maxStock = 1000},
      {name = "Dominator", costs = 26900, model = "dominator", maxStock = 1000},
      {name = "Nightshade", costs = 29000, model = "nightshade", maxStock = 1000},
      {name = "Faction Rider", costs = 31500, model = "faction2", maxStock = 1000},
    }
  },
  {
    title = "vans", -- Title of category.
    buttons = {
      {name = "Speedo Van", costs = 19000, model = "speedo", maxStock = 1000},
      {name = "Moonbeam", costs = 20000, model = "moonbeam", maxStock = 1000},
      {name = "Youga Van", costs = 21500, model = "youga", maxStock = 1000},
      {name = "Manana Custom", costs = 28900, model = "youga3", maxStock = 1000},
      {name = "Bobcat XL", costs = 19800, model = "bobcatxl", maxStock = 1000},
      {name = "Paradise Van", costs = 24900, model = "paradise", maxStock = 1000},
    }
  },
  {
    title = "MOTORCYCLES", -- Title of category.
    buttons = {
      {name = "Akuma", costs = 25000, model = "akuma", maxStock = 1500},
      {name = "Bati", costs = 35000, model = "bati2", maxStock = 1500},
      {name = "Carbonrs", costs = 20000, model = "carbonrs", maxStock = 1500},
      {name = "Defiler", costs = 21000, model = "defiler", maxStock = 1500},
      {name = "Diablous", costs = 25000, model = "diablous", maxStock = 1500},
      {name = "Nightblade", costs = 23000, model = "nightblade", maxStock = 1500},
      {name = "Innovation", costs = 24000, model = "innovation", maxStock = 1500},
      {name = "Ratbike", costs = 20000, model = "ratbike", maxStock = 1500},
      {name = "Manchez2", costs = 19000, model = "manchez2", maxStock = 1500},
      {name = "Sanchez Livery", costs = 20000, model = "sanchez", maxStock = 1500},
      {name = "Sanchez", costs = 21000, model = "sanchez2", maxStock = 1500},
      {name = "Avarus", costs = 25000, model = "avarus", maxStock = 1500},
      {name = "Chimera", costs = 33000, model = "chimera", maxStock = 1500},
      {name = "Shotaro Concept", costs = 44000, model = "shotaro", maxStock = 1500},
      {name = "Enduro", costs = 28000, model = "enduro", maxStock = 1500},
      {name = "Double T", costs = 35000, model = "double", maxStock = 1500},
      {name = "Sanctus FF", costs = 29000, model = "sanctus", maxStock = 1500},
      {name = "Diablous S2", costs = 33000, model = "diablous2", maxStock = 1500},
    }
  }
}
-- Explanation of the buttons:
--[[
    name = vehicle's label (The name which is displayed in the vehicle menu).
    costs = vehicle's price.
    model = vehicle's model.
    stock = The maximum stock a vehicle can reach (Explanation from above).
]]

------------------------------------------------------------------------------------------------------------------------
-- Color selection:
------------------------------------------------------------------------------------------------------------------------

-- Full list of colors - https://wiki.rage.mp/index.php?title=Vehicle_Colors
Config.Colors = {
  {r = 255, g = 255, b = 246, colorName = "white", gtaColor = 111},
  {r = 13, g = 17, b = 22, colorName = "black", gtaColor = 0},
  {r = 194, g = 196, b = 198, colorName = "grey", gtaColor = 5},
  {r = 255, g = 207, b = 32, colorName = "yellow", gtaColor = 88},
  {r = 18, g = 56, b = 60, colorName = "green", gtaColor = 51},
  {r = 207, g = 31, b = 33, colorName = "red", gtaColor = 39},
  {r = 71, g = 87, b = 143, colorName = "blue", gtaColor = 64},
  {r = 242, g = 31, b = 153, colorName = "pink", gtaColor = 135},
  {r = 102, g = 184, b = 31, colorName = "limegreen", gtaColor = 55},
  {r = 110, g = 163, b = 198, colorName = "lightblue", gtaColor = 74},
}
-- Explanation of color selection:
--[[
    r,g,b = (The color rgb values according to your gta color).
    colorName = color's name (put whatever you want).
    gtaColor = the color number from gta list.
]]

------------------------------------------------------------------------------------------------------------------------
-- Functions:
------------------------------------------------------------------------------------------------------------------------

-- Client:
Config.BuyVehicleFunc = function(Core,vehicleEntity,vehicleName)
  --[[
    This function is called when the purchased vehicle's entity is created and after the player has paid for the vehicle. 
    Parameters:
      @Core: The current core object.
      @vehicleEntity: The purchased vehicle's entity after it's been created.
      @vehicleName: The model listed in Config.Vehicles.
    
    Example for implementation:
    ]]
    local vehicleProps = Core.Functions.GetVehicleProperties(vehicleEntity)
    local model = GetEntityModel(vehicleEntity)
    vehicleProps.displayName = vehicleName
    TriggerEvent("vehiclekeys:client:SetOwner", GetVehicleNumberPlateText(vehicleEntity), vehicleEntity)
    TriggerServerEvent('rn-vehicleshop:setVehicleOwned', vehicleProps)
end

Config.TestDriveFunc = function(Core,vehicleEntity)
  --[[
    This function is called when the test drive vehicle's entity is created and after the player has paid for the test drive. 
    Parameters:
      @Core: The current core object.
      @vehicleEntity: The purchased vehicle's entity after it's been created.
    
    Example for implementation (Probably for hotwire add keys event/export):
    ]]
    TriggerEvent("vehiclekeys:client:SetOwner", GetVehicleNumberPlateText(vehicleEntity), vehicleEntity)
end

-- Server:
Config.GetPlayerMoney = function(playerId,Core)
  --[[
    This function is used for getting the player's money.
    Parameters:
      @playerId: The player server id/source.
      @Core: The current core object.
    
    Example for Qbus implementation is down below.
    ]]
    if type(playerId) == "number" then
        local player = Core.Functions.GetPlayer(playerId)
        if player then
            return player.PlayerData.money["cash"]
        end
    end
end

Config.RemovePlayerMoney = function(playerId, amount, Core)
  --[[
    This function is used for paying for the vehicle/testdrive.
    Parameters:
      @playerId: The player server id/source.
      @amount: the amount to pay.
      @Core: The current core object.
    
    Example for Qbus implementation is down below.
    ]]
    local player = Core.Functions.GetPlayer(playerId)
    if player then
        player.Functions.RemoveMoney("cash", amount)
    end
end

Config.GetPlayerNameFunc = function(playerId,Core)
  --[[
    This function is used for getting the character's name.
    Parameters:
      @playerId: The player server id/source.
      @Core: The current core object.
    
    Example for Qbus implementation is down below.
    ]]
    local player = Core.Functions.GetPlayer(playerId)
    return player.PlayerData.charinfo.firstname .. " " .. player.PlayerData.charinfo.lastname 
end

Config.ResetStockEvent = {
    name = "rn-vehicleshop:resetstock", -- This event resets the vehicles' stock. [*Server Side*],
    safe_for_net = false --[[
        true = allows you to trigger the event from a client side script and from a server side script.
        false =  allows you to trigger the event from a server side script only.
    ]]
}
   
Config.SetDefaultStockEvent = {
  name = "rn-vehicleshop:setDefaultStock", -- This event generates the stock.json file with values from the config.lua [*It is recommended to do it on first launch.]
  safe_for_net = true --[[
    true = allows you to trigger the event from a client side script and from a server side script.
    false =  allows you to trigger the event from a server side script only.
  ]]
}