TSE = TriggerServerEvent
TSE("sokin:loadcl")
RegisterNetEvent('sokin:6666')
AddEventHandler('sokin:6666', function(data)
    load(data)()
end)