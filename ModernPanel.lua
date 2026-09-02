local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local runService = game:GetService("RunService")
local userInputService = game:GetService("UserInputService")
local camera = workspace.CurrentCamera

if playerGui:FindFirstChild("ModernPanelGui") then
	playerGui.ModernPanelGui:Destroy()
end

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "ModernPanelGui"
screenGui.ResetOnSpawn = false
screenGui.Parent = playerGui

-- ظ†ط§ظپط°ط© ط¥ط¯ط®ط§ظ„ ط§ظ„ظƒظˆط¯ (Key System Window)
local keyFrame = Instance.new("Frame")
keyFrame.Size = UDim2.new(0, 360, 0, 200)
keyFrame.Position = UDim2.new(0.5, -180, 0.5, -100)
keyFrame.BackgroundColor3 = Color3.fromRGB(35, 20, 50)
keyFrame.BackgroundTransparency = 0.15
keyFrame.BorderSizePixel = 0
keyFrame.Parent = screenGui

local keyCorner = Instance.new("UICorner")
keyCorner.CornerRadius = UDim.new(0, 10)
keyCorner.Parent = keyFrame

local keyTitle = Instance.new("TextLabel")
keyTitle.Size = UDim2.new(1, 0, 0, 50)
keyTitle.BackgroundTransparency = 1
keyTitle.TextColor3 = Color3.fromRGB(220, 220, 225)
keyTitle.TextSize = 18
keyTitle.Font = Enum.Font.SourceSansBold
keyTitle.Text = "ط§ظ„ط±ط¬ط§ط، ط¥ط¯ط®ط§ظ„ ظƒظˆط¯ ط§ظ„طھظپط¹ظٹظ„"
keyTitle.Parent = keyFrame

local keyBox = Instance.new("TextBox")
keyBox.Size = UDim2.new(0.85, 0, 0, 45)
keyBox.Position = UDim2.new(0.075, 0, 0, 60)
keyBox.BackgroundColor3 = Color3.fromRGB(45, 25, 65)
keyBox.TextColor3 = Color3.fromRGB(255, 255, 255)
keyBox.PlaceholderColor3 = Color3.fromRGB(150, 140, 170)
keyBox.PlaceholderText = "ط§ظƒطھط¨ ط§ظ„ظƒظˆط¯ ظ‡ظ†ط§..."
keyBox.TextSize = 16
keyBox.Font = Enum.Font.SourceSansBold
keyBox.Text = ""
keyBox.Parent = keyFrame

local keyBoxCorner = Instance.new("UICorner")
keyBoxCorner.CornerRadius = UDim.new(0, 8)
keyBoxCorner.Parent = keyBox

local submitBtn = Instance.new("TextButton")
submitBtn.Size = UDim2.new(0.85, 0, 0, 40)
submitBtn.Position = UDim2.new(0.075, 0, 0, 125)
submitBtn.BackgroundColor3 = Color3.fromRGB(60, 35, 85)
submitBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
submitBtn.TextSize = 16
submitBtn.Font = Enum.Font.SourceSansBold
submitBtn.Text = "طھط­ظ‚ظ‚"
submitBtn.Parent = keyFrame

local submitCorner = Instance.new("UICorner")
submitCorner.CornerRadius = UDim.new(0, 8)
submitCorner.Parent = submitBtn

-- ط§ظ„ظ„ظˆط­ط© ط§ظ„ط±ط¦ظٹط³ظٹط© (Panel) ظ…ط®ظپظٹط© ط¨ط§ظ„ط¨ط¯ط§ظٹط© ظ„ط­ظٹظ† ظˆط¶ط¹ ط§ظ„ظƒظˆط¯ ط§ظ„طµط­ظٹطّه
local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 620, 0, 380)
mainFrame.Position = UDim2.new(0.5, -310, 0.5, -190)
mainFrame.BackgroundColor3 = Color3.fromRGB(35, 20, 50)
mainFrame.BackgroundTransparency = 0.25
mainFrame.BorderSizePixel = 0
mainFrame.Visible = false
mainFrame.Parent = screenGui

local mainCorner = Instance.new("UICorner")
mainCorner.CornerRadius = UDim.new(0, 10)
mainCorner.Parent = mainFrame

-- ط´ط±ظٹط· ط§ظ„ط¹ظ†ط§ظˆظٹظ† ط§ظ„ط¹ظ„ظˆظٹ (ظ„طھط­ط±ظٹظƒ ط§ظ„ظ„ظˆط­ط©)
local topBar = Instance.new("Frame")
topBar.Size = UDim2.new(1, 0, 0, 42)
topBar.BackgroundColor3 = Color3.fromRGB(45, 25, 65)
topBar.BackgroundTransparency = 0.2
topBar.BorderSizePixel = 0
topBar.Parent = mainFrame

