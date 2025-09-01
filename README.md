local ScreenGui = Instance.new("ScreenGui")
local TextLabel = Instance.new("TextLabel")

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
TextLabel.Parent = ScreenGui
TextLabel.Text = "Welcome to Zyura Hub"
TextLabel.Size = UDim2.new(0,200,0,50)
TextLabel.Position = UDim2.new(0.5,-100,0.5,-25)
