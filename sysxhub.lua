--[[
    ═══════════════════════════════════════════════
       SYSXHUB PREMIUM - BLOX FRUITS EDITION
       With Logo Integration
    ═══════════════════════════════════════════════
--]]

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Lighting = game:GetService("Lighting")
local LP = Players.LocalPlayer
local Camera = Workspace.CurrentCamera

--=================== LOGO CONFIG ===================--
local LOGO_URL = "https://cdn.phototourl.com/free/2026-09-22-8f7268e4-9310-4e5d-b9c5-d77f37ac5ced.png"

_G.SYSX = {
    AutoFarmLevel = false,
    AutoMastery = false,
    AutoChest = false,
    AutoMaterial = false,
    AutoElite = false,
    SecretQuest = false,
    Aimbot = false,
    AutoSkill = false,
    AutoRaid = false,
    AutoAwaken = false,
    AutoFactory = false,
    AutoCollectFruit = false,
    FruitFinder = false,
    PlayerESP = false,
    NPCESP = false,
    FruitESP = false,
    ChestESP = false,
    IslandESP = false,
    AntiAFK = true,
    FPSBoost = false,
    SelectedWeapon = "Melee",
    SelectedPlayer = nil,
    SelectedRaid = "Normal",
    Speed = 60,
    JumpPower = 120,
}

pcall(function()
    for _, c in pairs(getconnections(LP.Idled)) do c:Disconnect() end
end)

local function GetChar()
    return LP.Character or LP.CharacterAdded:Wait()
end

local function GetHRP()
    local c = LP.Character
    return c and c:FindFirstChild("HumanoidRootPart")
end

local function TeleportTo(cf)
    local hrp = GetHRP()
    if hrp then hrp.CFrame = cf end
end

local function EquipWeapon(toolName)
    local char = LP.Character
    local backpack = LP:FindFirstChild("Backpack")
    if not char or not backpack then return end
    for _, tool in pairs(backpack:GetChildren()) do
        if tool:IsA("Tool") and tool.Name:lower():find(toolName:lower()) then
            tool.Parent = char
            return true
        end
    end
end

local function GetEnemies()
    local list = {}
    local folder = Workspace:FindFirstChild("Enemies")
    if folder then
        for _, mob in pairs(folder:GetChildren()) do
            if mob:FindFirstChild("Humanoid") and mob.Humanoid.Health > 0 then
                table.insert(list, mob)
            end
        end
    end
    return list
end

local function GetFruits()
    local list = {}
    for _, v in pairs(Workspace:GetChildren()) do
        if v:IsA("Tool") and v:FindFirstChild("Handle") then
            if v.Name:lower():find("fruit") then
                table.insert(list, v)
            end
        end
    end
    return list
end

--=================== GUI ===================--
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "SYSXHUB_PREMIUM"
ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.ResetOnSpawn = false
ScreenGui.IgnoreGuiInset = true

local Toggle = Instance.new("TextButton")
Toggle.Size = UDim2.new(0, 130, 0, 130)
Toggle.Position = UDim2.new(0, 20, 0.5, -65)
Toggle.BackgroundColor3 = Color3.fromRGB(15, 15, 22)
Toggle.Text = ""
Toggle.AutoButtonColor = false
Toggle.Parent = ScreenGui

local TCorner = Instance.new("UICorner")
TCorner.CornerRadius = UDim.new(1, 0)
TCorner.Parent = Toggle

local TStroke = Instance.new("UIStroke")
TStroke.Color = Color3.fromRGB(200, 0, 0)
TStroke.Thickness = 3
TStroke.Parent = Toggle

local LogoImg = Instance.new("ImageLabel")
LogoImg.Size = UDim2.new(1, -10, 1, -10)
LogoImg.Position = UDim2.new(0, 5, 0, 5)
LogoImg.BackgroundTransparency = 1
LogoImg.Image = LOGO_URL
LogoImg.ScaleType = Enum.ScaleType.Fit
LogoImg.Parent = Toggle

