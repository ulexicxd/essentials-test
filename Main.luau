local Essentials = import("ulexicxd/Essentials")
local RunService = fetch("RunService")

RunService.Heartbeat:Connect(function(delta: number)
    print("FPS: " .. 1 / delta)
end)