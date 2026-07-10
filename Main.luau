local Essentials = import("ulexicxd/Essentials")
local Players = fetch("Players")

Players.Chatted:Connect(function(player, message)
    print("[" .. player .. "]: " .. message)
end)