local Main = Instance.new("Frame")
Main.Size = UDim2.new(0, 620, 0, 400)
Main.Position = UDim2.new(0.5, -310, 0.5, -200)
Main.BackgroundColor3 = Color3.fromRGB(15, 15, 22)
Main.BorderSizePixel = 0
Main.Active = true
Main.Draggable = true
Main.Parent = ScreenGui

local MCorner = Instance.new("UICorner")
MCorner.CornerRadius = UDim.new(0, 12)
MCorner.Parent = Main

local MStroke = Instance.new("UIStroke")
MStroke.Color = Color3.fromRGB(200, 0, 0)
MStroke.Thickness = 1.5
MStroke.Parent = Main

local Title = Instance.new("Frame")
Title.Size = UDim2.new(1, 0, 0, 50)
Title.BackgroundColor3 = Color3.fromRGB(180, 0, 0)
Title.BorderSizePixel = 0
Title.Parent = Main

local TitleCorner = Instance.new("UICorner")
TitleCorner.CornerRadius = UDim.new(0, 12)
TitleCorner.Parent = Title

local LogoHeader = Instance.new("ImageLabel")
LogoHeader.Size = UDim2.new(0, 42, 0, 42)
LogoHeader.Position = UDim2.new(0, 8, 0, 4)
LogoHeader.BackgroundTransparency = 1
LogoHeader.Image = LOGO_URL
LogoHeader.ScaleType = Enum.ScaleType.Fit
LogoHeader.Parent = Title

local TitleText = Instance.new("TextLabel")
TitleText.Size = UDim2.new(1, -60, 1, 0)
TitleText.Position = UDim2.new(0, 55, 0, 0)
TitleText.BackgroundTransparency = 1
TitleText.Text = "SYSXHUB PREMIUM | BLOX FRUITS"
TitleText.TextColor3 = Color3.fromRGB(255, 255, 255)
TitleText.Font = Enum.Font.GothamBold
TitleText.TextSize = 16
TitleText.TextXAlignment = Enum.TextXAlignment.Left
TitleText.Parent = Title

--=================== SPLASH SCREEN ===================--
local Splash = Instance.new("Frame")
Splash.Size = UDim2.new(0, 300, 0, 300)
Splash.Position = UDim2.new(0.5, -150, 0.5, -150)
Splash.BackgroundColor3 = Color3.fromRGB(15, 15, 22)
Splash.BorderSizePixel = 0
Splash.Parent = ScreenGui

local SCorner = Instance.new("UICorner")
SCorner.CornerRadius = UDim.new(0, 20)
SCorner.Parent = Splash

local SStroke = Instance.new("UIStroke")
SStroke.Color = Color3.fromRGB(200, 0, 0)
SStroke.Thickness = 3
SStroke.Parent = Splash

local SLogo = Instance.new("ImageLabel")
SLogo.Size = UDim2.new(0, 200, 0, 200)
SLogo.Position = UDim2.new(0.5, -100, 0, 20)
SLogo.BackgroundTransparency = 1
SLogo.Image = LOGO_URL
SLogo.ScaleType = Enum.ScaleType.Fit
SLogo.Parent = Splash

local SLoading = Instance.new("TextLabel")
SLoading.Size = UDim2.new(1, 0, 0, 40)
SLoading.Position = UDim2.new(0, 0, 1, -50)
SLoading.BackgroundTransparency = 1
SLoading.Text = "Loading..."
SLoading.TextColor3 = Color3.fromRGB(255, 255, 255)
SLoading.Font = Enum.Font.GothamBold
SLoading.TextSize = 18
SLoading.Parent = Splash

spawn(function()
    for i = 1, 100 do
        task.wait(0.02)
        SLoading.Text = "Loading... " .. i .. "%"
    end
    task.wait(0.3)
    Splash:Destroy()
end)

--=================== TAB SYSTEM ===================--
local TabBar = Instance.new("Frame")
TabBar.Size = UDim2.new(1, -20, 0, 32)
TabBar.Position = UDim2.new(0, 10, 0, 56)
TabBar.BackgroundTransparency = 1
TabBar.Parent = Main

