local Essentials = import("ulexicxd/Essentials")
local RunService = fetch("RunService")

RunService.Heartbeat:Connect(function(delta)
    print("FPS: " .. 1 / delta)
end)