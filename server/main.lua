local blacklist={}
for _,v in ipairs(SzCoreWorldConfig.blacklistedModels or {}) do blacklist[type(v)=='number' and v or joaat(v)]=true end
AddEventHandler('entityCreating',function(entity)
    if next(blacklist)==nil then return end
    local model=GetEntityModel(entity)
    if blacklist[model] then CancelEvent() end
end)
exports('IsModelBlacklisted',function(model) return blacklist[type(model)=='number' and model or joaat(model)]==true end)