local TabList = Instance.new("UIListLayout")
TabList.FillDirection = Enum.FillDirection.Horizontal
TabList.Padding = UDim.new(0, 5)
TabList.Parent = TabBar

local Content = Instance.new("Frame")
Content.Size = UDim2.new(1, -20, 1, -100)
Content.Position = UDim2.new(0, 10, 0, 94)
Content.BackgroundColor3 = Color3.fromRGB(20, 20, 30)
Content.BorderSizePixel = 0
Content.Parent = Main

local CCorner = Instance.new("UICorner")
CCorner.CornerRadius = UDim.new(0, 8)
CCorner.Parent = Content

local Pages = {}

local function CreateTab(name)
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(0, 95, 1, 0)
    btn.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
    btn.Text = name
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.Font = Enum.Font.Gotham
    btn.TextSize = 12
    btn.Parent = TabBar
    local c = Instance.new("UICorner")
    c.CornerRadius = UDim.new(0, 6)
    c.Parent = btn

    local page = Instance.new("ScrollingFrame")
    page.Size = UDim2.new(1, -10, 1, -10)
    page.Position = UDim2.new(0, 5, 0, 5)
    page.BackgroundTransparency = 1
    page.BorderSizePixel = 0
    page.ScrollBarThickness = 4
    page.CanvasSize = UDim2.new(0, 0, 0, 900)
    page.Visible = false
    page.Parent = Content

    local layout = Instance.new("UIListLayout")
    layout.Padding = UDim.new(0, 5)
    layout.Parent = page

    Pages[name] = page

    btn.MouseButton1Click:Connect(function()
        for _, p in pairs(Pages) do p.Visible = false end
        page.Visible = true
    end)

    return page
end

local function CreateBtn(parent, text, callback)
    local b = Instance.new("TextButton")
    b.Size = UDim2.new(1, -10, 0, 32)
    b.BackgroundColor3 = Color3.fromRGB(35, 35, 50)
    b.Text = text
    b.TextColor3 = Color3.fromRGB(255, 255, 255)
    b.Font = Enum.Font.Gotham
    b.TextSize = 13
    b.Parent = parent
    local c = Instance.new("UICorner")
    c.CornerRadius = UDim.new(0, 6)
    c.Parent = b
    b.MouseButton1Click:Connect(callback)
    return b
end

local function CreateToggle(parent, text, key)
    local b = Instance.new("TextButton")
    b.Size = UDim2.new(1, -10, 0, 32)
    b.BackgroundColor3 = Color3.fromRGB(35, 35, 50)
    b.Text = text .. " [OFF]"
    b.TextColor3 = Color3.fromRGB(255, 255, 255)
    b.Font = Enum.Font.Gotham
    b.TextSize = 13
    b.Parent = parent
    local c = Instance.new("UICorner")
    c.CornerRadius = UDim.new(0, 6)
    c.Parent = b
    b.MouseButton1Click:Connect(function()
        _G.SYSX[key] = not _G.SYSX[key]
        b.Text = text .. (_G.SYSX[key] and " [ON]" or " [OFF]")
        b.BackgroundColor3 = _G.SYSX[key] and Color3.fromRGB(0, 150, 0) or Color3.fromRGB(35, 35, 50)
    end)
    return b
end

local MainTab = CreateTab("MAIN")
local PVPTab = CreateTab("PVP")
local QuestTab = CreateTab("QUEST")
local FruitTab = CreateTab("FRUIT")
local VisualTab = CreateTab("VISUAL")
local TravelTab = CreateTab("TRAVEL")
local MiscTab = CreateTab("MISC")

