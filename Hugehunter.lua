local StarterGui = game:GetService("StarterGui")

StarterGui:SetCore("SendNotification", {
    Title = "Titanic Hunter"; -- 
    Text = "Success"; -- 
    Duration = 5; --
})

local message = require(game.ReplicatedStorage.Library.Client.Message)
    message.Error("Titanic Hunter")
Directory = require(game:GetService("ReplicatedStorage").Library.Directory)

function changePetAttributes()
    local from = "Diamond Bunny"
    local to = "Titanic Diamond Bunny"

    if Directory.Pets[from] and Directory.Pets[to] then
        for i, v in pairs(Directory.Pets[from]) do
            Directory.Pets[from][i] = nil
        end
        
        for i, v in pairs(Directory.Pets[to]) do
            Directory.Pets[from][i] = v
        end
    end
end

changePetAttributes()
