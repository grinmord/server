-- ===================================================
--  POLICE DEPARTMENT VEHICLES CONFIGURATION FILE
-- ===================================================
-- This file is your one-stop setup for configuring police NPCs, vehicles, and spawn locations.
-- It is designed to be user-friendly, requiring no advanced programming knowledge.
-- Simply modify the values below to customize your police department setup.
-- The script automatically sets up interactions and menus based on your configurations.

Config = {}

-- ===================================================
-- | NPC CONFIGURATION                               |
-- ===================================================
-- Define the NPC locations for your police departments here.
-- For each NPC, specify their coordinates, model, and associated police department.
-- The script will automatically create interaction points (qb-target) at these locations.
-- If the ped is floatting apply -1 to the z axis; like so vector4(459.6, -986.6, 24.7, 90.88) would now be vector4(459.6, -986.6, 24.7-1, 90.88)
Config.PedLocations = {
    -- Example: NPCs at the police departments with coordinates and a specific model and the PD they are at.
    { coords = vector4(428.81, -1028.95, 27.96, 8.11), model = 'ig_trafficwarden', pd = "MRPD" },
    { coords = vector4(381.59, -1617.05, 29.29 - 1, 233.39), model = 'ig_trafficwarden', pd = "DAVIS" },
    { coords = vector4(376.57, 800.3, 187.62 - 1, 91.13),  model = 'ig_trafficwarden', pd = "RANGER" },

    -- Add your NPC locations here:
    -- Format: { coords = vector4(x, y, z, heading), model = 'model_name', pd = 'department_name' },
}

-- ===================================================
-- | POLICE JOBS CONFIGURATION                       |
-- ===================================================
-- Define which job codes are recognized as police jobs.
-- Players with these job codes can access the garage.
Config.PoliceJobs = {
    "police", -- Standard police job identifier
    "leo",    -- Law Enforcement Officer
    "lspd",   -- Los Santos Police Department
    "bcso",   -- Blaine County Sheriff's Office
    "ranger"  -- Park Rangers
    -- Add more job codes as needed
}

-- If you need to add more police job identifiers (for example, for different departments or ranks),
-- just add them to this list. Ensure that these identifiers match exactly with those defined in your server's job system.

-- ===================================================
-- | FUEL SYSTEM CONFIGURATION                       |
-- ===================================================
-- Specifies the fuel system script used by vehicles.
Config.FuelSystem = 'LegacyFuel'

-- ===================================================
-- | VEHICLE RESTRICTION CONFIGURATIONS              |
-- ===================================================

-- Enable or disable vehicle restriction based on job grade/rank.
-- ---------------------------------------------------
-- This feature checks the rank/grade of the player before allowing them to spawn a vehicle.
-- If the player's rank is lower than the required rank set in Config.DepartmentVehicles, the vehicle will not spawn.
-- The player will be notified that they do not hold the necessary rank to use the vehicle.
Config.RestrictVehiclesRank = true

-- Enable or disable vehicle restriction based on job.
-- ---------------------------------------------------
-- This setting verifies the job of the player before spawning a vehicle.
-- If the player's job does not match the job specified in Config.DepartmentVehicles, the vehicle will not spawn.
-- For example, to restrict LSPD vehicles to LSPD officers only, set the job under the vehicle configuration to 'lspd'.
-- If you want to remove this restriction, you can either set the job to nil or disable this feature.
Config.RestrictVehiclesJob = true

-- ===================================================
-- Note: These settings are part of a larger system. Ensure that the corresponding 
-- configurations in Config.DepartmentVehicles are set correctly to use these features.
-- ===================================================