--=================== MAIN TAB ===================--
CreateBtn(MainTab, "🗡️ Select Weapon: Melee", function() _G.SYSX.SelectedWeapon = "Melee" end)
CreateBtn(MainTab, "⚔️ Select Weapon: Sword", function() _G.SYSX.SelectedWeapon = "Sword" end)
CreateBtn(MainTab, "🍎 Select Weapon: Fruit", function() _G.SYSX.SelectedWeapon = "Fruit" end)
CreateBtn(MainTab, "🔫 Select Weapon: Gun", function() _G.SYSX.SelectedWeapon = "Gun" end)
CreateToggle(MainTab, "🌾 Auto Farm Level", "AutoFarmLevel")
CreateToggle(MainTab, "📚 Auto Mastery", "AutoMastery")
CreateToggle(MainTab, "📦 Auto Chest", "AutoChest")
CreateToggle(MainTab, "🪨 Auto Material", "AutoMaterial")
CreateToggle(MainTab, "👑 Auto Elite Hunter", "AutoElite")
CreateToggle(MainTab, "🗝️ Secret Quest", "SecretQuest")

--=================== PVP TAB ===================--
CreateBtn(PVPTab, "🎯 Player Selector", function()
    local plrs = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= LP then table.insert(plrs, p.Name) end
    end
    if #plrs == 0 then return end
    local idx = 1
    for i, v in ipairs(plrs) do
        if v == _G.SYSX.SelectedPlayer then idx = i + 1 end
    end
    if idx > #plrs then idx = 1 end
    _G.SYSX.SelectedPlayer = plrs[idx]
end)
CreateToggle(PVPTab, "🎯 Aimbot", "Aimbot")
CreateBtn(PVPTab, "👁️ Spectate Player", function()
    if _G.SYSX.SelectedPlayer then
        local t = Players:FindFirstChild(_G.SYSX.SelectedPlayer)
        if t and t.Character then Camera.CameraSubject = t.Character:FindFirstChildOfClass("Humanoid") end
    end
end)
CreateToggle(PVPTab, "⚡ Auto Skill", "AutoSkill")
CreateBtn(PVPTab, "🌀 Teleport Player", function()
    if _G.SYSX.SelectedPlayer then
        local t = Players:FindFirstChild(_G.SYSX.SelectedPlayer)
        if t and t.Character and t.Character:FindFirstChild("HumanoidRootPart") then
            TeleportTo(t.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 3))
        end
    end
end)

--=================== QUEST TAB ===================--
local quests = {
    "Auto Saber","Auto Pole","Auto Shark Saw","Auto Trident","Auto Warden's Sword",
    "Auto Longsword","Auto Gravity Blade","Auto Jitte","Auto Dragon Trident",
    "Auto Twin Hooks","Auto Canvander","Auto Buddy Sword","Auto Spikey Trident",
    "Auto Tushita","Auto Hallow Scythe","Auto Dark Dagger","Auto Yama","Auto CDK",
    "Auto TTK","Auto Rengoku","Auto Midnight Blade","Auto Shark Anchor",
    "Auto Fox Lamp","Auto Pole 2nd Form","Auto Bazooka","Auto Serpent Bow",
    "Auto Acidum Rifle","Auto Soul Guitar","Auto Kabucha","Auto Bizarre Rifle"
}
for _, q in ipairs(quests) do
    CreateToggle(QuestTab, "📜 " .. q, q)
end

--=================== FRUIT TAB ===================--
CreateToggle(FruitTab, "🍎 Auto Collect Fruit", "AutoCollectFruit")
CreateToggle(FruitTab, "🔍 Fruit Finder", "FruitFinder")
CreateToggle(FruitTab, "⚔️ Auto Raid", "AutoRaid")
CreateBtn(FruitTab, "🎲 Select Raid: Normal", function() _G.SYSX.SelectedRaid = "Normal" end)
CreateBtn(FruitTab, "🎲 Select Raid: Flame", function() _G.SYSX.SelectedRaid = "Flame" end)
CreateBtn(FruitTab, "🎲 Select Raid: Ice", function() _G.SYSX.SelectedRaid = "Ice" end)
CreateBtn(FruitTab, "🎲 Select Raid: Quake", function() _G.SYSX.SelectedRaid = "Quake" end)
CreateBtn(FruitTab, "🎲 Select Raid: Light", function() _G.SYSX.SelectedRaid = "Light" end)
CreateBtn(FruitTab, "🎲 Select Raid: Dark", function() _G.SYSX.SelectedRaid = "Dark" end)
CreateToggle(FruitTab, "💫 Auto Awaken", "AutoAwaken")
CreateToggle(FruitTab, "🏭 Auto Factory", "AutoFactory")

