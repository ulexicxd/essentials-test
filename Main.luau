local Essentials = import("ulexicxd/Essentials")
local Players = fetch("Players")
local ui_lib = fetch("lib_beta_ui")
local React = ui_lib.React

-- props will contain Player (the player it's being rendered to)
function ui(props)
    local currentPlayer = props.Player

    React.useEffect(function()
        print("Render was successful. (Player: " .. currentPlayer .. ")")
    end, {})

    return React.createElement("Frame", {
        Size = UDim2.fromScale(0.5, 0.5)
    })
end

local ui_obj = ui_lib.new(Id, ui)
local rendered = false

Players.PlayerAdded:Connect(function(player)
    print(`UI being rendered to {player}.`)
    ui_obj:render(player)
    rendered = true
end)

wait(5)

if not rendered then
    rendered = true
    print(`UI being rendered to Ulexic (fallback).`)
    ui_obj:render("Ulexic")
end