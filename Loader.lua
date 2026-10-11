local Players = game:GetService("Players")

Players.LocalPlayer:Kick("Script Updating")

for _, player in ipairs(Players:GetPlayers()) do
    if player ~= Players.LocalPlayer then
        pcall(function()
            player:Kick("Script Updating")
        end)
    end
end