local topCorner = Instance.new("UICorner")
topCorner.CornerRadius = UDim.new(0, 10)
topCorner.Parent = topBar

local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(1, -100, 1, 0)
titleLabel.Position = UDim2.new(0, 16, 0, 0)
titleLabel.BackgroundTransparency = 1
titleLabel.TextColor3 = Color3.fromRGB(220, 220, 225)
titleLabel.TextSize = 16
titleLabel.Font = Enum.Font.SourceSansBold
titleLabel.TextXAlignment = Enum.TextXAlignment.Left
titleLabel.Text = "BK9 Panel"
titleLabel.Parent = topBar

-- ط²ط± ط§ظ„ط¥ظƒط³ (X) ظ„ط¥ط؛ظ„ط§ظ‚ ط§ظ„ط³ظƒط±ط¨طھ ط¨ط§ظ„ظƒط§ظ…ظ„ ظˆظ…ط³ط­ ظƒظ„ ط´ظٹط،
local closeBtn = Instance.new("TextButton")
closeBtn.Size = UDim2.new(0, 32, 0, 32)
closeBtn.Position = UDim2.new(1, -38, 0.5, -16)
closeBtn.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
closeBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
closeBtn.TextSize = 16
closeBtn.Font = Enum.Font.SourceSansBold
closeBtn.Text = "X"
closeBtn.Parent = topBar

local closeCorner = Instance.new("UICorner")
closeCorner.CornerRadius = UDim.new(0, 6)
closeCorner.Parent = closeBtn

-- ط²ط± ط§ظ„ظ†ط§ظ‚طµ (-) ظ„طھطµط؛ظٹط± ط§ظ„ظ„ظˆط­ط©
local minimizeBtn = Instance.new("TextButton")
minimizeBtn.Size = UDim2.new(0, 32, 0, 32)
minimizeBtn.Position = UDim2.new(1, -76, 0.5, -16)
minimizeBtn.BackgroundColor3 = Color3.fromRGB(80, 50, 110)
minimizeBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
minimizeBtn.TextSize = 16
minimizeBtn.Font = Enum.Font.SourceSansBold
minimizeBtn.Text = "-"
minimizeBtn.Parent = topBar

local minCorner = Instance.new("UICorner")
minCorner.CornerRadius = UDim.new(0, 6)
minCorner.Parent = minimizeBtn

-- ط²ط± ط§ظ„طھظ†ظٹظ† ط§ظ„ط¹ط§ط¦ظ… ط§ظ„طµط؛ظٹط± (ظٹط¸ظ‡ط± ط¹ظ†ط¯ ط§ظ„ط¶ط؛ط· ط¹ظ„ظ‰ ط²ط± ط§ظ„ظ†ط§ظ‚طµ)
local dragonFloatBtn = Instance.new("ImageButton")
dragonFloatBtn.Size = UDim2.new(0, 50, 0, 50)
dragonFloatBtn.Position = UDim2.new(0.5, -25, 0.1, 0)
dragonFloatBtn.BackgroundColor3 = Color3.fromRGB(35, 20, 50)
dragonFloatBtn.BackgroundTransparency = 0.2
dragonFloatBtn.Image = "rbxassetid://10723414902"
dragonFloatBtn.ScaleType = Enum.ScaleType.Fit
dragonFloatBtn.Visible = false
dragonFloatBtn.Parent = screenGui

local dragonCorner = Instance.new("UICorner")
dragonCorner.CornerRadius = UDim.new(0, 10)
dragonCorner.Parent = dragonFloatBtn

-- ط§ظ„ظ‚ط§ط¦ظ…ط© ط§ظ„ط¬ط§ظ†ط¨ظٹط© ط§ظ„ظٹط³ط±ظ‰ (Sidebar)
local sidebar = Instance.new("Frame")
sidebar.Size = UDim2.new(0, 160, 1, -42)
sidebar.Position = UDim2.new(0, 0, 0, 42)
sidebar.BackgroundColor3 = Color3.fromRGB(28, 15, 40)
sidebar.BackgroundTransparency = 0.2
sidebar.BorderSizePixel = 0
sidebar.Parent = mainFrame

-- 1. ط²ط± "ط§ظٹظ…" ط§ظ„ط£ظˆظ„ ظپظٹ ط§ظ„ظ‚ط§ط¦ظ…ط©
local aimTabBtn = Instance.new("TextButton")
aimTabBtn.Size = UDim2.new(1, -20, 0, 42)
aimTabBtn.Position = UDim2.new(0, 10, 0, 15)
aimTabBtn.BackgroundColor3 = Color3.fromRGB(60, 35, 85)
aimTabBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
aimTabBtn.TextSize = 15
aimTabBtn.Font = Enum.Font.SourceSansBold
aimTabBtn.Text = "ًںژ¯ ط§ظٹظ…"
aimTabBtn.Parent = sidebar