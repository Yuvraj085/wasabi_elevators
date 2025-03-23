-----------------For support, scripts, and more----------------
--------------- https://discord.gg/wasabiscripts  -------------
---------------------------------------------------------------

Config = {}

Config.checkForUpdates = true -- Check for Updates?

Config.Elevators = {
    SASP_Elevator = {                              -- Elevator name(Doesn't show it's just to name table)
        [1] = {
            coords = vec3(465.43, -983.99, 43.69), -- Coords, if you're new; last number is heading
            heading = 102.7,                       -- Heading of how will spawn on floor
            title = 'Roof Top',                    -- Title
            description = 'SASP - HeliPad',        -- Description
            target = {                             -- Target length/width
                width = 4,
                length = 4
            },
            groups = { -- Job locks
                'police',
                'ambulance'
            },
        },
        [2] = {
            coords = vec3(467.33, -984.08, 35.86), -- Coords, if you're new; last number is heading
            heading = 93.14,
            title = 'Office Room',
            description = 'SASP - Department',
            target = {
                width = 4,
                length = 4
            },
            groups = { -- Job locks
                'police',
                'ambulance'
            },
        },
        [3] = {
            coords = vec3(469.42, -962.91, 23.93), -- Coords, if you're new; last number is heading
            heading = 86.18,
            title = 'Parking Garage',
            description = 'SASP - Parking Facilities',
            target = {
                width = 4,
                length = 4
            },
            groups = { -- Job locks
                'police',
                'ambulance'
            },
        },
    },
    Red_Garage_Elevator = {                            -- Elevator name(Doesn't show it's just to name table)
        [1] = {
            coords = vector3(-322.31, -775.05, 33.96), -- Coords, if you're new; last number is heading
            heading = 221.24,                          -- Heading of how will spawn on floor
            title = 'Red Garage',                      -- Title
            description = 'Floor 1',                   -- Description For Notify Added By Yuvraj
            target = {                                 -- Target length/width
                width = 4,
                length = 4
            },
        },
        [2] = {
            coords = vector3(-322.42, -774.96, 38.78), -- Coords, if you're new; last number is heading
            heading = 223.62,
            title = 'Red Garage',
            description = 'Floor 2', -- Description For Notify Added By Yuvraj
            target = {
                width = 4,
                length = 4
            } -- Example without group
        },
        [3] = {
            coords = vector3(-322.42, -774.9, 43.6), -- Coords, if you're new; last number is heading
            heading = 239.49,
            title = 'Red Garage',
            description = 'Floor 3', -- Description For Notify Added By Yuvraj
            target = {
                width = 4,
                length = 4
            } -- Example without group
        },
        [4] = {
            coords = vector3(-322.3, -774.97, 53.25), -- Coords, if you're new; last number is heading
            heading = 217.97,
            title = 'Red Garage',
            description = 'Floor 4', -- Description For Notify Added By Yuvraj
            target = {
                width = 4,
                length = 4
            } -- Example without group
        },
    },
    pd_left_Elevator = {                               -- Elevator name(Doesn't show it's just to name table)
        [1] = {
            coords = vector3(-593.04, -430.79, 31.17), -- Coords, if you're new; last number is heading
            heading = 286.7,                           -- Heading of how will spawn on floor
            title = 'Parking',                         -- Title
            description = 'Parking Elevator 1',        -- Description For Notify Added By Yuvraj
            target = {                                 -- Target length/width
                width = 4,
                length = 4
            },
            groups = {   -- Job locks
                'police',
                'ambulance'
            }
        },
        [2] = {
            coords = vector3(-590.07, -430.65, 35.18), -- Coords, if you're new; last number is heading
            heading = 286.7,
            title = 'Ground Floor',
            description = 'Ground Floor Elevator 1', -- Description For Notify Added By Yuvraj
            target = {
                width = 4,
                length = 4
            },
            groups = { -- Job locks
                'police',
                'ambulance'
            },
        },
        [3] = {
            coords = vector3(-590.08, -430.84, 39.64), -- Coords, if you're new; last number is heading
            heading = 286.7,
            title = 'First Floor',
            description = 'First Floor Elevator 1', -- Description For Notify Added By Yuvraj
            target = {
                width = 4,
                length = 4
            },
            groups = { -- Job locks
                'police',
                'ambulance'
            },
        },
        [4] = {
            coords = vector3(-589.3, -430.93, 45.64), -- Coords, if you're new; last number is heading
            heading = 286.7,
            title = 'Second Floor',
            description = 'Second Floor Elevator 1', -- Description For Notify Added By Yuvraj
            target = {
                width = 4,
                length = 4
            },
            groups = { -- Job locks
                'police',
                'ambulance'
            },
        },
    },
    pd_right_Elevator = {                              -- Elevator name(Doesn't show it's just to name table)
        [1] = {
            coords = vector3(-593.02, -433.65, 31.17), -- Coords, if you're new; last number is heading
            heading = 286.7,                           -- Heading of how will spawn on floor
            title = 'Parking',                         -- Title
            description = 'Parking Elevator 2',        -- Description For Notify Added By Yuvraj
            target = {                                 -- Target length/width
                width = 4,
                length = 4
            },
            groups = { -- Job locks
                'police',
                'ambulance'
            },
        },
        [2] = {
            coords = vector3(-590.21, -433.96, 35.18), -- Coords, if you're new; last number is heading
            heading = 286.7,
            title = 'Ground Floor',
            description = 'Ground Floor Elevator 2', -- Description For Notify Added By Yuvraj
            target = {
                width = 4,
                length = 4
            },
            groups = { -- Job locks
                'police',
                'ambulance'
            },
        },
        [3] = {
            coords = vector3(-590.05, -433.92, 39.64), -- Coords, if you're new; last number is heading
            heading = 286.7,
            title = 'First Floor',
            description = 'First Floor Elevator 2', -- Description For Notify Added By Yuvraj
            target = {
                width = 4,
                length = 4
            },
            groups = { -- Job locks
                'police',
                'ambulance'
            },
        },
        [4] = {
            coords = vector3(-589.59, -434.22, 45.64), -- Coords, if you're new; last number is heading
            heading = 286.7,
            title = 'Second Floor',
            description = 'Second Floor Elevator 2', -- Description For Notify Added By Yuvraj
            target = {
                width = 4,
                length = 4
            },
            groups = { -- Job locks
                'police',
                'ambulance'
            },
        },
    },
    emd_right_Elevator = {                            -- Elevator name(Doesn't show it's just to name table)
        [1] = {
            coords = vector3(339.54, -584.22, 74.16), -- Coords, if you're new; last number is heading
            heading = 250.82,                         -- Heading of how will spawn on floor
            title = 'Helipad',                        -- Title
            description = 'Helipad',                  -- Description For Notify Added By Yuvraj
            target = {                                -- Target length/width
                width = 10,
                length = 10
            },
        },
        [2] = {
            coords = vector3(317.09, -576.88, 43.28), -- Coords, if you're new; last number is heading
            heading = 152.94,
            title = 'Ground Floor',
            description = 'Ground Floor', -- Description For Notify Added By Yuvraj
            target = {
                width = 4,
                length = 4
            },
        },
        [3] = {
            coords = vector3(320.38, -598.53, 38.33), -- Coords, if you're new; last number is heading
            heading = 345.46,
            title = 'Under Ground Floor',
            description = 'Under Ground Floor', -- Description For Notify Added By Yuvraj
            target = {
                width = 4,
                length = 4
            },
        },
        [4] = {
            coords = vector3(327.17, -571.29, 48.21), -- Coords, if you're new; last number is heading
            heading = 166.62,
            title = '1st Floor',
            description = 'First Floor', -- Description For Notify Added By Yuvraj
            target = {
                width = 4,
                length = 4
            },
        },
    },
    --? Wiwang Hotel Elevators
    wiwang_hotel_Elevator = {                          -- Elevator name(Doesn't show it's just to name table)
        [1] = {
            coords = vector3(-824.65, -713.28, 28.06), -- Coords, if you're new; last number is heading
            heading = 270.79,                          -- Heading of how will spawn on floor
            title = 'Groud Floor',                     -- Title
            description = 'Reception Area',                 -- Description For Notify Added By Yuvraj
            target = {                                 -- Target length/width
                width = 4,
                length = 4
            },
        },
        [2] = {
            coords = vector3(-820.88, -713.17, 46.92), -- Coords, if you're new; last number is headingvector4(-820.88, -713.17, 46.92, 272.7)
            heading = 272.7,
            title = 'First Floor',
            description = '12 Room Available', -- Description For Notify Added By Yuvraj
            target = {
                width = 4,
                length = 4
            },
        },
        [3] = {
            coords = vector3(-820.84, -713.16, 81.78), -- Coords, if you're new; last number is heading
            heading = 269.23,
            title = 'Second Floor',
            description = '12 Room', -- Description For Notify Added By Yuvraj
            target = {
                width = 4,
                length = 4
            },
        },
        [4] = {
            coords = vector3(-820.66, -713.19, 113.32), -- Coords, if you're new; last number is heading
            heading = 267.58,
            title = 'Third Floor',
            description = '12 Room', -- Description For Notify Added By Yuvraj
            target = {
                width = 4,
                length = 4
            },
        },
    },
}



--! Old Code We Never Use
--[[
    --? Custom Cafe Elevator
    Custom_Cafe_Elevator = { -- Elevator name(Doesn't show it's just to name table)
        [1] = {
            coords = vec3(317.99, -915.52, 58.34), -- Coords, if you're new; last number is heading
            heading = 94.51, -- Heading of how will spawn on floor
            title = 'Cafe Roof Top', -- Title
            description = 'Roof Top Custom Cafe', -- Description For Notify Added By Yuvraj
            target = { -- Target length/width
                width = 4,
                length = 4
            },-- Example without group
        },
        [2] = {
            coords = vec3(288.39, -920.14, 29.47), -- Coords, if you're new; last number is heading
            heading = 250.37,
            title = 'Cafe Ground Floor',
            description = 'Ground Floor Custom Cafe', -- Description For Notify Added By Yuvraj
            target = {
                width = 4,
                length = 4
            } -- Example without group
        },
    },
]]