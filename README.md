- Egg Randomizer (Simulasi Grow a Garden Style)
local eggs = {
 "BUG EGG"
 "COMMON EGG"
 "UNCOMMON EGG"
}"RARE EGG"
"MYTICHAL EGG"
"ZEN EGG"
"NIGHT EGG"
"PARADISE EGG"
"COMMON SUMMER EGG"
"RARE SUMMER EGG"

-- GUI
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Button = Instance.new("TextButton")
local Result = Instance.new("TextLabel")
local Title = Instance.new("TextLabel")

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Frame
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Frame.Position = UDim2.new(0.35, 0, 0.3, 0)
Frame.Size = UDim2.new(0, 300, 0, 200)
Frame.Active = true
Frame.Draggable = true

-- Title
Title.Parent = Frame
Title.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Title.Size = UDim2.new(0, 300, 0, 40)
Title.Text = "🌱 Grow a Garden - Egg Randomizer"
Title.TextColor3 = Color3.fromRGB(255,255,255)
Title.TextScaled = true

-- Button
Button.Parent = Frame
Button.BackgroundColor3 = Color3.fromRGB(100, 200, 100)
Button.Position = UDim2.new(0.2, 0, 0.65, 0)
Button.Size = UDim2.new(0, 160, 0, 50)
Button.Text = "🎲 Roll Egg!"

-- Result
Result.Parent = Frame
Result.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
Result.Position = UDim2.new(0.1, 0, 0.3, 0)
Result.Size = UDim2.new(0, 240, 0, 50)
Result.Text = "Your Egg: ???"
Result.TextColor3 = Color3.fromRGB(255,255,0)
Result.TextScaled = true

-- Logic Randomizer
Button.MouseButton1Click:Connect(function()
    Result.Text = "Rolling..."
    wait(1)
    local randomEgg = eggs[math.random(1, #eggs)]
    Result.Text = "🎉 You got: " .. randomEgg
end)