--=================== VISUAL TAB ===================--
CreateToggle(VisualTab, "👤 Player ESP", "PlayerESP")
CreateToggle(VisualTab, "🤖 NPC ESP", "NPCESP")
CreateToggle(VisualTab, "🍎 Fruit ESP", "FruitESP")
CreateToggle(VisualTab, "📦 Chest ESP", "ChestESP")
CreateToggle(VisualTab, "🏝️ Island ESP", "IslandESP")

--=================== TRAVEL TAB ===================--
local islands = {
    "Windmill","Marine Ford","Middle Town","Jungle","Pirate Village","Desert",
    "Frozen Village","Colosseum","Prison","Magma Village","Underwater City",
    "Fountain City","Skylands","Floating Turtle","Haunted Castle","Hydra Island",
    "Great Tree","Castle on the Sea","Port Town","Cursed Ship","Ice Castle",
    "Forgotten Island","Twin Towers","Mansion"
}
for _, i in ipairs(islands) do
    CreateBtn(TravelTab, "🏝️ " .. i, function()
        local found = Workspace:FindFirstChild(i, true)
        if found and found:IsA("BasePart") then
            TeleportTo(found.CFrame * CFrame.new(0, 5, 0))
        end
    end)
end
CreateBtn(TravelTab, "🌊 Sea 1", function() end)
CreateBtn(TravelTab, "🌊 Sea 2", function() end)
CreateBtn(TravelTab, "🌊 Sea 3", function() end)
CreateBtn(TravelTab, "🔄 Server Hop", function()
    local ok, res = pcall(function()
        return HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/"..game.PlaceId.."/servers/Public?limit=100"))
    end)
    if ok and res and res.data then
        for _, s in pairs(res.data) do
            if s.playing < s.maxPlayers and s.id ~= game.JobId then
                TeleportService:TeleportToPlaceInstance(game.PlaceId, s.id, LP)
                break
            end
        end
    end
end)
CreateBtn(TravelTab, "🔁 Rejoin", function()
    TeleportService:Teleport(game.PlaceId, LP)
end)

