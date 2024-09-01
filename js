local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/atoyayaya/wangzhan/main/xiba')))()

local Window = OrionLib:CH({Name = "安•健身模拟器脚本", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local ScreenGui = Instance.new("ScreenGui")
local frame = Instance.new("Frame")
local LBLG = Instance.new("ScreenGui", getParent)
local LBL = Instance.new("TextLabel", getParent)
local player = game.Players.LocalPlayer

LBLG.Name = "LBLG"
LBLG.Parent = game.CoreGui
LBLG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
LBLG.Enabled = true
LBL.Name = "LBL"
LBL.Parent = LBLG
LBL.BackgroundColor3 = Color3.new(1, 1, 1)
LBL.BackgroundTransparency = 1
LBL.BorderColor3 = Color3.new(0, 0, 0)
LBL.Position = UDim2.new(0.75,0,0.010,0)
LBL.Size = UDim2.new(0, 133, 0, 30)
LBL.Font = Enum.Font.GothamSemibold
LBL.Text = "TextLabel"
LBL.TextColor3 = Color3.new(1, 1, 1)
LBL.TextScaled = true
LBL.TextSize = 25
LBL.TextWrapped = true
LBL.Visible = true
LBL.Draggable = true

local FpsLabel = LBL
local Heartbeat = game:GetService("RunService").Heartbeat
local LastIteration, Start
local FrameUpdateTable = { }

local function HeartbeatUpdate()
	LastIteration = tick()
	for Index = #FrameUpdateTable, 1, -1 do
		FrameUpdateTable[Index + 1] = (FrameUpdateTable[Index] >= LastIteration - 1) and FrameUpdateTable[Index] or nil
	end
	FrameUpdateTable[1] = LastIteration
	local CurrentFPS = (tick() - Start >= 1 and #FrameUpdateTable) or (#FrameUpdateTable / (tick() - Start))
	CurrentFPS = CurrentFPS - CurrentFPS % 1
	FpsLabel.Text = ("🇨🇳北京时间:"..os.date("%H").."时"..os.date("%M").."分"..os.date("%S")).."秒"
end
Start = tick()
Heartbeat:Connect(HeartbeatUpdate)

local ScreenGui = Instance.new("ScreenGui")
local FpsLabel = Instance.new("TextLabel")

ScreenGui.Name = "FPSGui"
ScreenGui.ResetOnSpawn = false
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

FpsLabel.Name = "FPSLabel"
FpsLabel.Size = UDim2.new(0, 100, 0, 50)
FpsLabel.Position = UDim2.new(0.75,20,0.075,20)
FpsLabel.BackgroundTransparency = 1
FpsLabel.Font = Enum.Font.SourceSansBold
FpsLabel.Text = "FPS: 0"
FpsLabel.TextSize = 25
FpsLabel.TextColor3 = Color3.fromRGB(0, 0, 255) 
FpsLabel.Parent = ScreenGui
FpsLabel.Draggable = true

local frameCounter = 0

function updateFpsLabel()
    frameCounter = frameCounter + 1
    if frameCounter >= 20 then -- 20帧
        local fps = math.floor(1 / game:GetService("RunService").RenderStepped:Wait())
        FpsLabel.Text = "FPS: " .. fps
        frameCounter = 0
    end
end

game:GetService("RunService").RenderStepped:Connect(updateFpsLabel)

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local Tab = Window:CjLb({
        Name = "公告•销毁UI",
        Icon = "rbxassetid://7733960981",
        PremiumOnly = false
})

Tab:Lab("脚本永久免费，请勿相信倒卖，有时候部分按钮或勾选框可能按不到，滑动一下即可")

Tab:TianJiaButton({
        Name = "复制作者QQ号🐧",
        Callback = function()
        setclipboard("2134702438")
          end    
})

Tab:TianJiaButton({
        Name = "销毁ui",
        Callback = function()
        OrionLib:Destroy()
          end    
})

_G.jsmn = true

function jsmn()
	while _G.jsmn == true do
	wait()
game:GetService("ReplicatedStorage").Events.Lift:FireServer()

	end
end

local Tab = Window:CjLb({
	Name = "⚡自动锻炼⚡️",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:TianJiaToggle({
	Name = "自动哑铃",
	Default = false,
	Callback = function(Value)
	_G.jsmn = Value
		jsmn()		
	end    
})

_G.jsse = true

function jsse()
	while _G.jsse == true do
	wait()
game:GetService("ReplicatedStorage").Events.Sell:FireServer()

	end
end

Tab:TianJiaToggle({
	Name = "自动出售",
	Default = false,
	Callback = function(Value)
	_G.jsse = Value
		jsse()		
	end    
})

local Tab = Window:CjLb({
	Name = "💵自动购买💵",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

_G.jsmnw = true

function jsmnw()
	while _G.jsmnw == true do
	wait()
local args = {
    [1] = "Weights"
}

game:GetService("ReplicatedStorage").Events:FindFirstChild("Buy All"):FireServer(unpack(args))

	end
end

Tab:TianJiaToggle({
	Name = "自动购买重量",
	Default = false,
	Callback = function(Value)
	_G.jsmnw = Value
		jsmnw()		
	end    
})

_G.jsmnb = true

function jsmnb()
	while _G.jsmnb == true do
	wait()
local args = {
    [1] = "Bodies"
}

game:GetService("ReplicatedStorage").Events:FindFirstChild("Buy All"):FireServer(unpack(args))

	end
end

Tab:TianJiaToggle({
	Name = "自动购买身体",
	Default = false,
	Callback = function(Value)
	_G.jsmnb = Value
		jsmnb()		
	end    
})

_G.jsmnd = true

function jsmnd()
	while _G.jsmnd == true do
	wait()
local args = {
    [1] = "Tiers"
}

game:GetService("ReplicatedStorage").Events:FindFirstChild("Buy All"):FireServer(unpack(args))

	end
end

Tab:TianJiaToggle({
	Name = "自动购买等级",
	Default = false,
	Callback = function(Value)
	_G.jsmnd = Value
		jsmnd()		
	end    
})

_G.jsmnm = true

function jsmnm()
	while _G.jsmnm == true do
	wait()
local args = {
    [1] = "Morphs"
}

game:GetService("ReplicatedStorage").Events:FindFirstChild("Buy All"):FireServer(unpack(args))

	end
end

Tab:TianJiaToggle({
	Name = "自动购买形态",
	Default = false,
	Callback = function(Value)
	_G.jsmnm = Value
		jsmnm()		
	end    
})

_G.jsmna = true

function jsmna()
	while _G.jsmna == true do
	wait()
local args = {
    [1] = "Auras"
}

game:GetService("ReplicatedStorage").Events:FindFirstChild("Buy All"):FireServer(unpack(args))

	end
end

Tab:TianJiaToggle({
	Name = "自动购买光环",
	Default = false,
	Callback = function(Value)
	_G.jsmna = Value
		jsmna()		
	end    
})

_G.jsmnbo = true

function jsmnbo()
	while _G.jsmnbo == true do
	wait()
local args = {
    [1] = workspace.Boss.Model.Boss
}

game:GetService("ReplicatedStorage").Events.Damage:FireServer(unpack(args))

	end
end

local Tab = Window:CjLb({
	Name = "💀自动boss💀",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:TianJiaToggle({
	Name = "自动打小boss（需靠近boss）",
	Default = false,
	Callback = function(Value)
	_G.jsmnbo = Value
		jsmnbo()		
	end    
})

_G.ppp = true

function ppp()
	while _G.ppp == true do
	wait()
local args = {
    [1] = workspace:FindFirstChild("Mega Boss").Model.Boss2
}

game:GetService("ReplicatedStorage").Events.Damage:FireServer(unpack(args))

	end
end

Tab:TianJiaToggle({
	Name = "自动打大boss（需靠近boss）",
	Default = false,
	Callback = function(Value)
	_G.ppp = Value
		ppp()		
	end    
})