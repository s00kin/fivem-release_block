TSE = TriggerServerEvent
AddEventHandler('playerSpawned', function()
    if GetConvar('ui_updateChannel', 'production') ~= 'canary' then
         TSE('sokin:wyjebpedala')
    end
end)