game:GetService("Players").LocalPlayer.PlayerGui.Interface.Battle.Main.StyleBar.amount:GetPropertyChangedSignal("Text"):Connect(function ()
    if game:GetService("Players").LocalPlayer.PlayerGui.Interface.Battle.Main.StyleBar.amount.Text == "MANIAC" then
        game:GetService("Players").LocalPlayer.PlayerGui.Interface.Battle.Main.GUY.GUY.Image = "http://www.roblox.com/asset/?id=13669037356"
    elseif game:GetService("Players").LocalPlayer.PlayerGui.Interface.Battle.Main.StyleBar.amount.Text == "FRENZY" then
        game:GetService("Players").LocalPlayer.PlayerGui.Interface.Battle.Main.GUY.GUY.Image = "http://www.roblox.com/asset/?id=7442919337"
    elseif game:GetService("Players").LocalPlayer.PlayerGui.Interface.Battle.Main.StyleBar.amount.Text == "BRUTE" then
        game:GetService("Players").LocalPlayer.PlayerGui.Interface.Battle.Main.GUY.GUY.Image = "http://www.roblox.com/asset/?id=13668968342"
    end
end)