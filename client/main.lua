local C = SzCoreWorldConfig
local density = {}
local currentProfile = C.profile

local function clamp(v) v=tonumber(v) or 0.0;if v<0 then return 0.0 elseif v>1 then return 1.0 end;return v end
local function copyProfile(name)
    local p=C.profiles[name] or C.profiles.balanced
    density={parked=clamp(p.parked),vehicle=clamp(p.vehicle),randomvehicles=clamp(p.randomvehicles),peds=clamp(p.peds),scenario=clamp(p.scenario)}
    currentProfile=name
end
copyProfile(currentProfile)

local densityKeys={parked=true,vehicle=true,randomvehicles=true,peds=true,scenario=true}
local function setDensity(kind,value)
    if not densityKeys[kind] then return false end
    density[kind]=clamp(value);return true
end
local function setProfile(name)
    if not C.profiles[name] then return false end
    copyProfile(name);return true
end
exports('SetDensity',setDensity)
exports('GetDensity',function(kind) return kind and density[kind] or density end)
exports('SetProfile',setProfile)
exports('GetProfile',function() return currentProfile end)

local calmGroups={
    joaat('AMBIENT_GANG_HILLBILLY'),joaat('AMBIENT_GANG_BALLAS'),joaat('AMBIENT_GANG_MEXICAN'),joaat('AMBIENT_GANG_FAMILY'),
    joaat('AMBIENT_GANG_MARABUNTE'),joaat('AMBIENT_GANG_SALVA'),joaat('AMBIENT_GANG_LOST'),joaat('GANG_1'),joaat('GANG_2'),joaat('GANG_9'),joaat('GANG_10'),
    joaat('FIREMAN'),joaat('MEDIC'),joaat('COP'),joaat('PRISONER')
}
local function applyStaticWorldRules()
    if C.calmAI then
        for i=1,#calmGroups do
            SetRelationshipBetweenGroups(1,calmGroups[i],joaat('PLAYER'))
            SetRelationshipBetweenGroups(1,joaat('PLAYER'),calmGroups[i])
        end
    end
    if C.disableWanted then
        SetMaxWantedLevel(0)
        ClearPlayerWantedLevel(PlayerId())
        SetPoliceIgnorePlayer(PlayerId(),true)
        SetDispatchCopsForPlayer(PlayerId(),false)
    end
    if C.disableDispatch then for i=1,15 do EnableDispatchService(i,false) end end
    if C.disableRandomCops then SetCreateRandomCops(false);SetCreateRandomCopsNotOnScenarios(false);SetCreateRandomCopsOnScenarios(false) end
    for _,name in ipairs(C.suppressedVehicleModels or {}) do SetVehicleModelIsSuppressed(joaat(name),true) end
    for _,name in ipairs(C.disabledScenarioTypes or {}) do SetScenarioTypeEnabled(name,false) end
    for _,name in ipairs(C.disabledStaticEmitters or {}) do SetStaticEmitterEnabled(name,false) end
end
CreateThread(function() applyStaticWorldRules() end)

CreateThread(function()
    while true do
        SetParkedVehicleDensityMultiplierThisFrame(density.parked)
        SetVehicleDensityMultiplierThisFrame(density.vehicle)
        SetRandomVehicleDensityMultiplierThisFrame(density.randomvehicles)
        SetPedDensityMultiplierThisFrame(density.peds)
        SetScenarioPedDensityMultiplierThisFrame(density.scenario,density.scenario)
        SetGarbageTrucks(C.garbageTrucks==true)
        SetRandomBoats(C.randomBoats==true)
        SetRandomTrains(C.randomTrains==true)
        for _,component in ipairs(C.hiddenHudComponents or {}) do HideHudComponentThisFrame(component) end
        Wait(0)
    end
end)

CreateThread(function()
    while true do
        if C.disableWanted then
            local pid=PlayerId();if GetPlayerWantedLevel(pid)~=0 then ClearPlayerWantedLevel(pid) end
        end
        if C.removeWeaponDrops then
            RemoveAllPickupsOfType(joaat('PICKUP_WEAPON_PISTOL'));RemoveAllPickupsOfType(joaat('PICKUP_WEAPON_PUMPSHOTGUN'))
            RemoveAllPickupsOfType(joaat('PICKUP_WEAPON_SMG'));RemoveAllPickupsOfType(joaat('PICKUP_WEAPON_ASSAULTRIFLE'))
            RemoveAllPickupsOfType(joaat('PICKUP_AMMO_BULLET_MP'));RemoveAllPickupsOfType(joaat('PICKUP_AMMO_FIREWORK'))
        end
        if C.disableVehicleRadio then
            local ped=PlayerPedId();local veh=GetVehiclePedIsIn(ped,false)
            if veh~=0 then SetVehRadioStation(veh,'OFF');SetUserRadioControlEnabled(false) else SetUserRadioControlEnabled(true) end
        end
        Wait(2000)
    end
end)

RegisterNetEvent('szcore_world:setDensity',function(kind,value) setDensity(kind,value) end)
RegisterNetEvent('szcore_world:setProfile',function(name) setProfile(name) end)
