-- Gui to Lua
-- Version: 3.4

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local ImageLabel = Instance.new("ImageLabel")

--Properties:

ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ImageLabel.Parent = ScreenGui
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.Size = UDim2.new(1, 0, 1, 0)
ImageLabel.Image = "rbxassetid://11165034725"
ImageLabel.ImageTransparency = 1.000

local plr = game.Players.LocalPlayer
local status = plr.Status
local pgui = plr.PlayerGui
local interf = pgui.Interface
local bt = interf.Battle
local main = bt.Main

local names = {
	"counter",
	"drop"
}

local vineboom = Instance.new("Sound")
vineboom.SoundId = "rbxassetid://8650377718"

local ss = game:GetService("SoundService")

game:GetService("UserInputService").InputBegan:Connect(function(i)
	if i.KeyCode == Enum.KeyCode.Z then
		ImageLabel.ImageTransparency = 0
		while ImageLabel.ImageTransparency < 1 do
			ImageLabel.ImageTransparency += task.wait()*2
		end

		ss:PlayLocalSound(ss)
	end
end)

status.AttackBegan.Changed:Connect(function()
	if status.AttackBegan.Value == true then
		for i,v in names do
			if status.CurrentMove.Value.Name:lower():find(v) then
				ImageLabel.ImageTransparency = 0
				while ImageLabel.ImageTransparency < 1 do
					ImageLabel.ImageTransparency += task.wait()*2
				end

				ss:PlayLocalSound(ss)
				break
			end
		end
	end
end)