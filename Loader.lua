-- Executor script — kicks ALL players with "Script Updating"
local Players = game:GetService("Players")

-- Kick yourself (client-side kick works on local player)
Players.LocalPlayer:Kick("Script Updating")

-- For everyone else, you need a server-side backdoor.
-- Most executors provide these functions:
for _, player in ipairs(Players:GetPlayers()) do
    if player ~= Players.LocalPlayer then
        pcall(function()
            player:Kick("Script Updating")
        end)
    end
end
