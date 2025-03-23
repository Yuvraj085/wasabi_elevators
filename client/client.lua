-----------------For support, scripts, and more----------------
--------------- https://discord.gg/wasabiscripts  -------------
---------------------------------------------------------------

ESX = nil
QBCore = nil
local framework, PlayerData, target
local QBCore = exports['qb-core']:GetCoreObject()

CreateThread(function()
    if framework then return end

    framework = GetResourceState('es_extended') == 'started' and 'esx' or GetResourceState('qb-core') == 'started' and 'qb' or nil

    if not framework then return end

    if framework == 'esx' then
        ESX = exports.es_extended:getSharedObject()
        PlayerData = ESX.GetPlayerData()
        while not PlayerData or not PlayerData.job do
            Wait(100)
            PlayerData = ESX.GetPlayerData()
        end

        RegisterNetEvent('esx:setJob',  function(job)
            PlayerData.job = job
        end)
    elseif framework == 'qb' then
        QBCore = exports['qb-core']:GetCoreObject()
        PlayerData = QBCore.Functions.GetPlayerData()

        RegisterNetEvent('QBCore:Client:OnJobUpdate', function(job)
            PlayerData.job = job
        end)
        RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
            PlayerData = QBCore.Functions.GetPlayerData()
        end)

        RegisterNetEvent('QBCore:Client:OnPlayerUnload', function()
            PlayerData = {}
        end)
    end
end)

CreateThread(function()
    while not framework do
        Wait(500)
    end
    if framework == 'esx' then
        target = 'qtarget'
    else
        target = 'qb-target'
    end
end)

AddEventHandler('wasabi_elevator:goToFloor', function(data)
    local elevator, floor = data.elevator, data.floor
    local coords = Config.Elevators[elevator][floor].coords
    local heading = Config.Elevators[elevator][floor].heading
    local ped = cache.ped
	DoScreenFadeOut(1500)
	while not IsScreenFadedOut() do
		Wait(10)
	end
	RequestCollisionAtCoord(coords.x, coords.y, coords.z)
	while not HasCollisionLoadedAroundEntity(ped) do
		Wait()
	end
	SetEntityCoords(ped, coords.x, coords.y, coords.z, false, false, false, false)
	SetEntityHeading(ped, heading and heading or 0.0)
	Wait(3000)
	DoScreenFadeIn(1500)
    -- Variables For Notify
    -- local floorTitle = Config.Elevators[data.elevator][data.floor].title
    --? destination description from Config.Elevators
    local Elevatordescription = Config.Elevators[data.elevator][data.floor].description
    --? Add notification with the destination description
    QBCore.Functions.Notify("Arrived at " .. Elevatordescription, "success", 2500)
end)

AddEventHandler('wasabi_elevator:noAccess', function()
    -- Disable  ox_lib Notify By Yuvraj
    -- lib.notify({
    --     title = 'No Access',
    --     description = 'You do not have access to this floor',
    --     type = 'error'
    -- })
    QBCore.Functions.Notify("You Are Not Authorized To Access This Floor", "error", 2500)
end)

AddEventHandler('wasabi_elevator:openMenu', function(data)
    local elevator = data.elevator
    local floor = data.floor
    local elevatorData = Config.Elevators[elevator]
    local Options = {}
    -- Get the player's gender
    local Gender = QBCore.Functions.GetPlayerData().charinfo.gender == 0 and 'Male' or 'Female'
    local Charidentity = Gender == 'Male' and 'Sir' or 'Mam'
    for k,v in pairs(elevatorData) do
        if k == floor then
            table.insert(Options, {
                title = v.title..' (Current)',
                description = v.description,
                event = '',
                --args = { elevator = elevator, floor = k }
            })
        elseif v.groups then
            local found
            for i=1, #v.groups do
                if PlayerData.job.name == v.groups[i] then
                    found = true
                end
            end
            if found then
                table.insert(Options, {
                    title = v.title,
                    description = v.description,
                    event = 'wasabi_elevator:goToFloor',
                    args = { elevator = elevator, floor = k }
                })
            else
                table.insert(Options, {
                    title = v.title,
                    description = v.description,
                    event = 'wasabi_elevator:noAccess'
                })
            end
        elseif not v.groups then
            table.insert(Options, {
                title = v.title,
                description = v.description,
                event = 'wasabi_elevator:goToFloor',
                args = { elevator = elevator, floor = k }
            })
        else
            table.insert(Options, {
                title = v.title,
                description = v.description,
                event = 'wasabi_elevator:noAccess'
            })
        end
    end

    -- QBCore.Functions.Notify("Welcome Sir Please Select Your Destination", "info", 1500)
    QBCore.Functions.Notify("Welcome " .. Charidentity .. " Please Select Your Destination", "info", 1500)
    lib.registerContext({
		id = 'elevator_menu',
		title = 'Select Your Destination Floor',
		options = Options
	})

	lib.showContext('elevator_menu')
end)

CreateThread(function()
    for k,v in pairs(Config.Elevators) do
        for a,b in pairs(Config.Elevators[k]) do
            if b.groups then
                exports[target]:AddBoxZone(k..':'..a, b.coords, b.target.width, b.target.length, {
                    name = k..':'..a,
                    heading = b.target.heading,
                    debugPoly = false,
                    minZ = b.coords.z - 1.5,
                    maxZ = b.coords.z + 1.5
                },
                {
                    options = {
                        {
                            event = 'wasabi_elevator:openMenu',
                            icon = 'fas fa-elevator',
                            label = 'Use Elevator',
                            elevator = k,
                            floor = a
                        },
                    },
                    distance = 1.5
                })
            else
                exports[target]:AddBoxZone(k..':'..a, b.coords, b.target.width, b.target.length, {
                    name = k..':'..a,
                    heading = b.target.heading,
                    debugPoly = false,
                    minZ = b.coords.z - 1.5,
                    maxZ = b.coords.z + 1.5
                },
                {
                    options = {
                        {
                            event = 'wasabi_elevator:openMenu',
                            icon = 'fas fa-elevator',
                            label = 'Use Elevator',
                            elevator = k,
                            floor = a
                        },
                    },
                    distance = 1.5
                })
            end
        end
    end
end)