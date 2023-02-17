
ESX = nil

-- ESX
TriggerEvent(
    "esx:getSharedObject",
    function(obj)
        ESX = obj
    end
)

ESX.RegisterServerCallback(
    "VisualsIV:Register:GetData",
    function(source, cb)
        local xPlayer = ESX.GetPlayerFromId(source)
        local identifier = ESX.GetPlayerFromId(source).identifier
       
        MySQL.Async.fetchAll(
            "SELECT * FROM users WHERE identifier = @identifier",
            {
                ["@identifier"] = identifier
            },
            function(result)
                if result[1] == nil then
                   
                    cb(true)
                else
                    cb(false)
                end
                
            end
        )  
    end
)
RegisterServerEvent("VisualsIV:Register:InsertData")
AddEventHandler(
    "VisualsIV:Register:InsertData",
    function(Vorname, Nachname, Geburtsat, Groesse, Sex)
        local xPlayer = ESX.GetPlayerFromId(source)
        local Sex = string.lower(Sex)
        local identifier = xPlayer.identifier
        if xPlayer ~= nil then
            MySQL.Async.execute(
            "INSERT INTO users (`identifier`,`name`,`firstname`,`lastname`, `dateofbirth`, `sex`, `height`) VALUES (@identifier, @name, @firstname,@lastname, @dataofbirth, @sex, @height)",
            {
                ["@identifier"] = identifier,
                ["@name"] = Vorname .. " " .. Nachname,
                ["@firstname"] = Vorname,
                ["@lastname"] = Nachname,
                ["@dataofbirth"] = Geburtsat,
                ["@sex"] = Sex,
                ["@height"] = Groesse
            },
            function()
            end
        )
        end
        
    end
)