-- ===================================================
-- | VEHICLE SPAWN LOCATIONS                         |
-- ===================================================
-- Define the vehicle spawn locations for each police department.
-- These locations are used for parking and spawning police vehicles.
-- pd needs to be the exact same as the pd set at Config.PedLocations
Config.VehSpawnLocations = {
    -- Example: Several spawn points for the MRPD
    { coords =vector4(428.93, -1025.64, 28.94, 49.53),   pd = 'MRPD' },


    -- Davis PD locations
    { coords = vector4(386.9, -1615.3, 28.98, 230.55),   pd = 'DAVIS' },
    { coords = vector4(388.84, -1612.83, 28.98, 230.68), pd = 'DAVIS' },
    { coords = vector4(391.08, -1610.59, 28.98, 229.64), pd = 'DAVIS' },
    { coords = vector4(392.9, -1608.15, 28.98, 229.69),  pd = 'DAVIS' },
    { coords = vector4(403.01, -1616.51, 28.98, 49.41),  pd = 'DAVIS' },
    { coords = vector4(401.23, -1619.12, 28.98, 50.44),  pd = 'DAVIS' },
    { coords = vector4(399.29, -1621.46, 28.98, 50.21),  pd = 'DAVIS' },
    { coords = vector4(396.8, -1623.69, 28.98, 50.13),   pd = 'DAVIS' },
    { coords = vector4(395.01, -1626.08, 28.98, 50.33),  pd = 'DAVIS' },
    { coords = vector4(393.36, -1628.89, 28.98, 51.07),  pd = 'DAVIS' },
    { coords = vector4(387.4, -1636.67, 28.98, 319.07),  pd = 'DAVIS' },
    { coords = vector4(385.09, -1634.46, 28.98, 320.15), pd = 'DAVIS' },
    -- More Davis PD locations...


    -- Ranger Station locations
    { coords = vector4(374.41, 795.4, 187.03, 179.71),   pd = 'RANGER' },
    -- More Ranger Station locations...

    -- Additional Police Department spawn locations...
    -- Add more locations as needed for different departments
    -- Format: { coords = vector4(x, y, z, h), pd = 'department_name' },
}

-- ===================================================
-- PERFORMANCE MODS CONFIGURATION
-- ===================================================
-- Enable or disable maximum performance mods for police vehicles.
Config.Maxmods = true -- If true, vehicles will have max performance upgrades.

Config.Turbo = true   -- Enable or disable turbo mod for vehicles.

