SzCoreWorldConfig = {
    profile = 'balanced',
    profiles = {
        low =      { parked = 0.35, vehicle = 0.35, randomvehicles = 0.30, peds = 0.40, scenario = 0.35 },
        balanced = { parked = 0.80, vehicle = 0.80, randomvehicles = 0.80, peds = 0.80, scenario = 0.80 },
        high =     { parked = 1.00, vehicle = 0.95, randomvehicles = 0.90, peds = 1.00, scenario = 0.95 },
    },
    calmAI = true,
    disableWanted = true,
    disableDispatch = true,
    disableRandomCops = true,
    randomBoats = true,
    randomTrains = true,
    garbageTrucks = true,
    removeWeaponDrops = true,
    disableVehicleRadio = false,
    hiddenHudComponents = { 1, 2, 3, 4, 6, 7, 8, 9, 13, 17, 20 },
    suppressedVehicleModels = {
        'police','police2','police3','police4','policeb','policet','sheriff','sheriff2','ambulance','firetruk','fbi','fbi2','riot','pranger'
    },
    disabledScenarioTypes = {
        'WORLD_VEHICLE_POLICE_BIKE','WORLD_VEHICLE_POLICE_CAR','WORLD_VEHICLE_POLICE_NEXT_TO_CAR',
        'WORLD_VEHICLE_AMBULANCE','WORLD_VEHICLE_FIRE_TRUCK'
    },
    disabledStaticEmitters = {
        'LOS_SANTOS_VANILLA_UNICORN_01_STAGE','LOS_SANTOS_VANILLA_UNICORN_02_MAIN_ROOM','LOS_SANTOS_VANILLA_UNICORN_03_BACK_ROOM'
    },
    blacklistedModels = {},
}