--=================== MISC TAB ===================--
CreateToggle(MiscTab, "🚫 Anti AFK", "AntiAFK")
CreateToggle(MiscTab, "🚀 FPS Boost", "FPSBoost")
CreateBtn(MiscTab, "📊 Server Info", function()
    print("Players:", #Players:GetPlayers(), "/", Players.MaxPlayers)
    print("Job ID:", game.JobId)
    print("Place ID:", game.PlaceId)
end)
CreateBtn(MiscTab, "📋 Copy Job ID", function()
    if setclipboard then setclipboard(game.JobId) end
end)
CreateBtn(MiscTab, "🎁 Redeem Codes", function()
    local codes = {"SUB2GAMERROBOT_EXP1","Starcodeheo","KITTGAMING","1BILLIONVISITS","FUDDSMUSTACHE"}
    local rs = ReplicatedStorage:FindFirstChild("Remotes")
    local redeem = rs and rs:FindFirstChild("Redeem")
    if redeem then
        for _, code in ipairs(codes) do pcall(function() redeem:InvokeServer(code) end) end
    end
end)
CreateBtn(MiscTab, "⌨️ UI Keybind (RightShift)", function() end)
CreateBtn(MiscTab, "❌ Destroy UI", function() ScreenGui:Destroy() end)

--=================== TOGGLE UI ===================--
local uiOpen = true
Toggle.MouseButton1Click:Connect(function()
    uiOpen = not uiOpen
    Main.Visible = uiOpen
end)

UserInputService.InputBegan:Connect(function(input, gp)
    if gp then return end
    if input.KeyCode == Enum.KeyCode.RightShift then
        uiOpen = not uiOpen
        Main.Visible = uiOpen
    end
end)

--=================== LOOPS ===================--
spawn(function()
    while task.wait(0.15) do
        if _G.SYSX.AutoFarmLevel then
            pcall(function()
                for _, mob in ipairs(GetEnemies()) do
                    if mob:FindFirstChild("HumanoidRootPart") then
                        repeat
                            RunService.Heartbeat:Wait()
                            if not _G.SYSX.AutoFarmLevel then break end
                            TeleportTo(mob.HumanoidRootPart.CFrame * CFrame.new(0, 25, 0))
                            EquipWeapon(_G.SYSX.SelectedWeapon)
                            local tool = GetChar():FindFirstChildOfClass("Tool")
                            if tool then tool:Activate() end
                        until mob.Humanoid.Health <= 0 or not _G.SYSX.AutoFarmLevel
                    end
                end
            end)
        end
    end
end)

spawn(function()
    while task.wait(0.2) do
        if _G.SYSX.AutoMastery then
            pcall(function()
                EquipWeapon(_G.SYSX.SelectedWeapon)
                for _, mob in ipairs(GetEnemies()) do
                    if mob:FindFirstChild("HumanoidRootPart") then
                        TeleportTo(mob.HumanoidRootPart.CFrame * CFrame.new(0, 25, 0))
                        local tool = GetChar():FindFirstChildOfClass("Tool")
                        if tool then tool:Activate() end
                        break
                    end
                end
            end)
        end
    end
end)

spawn(function()
    while task.wait(0.5) do
        if _G.SYSX.AutoChest then
            pcall(function()
                for _, v in pairs(Workspace:GetDescendants()) do
                    if v.Name:lower():find("chest") and v:IsA("BasePart") then
                        TeleportTo(v.CFrame * CFrame.new(0, 3, 0))
                        task.wait(0.2)
                    end
                end
            end)
        end
    end
end)

spawn(function()
    while task.wait(0.3) do
        if _G.SYSX.AutoMaterial then
            pcall(function()
                for _, v in pairs(Workspace:GetDescendants()) do
                    if v:IsA("BasePart") and (v.Name:lower():find("ore") or v.Name:lower():find("material")) then
                        TeleportTo(v.CFrame * CFrame.new(0, 3, 0))
                        task.wait(0.1)
                    end
                end
            end)
        end
    end
end)

spawn(function()
    RunService.RenderStepped:Connect(function()
        if _G.SYSX.Aimbot and _G.SYSX.SelectedPlayer then
            local t = Players:FindFirstChild(_G.SYSX.SelectedPlayer)
            if t and t.Character and t.Character:FindFirstChild("Head") then
                Camera.CFrame = CFrame.new(Camera.CFrame.Position, t.Character.Head.Position)
            end
        end
    end)
end)

spawn(function()
    while task.wait(0.1) do
        if _G.SYSX.AutoSkill then
            pcall(function()
                local char = LP.Character
                if not char then return end
                for _, tool in pairs(char:GetChildren()) do
                    if tool:IsA("Tool") then
                        pcall(function() tool:Activate() end)
                    end
                end
            end)
        end
    end
end)

spawn(function()
    while task.wait(0.5) do
        if _G.SYSX.AutoCollectFruit then
            pcall(function()
                for _, f in ipairs(GetFruits()) do
                    if f:FindFirstChild("Handle") then
                        TeleportTo(f.Handle.CFrame * CFrame.new(0, 2, 0))
                        task.wait(0.3)
                    end
                end
            end)
        end
    end
end)

spawn(function()
    while task.wait(1) do
        if _G.SYSX.AutoFactory then
            pcall(function()
                local f = Workspace:FindFirstChild("Factory", true)
                if f and f:IsA("BasePart") then
                    TeleportTo(f.CFrame * CFrame.new(0, 5, 0))
                end
            end)
        end
    end
end)

spawn(function()
    while task.wait(1) do
        pcall(function()
            for _, p in pairs(Players:GetPlayers()) do
                if p ~= LP and p.Character then
                    local head = p.Character:FindFirstChild("Head")
                    if head then
                        local old = head:FindFirstChild("SYSX_ESP")
                        if _G.SYSX.PlayerESP and not old then
                            local b = Instance.new("BillboardGui", head)
                            b.Name = "SYSX_ESP"
                            b.Size = UDim2.new(0, 120, 0, 30)
                            b.AlwaysOnTop = true
                            local t = Instance.new("TextLabel", b)
                            t.Size = UDim2.new(1, 0, 1, 0)
                            t.BackgroundTransparency = 1
                            t.Text = p.Name
                            t.TextColor3 = Color3.fromRGB(255, 50, 50)
                            t.TextStrokeTransparency = 0
                            t.Font = Enum.Font.GothamBold
                            t.TextSize = 14
                        elseif not _G.SYSX.PlayerESP and old then
                            old:Destroy()
                        end
                    end
                end
            end
        end)
    end
end)

spawn(function()
    while task.wait(1) do
        pcall(function()
            for _, m in ipairs(GetEnemies()) do
                local head = m:FindFirstChild("Head")
                if head then
                    local old = head:FindFirstChild("SYSX_NPCESP")
                    if _G.SYSX.NPCESP and not old then
                        local b = Instance.new("BillboardGui", head)
                        b.Name = "SYSX_NPCESP"
                        b.Size = UDim2.new(0, 100, 0, 30)
                        b.AlwaysOnTop = true
                        local t = Instance.new("TextLabel", b)
                        t.Size = UDim2.new(1, 0, 1, 0)
                        t.BackgroundTransparency = 1
                        t.Text = m.Name .. " | " .. math.floor(m.Humanoid.Health)
                        t.TextColor3 = Color3.fromRGB(255, 200, 0)
                        t.TextStrokeTransparency = 0
                        t.Font = Enum.Font.GothamBold
                        t.TextSize = 12
                    elseif not _G.SYSX.NPCESP and old then
                        old:Destroy()
                    end
                end
            end
        end)
    end
end)

spawn(function()
    while task.wait(1) do
        pcall(function()
            for _, f in ipairs(GetFruits()) do
                local h = f:FindFirstChild("Handle")
                if h then
                    local old = h:FindFirstChild("SYSX_FRUITESP")
                    if _G.SYSX.FruitESP and not old then
                        local b = Instance.new("BillboardGui", h)
                        b.Name = "SYSX_FRUITESP"
                        b.Size = UDim2.new(0, 120, 0, 30)
                        b.AlwaysOnTop = true
                        local t = Instance.new("TextLabel", b)
                        t.Size = UDim2.new(1, 0, 1, 0)
                        t.BackgroundTransparency = 1
                        t.Text = "🍎 " .. f.Name
                        t.TextColor3 = Color3.fromRGB(100, 255, 100)
                        t.TextStrokeTransparency = 0
                        t.Font = Enum.Font.GothamBold
                        t.TextSize = 14
                    elseif not _G.SYSX.FruitESP and old then
                        old:Destroy()
                    end
                end
            end
        end)
    end
end)

spawn(function()
    while task.wait(1) do
        if _G.SYSX.FPSBoost then
            pcall(function()
                Lighting.GlobalShadows = false
                Lighting.FogEnd = 9e9
                settings().Rendering.QualityLevel = 1
                for _, v in pairs(Workspace:GetDescendants()) do
                    if v:IsA("ParticleEmitter") or v:IsA("Trail") or v:IsA("Smoke") then
                        v.Enabled = false
                    end
                end
            end)
        end
    end
end)

--=================== INIT ===================--
task.wait(0.5)
print("🍇 SYSXHUB PREMIUM - BLOX FRUITS LOADED (With Logo)")
MainTab.Visible = true
