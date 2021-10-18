-- This is just an educational purposes.
local ability1 = "Fury" -- Put any ability of whatever character are you using
game:GetService("UserInputService").InputBegan:Connect(function(i,connect) -- Some keybinds code
    if i.KeyCode == Enum.KeyCode.X and not connect then -- Change the keybinds If you want (Change the X). It's really simple https://developer.roblox.com/en-us/api-reference/enum/KeyCode
        local path = game:GetService("Players").LocalPlayer.Characters -- Path
            for i,v in pairs(path:GetDescendants()) do -- Checks all the descendants (I did this because I wanted to get the player in the workspace)
                if v:IsA("RemoteEvent") then -- Checks If there's an remotevent
                v:FireServer(ability1) -- Fires the remotevent
                end
        end
    end
end)

-- however there's some abilities that aren't matching the abilities name on the game, thus if you put some ability and notice that it's not working. 
-- The name of it is very different