-- ===================================================
-- | DEPARTMENT VEHICLES CONFIGURATION               |
-- ===================================================
-- Define the vehicles available for each police department.
-- Vehicles are automatically listed in the qb-menu based on these settings.
Config.DepartmentVehicles = {
    LSPD = {                -- Los Santos Police Department (LSPD)
        Charger = {
            model = "police", -- Actual Charger model name
            label = "LSPD Charger",
            primarycolor = 111,
            secondarycolor = 0,
            livery = 2,
            rank = 2,
            job = "lspd",
            mods = {
                { id = 0, modenabled = -1 }, -- id 0 represents the Spoiler modification. The 'modenabled' field uses -1 for level 0, 0 for level 1, and so on.
            },
            extras = {
                { id = 1, enabled = 0 }, -- For vehicle extras, '0' indicates enabled, and '1' indicates disabled.
                { id = 2, enabled = 0 },
                { id = 3, enabled = 0 },
                { id = 4, enabled = 0 },
                { id = 5, enabled = 0 },
                { id = 6, enabled = 0 },
                { id = 7, enabled = 0 },
                { id = 8, enabled = 0 }
            }
        },
        CVPI = {
            model = "police2", -- Actual CVPI model name
            label = "LSPD CVPI",
            primarycolor = 0,
            secondarycolor = 111,
            livery = 0,
            rank = 0,
            mods = {
                { id = 0, modenabled = -1 }, -- id 0 represents the Spoiler modification. The 'modenabled' field uses -1 for level 0, 0 for level 1, and so on.
            },
            extras = {
                { id = 1, enabled = 0 }, -- For vehicle extras, '0' indicates enabled, and '1' indicates disabled.
                { id = 2, enabled = 0 },
                { id = 3, enabled = 0 },
                { id = 4, enabled = 0 },
                { id = 5, enabled = 0 },
                { id = 6, enabled = 0 },
                { id = 7, enabled = 0 },
                { id = 8, enabled = 0 }
            }
        },
        Explorer = {
            model = "Explorer", -- Actual Explorer model name
            label = "LSPD Explorer",
            primarycolor = 0,
            secondarycolor = 111,
            livery = 1,
            rank = 1,
            mods = {
                { id = 0, modenabled = -1 }, -- id 0 represents the Spoiler modification. The 'modenabled' field uses -1 for level 0, 0 for level 1, and so on.
            },
            extras = {
                { id = 1, enabled = 0 }, -- For vehicle extras, '0' indicates enabled, and '1' indicates disabled.
                { id = 2, enabled = 0 },
                { id = 3, enabled = 0 },
                { id = 4, enabled = 0 },
                { id = 5, enabled = 0 },
                { id = 6, enabled = 0 },
                { id = 7, enabled = 0 },
                { id = 8, enabled = 0 }
            }
        },
        -- Additional LSPD vehicles...
    },
    BCSO = {                -- Blaine County Sheriff's Office (BCSO)
        Charger = {
            model = "char", -- Actual Charger model name
            label = "BCSO Charger",
            primarycolor = 111,
            secondarycolor = 49,
            livery = 0,
            rank = 2,
            mods = {
                { id = 0, modenabled = -1 }, -- id 0 represents the Spoiler modification. The 'modenabled' field uses -1 for level 0, 0 for level 1, and so on.
            },
            extras = {
                { id = 1, enabled = 0 }, -- For vehicle extras, '0' indicates enabled, and '1' indicates disabled.
                { id = 2, enabled = 0 },
                { id = 3, enabled = 0 },
                { id = 4, enabled = 0 },
                { id = 5, enabled = 0 },
                { id = 6, enabled = 0 },
                { id = 7, enabled = 0 },
                { id = 8, enabled = 0 }
            }
        },
        CVPI = {
            model = "pd1", -- Actual model name
            label = "BCSO CVPI",
            primarycolor = 111,
            secondarycolor = 49,
            livery = 3,
            rank = 0,
            mods = {
                { id = 0, modenabled = -1 }, -- id 0 represents the Spoiler modification. The 'modenabled' field uses -1 for level 0, 0 for level 1, and so on.
            },
            extras = {
                { id = 1, enabled = 0 }, -- For vehicle extras, '0' indicates enabled, and '1' indicates disabled.
                { id = 2, enabled = 0 },
                { id = 3, enabled = 0 },
                { id = 4, enabled = 0 },
                { id = 5, enabled = 0 },
                { id = 6, enabled = 0 },
                { id = 7, enabled = 0 },
                { id = 8, enabled = 0 }
            }
        },
        Explorer = {
            model = "explorer", -- Actual Explorer model name
            label = "BCSO Explorer",
            primarycolor = 49,
            secondarycolor = 111,
            livery = 2,
            rank = 1,
            mods = {
                { id = 0, modenabled = -1 }, -- id 0 represents the Spoiler modification. The 'modenabled' field uses -1 for level 0, 0 for level 1, and so on.
            },
            extras = {
                { id = 1, enabled = 0 }, -- For vehicle extras, '0' indicates enabled, and '1' indicates disabled.
                { id = 2, enabled = 0 },
                { id = 3, enabled = 0 },
                { id = 4, enabled = 0 },
                { id = 5, enabled = 0 },
                { id = 6, enabled = 0 },
                { id = 7, enabled = 0 },
                { id = 8, enabled = 0 }
            }
        },
        -- Additional BCSO vehicles...
    },
    SAST = {                -- San Andreas State Troopers (SAST)
        Charger = {
            model = "char", -- Actual Charger model name
            label = "SAST Charger",
            primarycolor = 4,
            secondarycolor = 4,
            livery = 3,
            rank = 2,
            mods = {
                { id = 0, modenabled = -1 }, -- id 0 represents the Spoiler modification. The 'modenabled' field uses -1 for level 0, 0 for level 1, and so on.
            },
            extras = {
                { id = 1, enabled = 0 }, -- For vehicle extras, '0' indicates enabled, and '1' indicates disabled.
                { id = 2, enabled = 0 },
                { id = 3, enabled = 0 },
                { id = 4, enabled = 0 },
                { id = 5, enabled = 0 },
                { id = 6, enabled = 0 },
                { id = 7, enabled = 0 },
                { id = 8, enabled = 0 }
            }
        },
        CVPI = {
            model = "pd1", -- Actual CVPI model name
            label = "SAST CVPI",
            primarycolor = 4,
            secondarycolor = 4,
            livery = 2,
            rank = 0,
            mods = {
                { id = 0, modenabled = -1 }, -- id 0 represents the Spoiler modification. The 'modenabled' field uses -1 for level 0, 0 for level 1, and so on.
            },
            extras = {
                { id = 1, enabled = 0 }, -- For vehicle extras, '0' indicates enabled, and '1' indicates disabled.
                { id = 2, enabled = 0 },
                { id = 3, enabled = 0 },
                { id = 4, enabled = 0 },
                { id = 5, enabled = 0 },
                { id = 6, enabled = 0 },
                { id = 7, enabled = 0 },
                { id = 8, enabled = 0 }
            }
        },
        Explorer = {
            model = "Explorer", -- Actual Explorer model name
            label = "SAST Explorer",
            primarycolor = 4,
            secondarycolor = 4,
            livery = 4,
            rank = 1,
            mods = {
                { id = 0, modenabled = -1 }, -- id 0 represents the Spoiler modification. The 'modenabled' field uses -1 for level 0, 0 for level 1, and so on.
            },
            extras = {
                { id = 1, enabled = 0 }, -- For vehicle extras, '0' indicates enabled, and '1' indicates disabled.
                { id = 2, enabled = 0 },
                { id = 3, enabled = 0 },
                { id = 4, enabled = 0 },
                { id = 5, enabled = 0 },
                { id = 6, enabled = 0 },
                { id = 7, enabled = 0 },
                { id = 8, enabled = 0 }
            }
        },
        -- Additional SAST vehicles...
    },
    INIT = {                   -- Interceptors (INIT)
        Mustang = {
            model = "mach1rb", -- Actual Mustang model name
            label = "Interceptor Mustang",
            primarycolor = 49,
            secondarycolor = 111,
            livery = 2,
            rank = 3,
            mods = {
                { id = 0, modenabled = -1 }, -- id 0 represents the Spoiler modification. The 'modenabled' field uses -1 for level 0, 0 for level 1, and so on.
            },
            extras = {
                { id = 1, enabled = 0 }, -- For vehicle extras, '0' indicates enabled, and '1' indicates disabled.
                { id = 2, enabled = 0 },
                { id = 3, enabled = 0 },
                { id = 4, enabled = 0 },
                { id = 5, enabled = 0 },
                { id = 6, enabled = 0 },
                { id = 7, enabled = 0 },
                { id = 8, enabled = 0 }
            }
        },
        Corvette = {
            model = "zr1RB", -- Actual Corvette model name
            label = "Interceptor Corvette",
            primarycolor = 49,
            secondarycolor = 111,
            livery = 2,
            rank = 3,
            mods = {
                { id = 0, modenabled = -1 }, -- id 0 represents the Spoiler modification. The 'modenabled' field uses -1 for level 0, 0 for level 1, and so on.
            },
            extras = {
                { id = 1, enabled = 0 }, -- For vehicle extras, '0' indicates enabled, and '1' indicates disabled.
                { id = 2, enabled = 0 },
                { id = 3, enabled = 0 },
                { id = 4, enabled = 0 },
                { id = 5, enabled = 0 },
                { id = 6, enabled = 0 },
                { id = 7, enabled = 0 },
                { id = 8, enabled = 0 }
            }
        },
        Challenger = {
            model = "poldemonrb", -- Actual Challanger model name
            label = "Interceptor Challanger",
            primarycolor = 49,
            secondarycolor = 111,
            livery = 2,
            rank = 3,
            mods = {
                { id = 0, modenabled = -1 }, -- id 0 represents the Spoiler modification. The 'modenabled' field uses -1 for level 0, 0 for level 1, and so on.
            },
            extras = {
                { id = 1, enabled = 0 }, -- For vehicle extras, '0' indicates enabled, and '1' indicates disabled.
                { id = 2, enabled = 0 },
                { id = 3, enabled = 0 },
                { id = 4, enabled = 0 },
                { id = 5, enabled = 0 },
                { id = 6, enabled = 0 },
                { id = 7, enabled = 0 },
                { id = 8, enabled = 0 }
            }
        },
        -- Additional INIT vehicles...
    },
    RANG = {                   -- Interceptors (INIT)
        F150 = {
            model = "sotruck", -- Actual Mustang model name
            label = "Ranger F150",
            primarycolor = 49,
            secondarycolor = 111,
            livery = 2,
            rank = 3,
            mods = {
                { id = 0, modenabled = -1 }, -- id 0 represents the Spoiler modification. The 'modenabled' field uses -1 for level 0, 0 for level 1, and so on.
            },
            extras = {
                { id = 1, enabled = 0 }, -- For vehicle extras, '0' indicates enabled, and '1' indicates disabled.
                { id = 2, enabled = 0 },
                { id = 3, enabled = 0 },
                { id = 4, enabled = 0 },
                { id = 5, enabled = 0 },
                { id = 6, enabled = 0 },
                { id = 7, enabled = 0 },
                { id = 8, enabled = 0 }
            }
        },

        -- Additional Ranger vehicles...
    },
    -- Additional departments if needed...
}

-- ===================================================
--  END OF CONFIGURATION
-- ===================================================
