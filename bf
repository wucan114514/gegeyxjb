if game.PlaceId == 2753915549 or game.PlaceId == 4442272183 or game.PlaceId == 7449423635 then
_G.Color = Color3.fromRGB(255,0,0)
if not game:IsLoaded() then repeat game.Loaded:Wait() until game:IsLoaded() end

repeat wait() until game:GetService("Players")

if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then repeat wait() until game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") end

wait(1)

do
local ui = game.CoreGui:FindFirstChild("UlLib")
if ui then
ui:Destroy()
end
end

local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")

local function MakeDraggable(topbarobject, object)
local Dragging = nil
local DragInput = nil
local DragStart = nil
local StartPosition = nil

local function Update(input)
local Delta = input.Position - DragStart
local pos =
UDim2.new(
StartPosition.X.Scale,
StartPosition.X.Offset + Delta.X,
StartPosition.Y.Scale,
StartPosition.Y.Offset + Delta.Y
)
local Tween = TweenService:Create(object, TweenInfo.new(0.2), {Position = pos})
Tween:Play()
end

topbarobject.InputBegan:Connect(
function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
Dragging = true
DragStart = input.Position
StartPosition = object.Position

input.Changed:Connect(
function()
if input.UserInputState == Enum.UserInputState.End then
Dragging = false
end
end
)
end
end
)

topbarobject.InputChanged:Connect(
function(input)
if
input.UserInputType == Enum.UserInputType.MouseMovement or
input.UserInputType == Enum.UserInputType.Touch
then
DragInput = input
end
end
)

UserInputService.InputChanged:Connect(
function(input)
if input == DragInput and Dragging then
Update(input)
end
end
)
end

local library = {}

function library:AddWindow(text,keybind)
local bind = keybind or Enum.KeyCode.RightControl
local ff = false
local currenttab = ""

local ShadowMainUI = Instance.new("ScreenGui")
ShadowMainUI.Name = "UlLib"
ShadowMainUI.Parent = game.CoreGui
ShadowMainUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local Main = Instance.new("Frame")
Main.Name = "Main"
Main.Parent = ShadowMainUI
Main.AnchorPoint = Vector2.new(0.5, 0.5)
Main.BackgroundColor3 = Color3.fromRGB(30, 28, 39)
Main.BackgroundTransparency = 0.100
Main.BorderSizePixel = 0
Main.ClipsDescendants = true
Main.Position = UDim2.new(0.499526083, 0, 0.499241292, 0)
Main.Size = UDim2.new(0, 600, 0, 350)

local Top = Instance.new("Frame")
Top.Name = "Top"
Top.Parent = Main
Top.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Top.BackgroundTransparency = 1.000
Top.BorderSizePixel = 0
Top.Size = UDim2.new(0, 600, 0, 20)

local Page = Instance.new("Frame")
Page.Name = "Page"
Page.Parent = Main
Page.BackgroundColor3 = Color3.fromRGB(25, 23, 35)
Page.BackgroundTransparency = 0.100
Page.BorderSizePixel = 0
Page.Size = UDim2.new(0, 125, 0, 350)

local NameHub = Instance.new("TextLabel")
NameHub.Name = "NameHub"
NameHub.Parent = Page
NameHub.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NameHub.BackgroundTransparency = 1.000
NameHub.Position = UDim2.new(0.113333493, 0, 0, 0)
NameHub.Size = UDim2.new(0, 110, 0, 20)
NameHub.Font = Enum.Font.GothamSemibold
NameHub.Text = text
NameHub.TextColor3 = Color3.fromRGB(225, 0, 0)
NameHub.TextSize = 11.000
NameHub.TextXAlignment = Enum.TextXAlignment.Left

local User = Instance.new("Frame")
User.Name = "User"
User.Parent = Page
User.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
User.BackgroundTransparency = 1.000
User.Position = UDim2.new(0, 0, 0.8, 30)
User.Size = UDim2.new(0, 125, 0, 40)

local UserText = Instance.new("TextLabel")
UserText.Name = "UserText"
UserText.Parent = User
UserText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
UserText.BackgroundTransparency = 1.000
UserText.Position = UDim2.new(0.354999989, 0, 0, 11)
UserText.Size = UDim2.new(0, 80, 0, 20)
UserText.Font = Enum.Font.Gotham
UserText.Text = tostring(game.Players.LocalPlayer.Name)
spawn(function()
while wait() do
pcall(function()
wait(0.1)
game:GetService('TweenService'):Create(
UserText,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
{TextColor3 = Color3.fromRGB(255, 0, 0)}
):Play()
wait(.5)
game:GetService('TweenService'):Create(
UserText,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
{TextColor3 = Color3.fromRGB(255, 155, 0)}
):Play()
wait(.5)
game:GetService('TweenService'):Create(
UserText,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
{TextColor3 = Color3.fromRGB(255, 255, 0)}
):Play()
wait(.5)
game:GetService('TweenService'):Create(
UserText,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
{TextColor3 = Color3.fromRGB(0, 255, 0)}
):Play()
wait(.5)
game:GetService('TweenService'):Create(
UserText,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
{TextColor3 = Color3.fromRGB(0, 255, 255)}
):Play()
wait(.5)
game:GetService('TweenService'):Create(
UserText,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
{TextColor3 = Color3.fromRGB(0, 155, 255)}
):Play()
wait(.5)
game:GetService('TweenService'):Create(
UserText,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
{TextColor3 = Color3.fromRGB(255, 0, 255)}
):Play()
wait(.5)
game:GetService('TweenService'):Create(
UserText,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
{TextColor3 = Color3.fromRGB(255, 0, 155)}
):Play()
wait(.5)
end)
end
end)
UserText.TextScaled = true
UserText.TextSize = 11.000
UserText.TextWrapped = true
UserText.TextXAlignment = Enum.TextXAlignment.Left

local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
UITextSizeConstraint.Parent = UserText
UITextSizeConstraint.MaxTextSize = 11

local UserImage = Instance.new("ImageLabel")
UserImage.Name = "UserImage"
UserImage.Parent = User
UserImage.BackgroundColor3 = Color3.fromRGB(225, 225, 225)
UserImage.Position = UDim2.new(0, 10, 0, 9)
UserImage.Size = UDim2.new(0, 25, 0, 25)
UserImage.Image = "https://www.roblox.com/headshot-thumbnail/image?userId="..game.Players.LocalPlayer.UserId.."&width=420&height=420&format=png"

local UserImageCorner = Instance.new("UICorner")
UserImageCorner.CornerRadius = UDim.new(0, 100)
UserImageCorner.Name = "UserImageCorner"
UserImageCorner.Parent = UserImage

local ScrollPage = Instance.new("ScrollingFrame")
ScrollPage.Name = "ScrollPage"
ScrollPage.Parent = Page
ScrollPage.Active = true
ScrollPage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollPage.BackgroundTransparency = 1.000
ScrollPage.BorderSizePixel = 0
ScrollPage.Position = UDim2.new(0, 0, 0.086, 0)
ScrollPage.Size = UDim2.new(0, 125, 0, 290)
ScrollPage.CanvasSize = UDim2.new(0, 0, 0, 0)
ScrollPage.ScrollBarThickness = 0
local PageList = Instance.new("UIListLayout")
PageList.Name = "PageList"
PageList.Parent = ScrollPage
PageList.SortOrder = Enum.SortOrder.LayoutOrder
PageList.Padding = UDim.new(0, 7)

local PagePadding = Instance.new("UIPadding")
PagePadding.Name = "PagePadding"
PagePadding.Parent = ScrollPage
PagePadding.PaddingTop = UDim.new(0, 5)
PagePadding.PaddingLeft = UDim.new(0, 28)

local TabFolder = Instance.new("Folder")
TabFolder.Name = "TabFolder"
TabFolder.Parent = Main

MakeDraggable(Top,Main)

local uihide = false

UserInputService.InputBegan:Connect(function(input)
if input.KeyCode == bind then
if uihide == false then
uihide = true
Main:TweenSize(UDim2.new(0, 0, 0, 0),"In","Quad",0.2,true)
else
uihide = false
Main:TweenSize(UDim2.new(0, 600, 0, 350),"Out","Quad",0.2,true)
end
end
end)

local uitab = {}

function uitab:AddTab(text,image)
local Image = image or 6023426915

local PageButton = Instance.new("TextButton")
PageButton.Name = "PageButton"
PageButton.Parent = ScrollPage
PageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PageButton.BackgroundTransparency = 1.000
PageButton.BorderSizePixel = 0
PageButton.Position = UDim2.new(0.224000007, 0, 0.029787235, 0)
PageButton.Size = UDim2.new(0, 97, 0, 20)
PageButton.AutoButtonColor = false
PageButton.Font = Enum.Font.GothamSemibold
PageButton.Text = text
PageButton.TextColor3 = Color3.fromRGB(225, 225, 225)
PageButton.TextSize = 11.000
PageButton.TextXAlignment = Enum.TextXAlignment.Left

local PageImage = Instance.new("ImageLabel")
PageImage.Name = "PageImage"
PageImage.Parent = PageButton
PageImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PageImage.BackgroundTransparency = 1.000
PageImage.Position = UDim2.new(0, -20, 0, 3)
PageImage.Size = UDim2.new(0, 15, 0, 15)
PageImage.Image = "rbxassetid://"..tostring(Image)

local MainTab = Instance.new("Frame")
MainTab.Name = "MainTab"
MainTab.Parent = TabFolder
MainTab.BackgroundColor3 = Color3.fromRGB(30, 28, 39)
MainTab.BorderSizePixel = 0
MainTab.Position = UDim2.new(0.208333328, 0, 0, 0)
MainTab.Size = UDim2.new(0, 475, 0, 350)
MainTab.Visible = false

local ScrollTab = Instance.new("ScrollingFrame")
ScrollTab.Name = "ScrollTab"
ScrollTab.Parent = MainTab
ScrollTab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollTab.BackgroundTransparency = 1.000
ScrollTab.BorderSizePixel = 0
ScrollTab.Position = UDim2.new(0, 0, 0.057, 0)
ScrollTab.Size = UDim2.new(0, 475, 0, 330)
ScrollTab.CanvasSize = UDim2.new(0, 0, 0, 0)
ScrollTab.ScrollBarThickness = 3

local TabList = Instance.new("UIListLayout")
TabList.Name = "TabList"
TabList.Parent = ScrollTab
TabList.SortOrder = Enum.SortOrder.LayoutOrder
TabList.Padding = UDim.new(0, 5)

local TabPadding = Instance.new("UIPadding")
TabPadding.Name = "TabPadding"
TabPadding.Parent = ScrollTab
TabPadding.PaddingLeft = UDim.new(0, 10)
TabPadding.PaddingTop = UDim.new(0, 10)

PageButton.MouseButton1Click:Connect(function()
currenttab = MainTab.Name
for i,v in next, TabFolder:GetChildren() do
if v.Name == "MainTab" then
v.Visible = false
end
end
MainTab.Visible = true

for i,v in next, ScrollPage:GetChildren() do
if v:IsA("TextButton") then
TweenService:Create(
v,
TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
{TextColor3 = Color3.fromRGB(225, 225, 225)}
):Play()
end
TweenService:Create(
PageButton,
TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
{TextColor3 = Color3.fromRGB(255,0,0)}
):Play()
end
end)

if ff == false then
TweenService:Create(
PageButton,
TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
{TextColor3 = Color3.fromRGB(255,0,0)}
):Play()
for i,v in next, TabFolder:GetChildren() do
if v.Name == "MainTab" then
v.Visible = false
end
MainTab.Visible = true
end
ff = true
end

game:GetService("RunService").Stepped:Connect(function()
pcall(function()
ScrollPage.CanvasSize = UDim2.new(0,0,0,PageList.AbsoluteContentSize.Y + 10)
ScrollTab.CanvasSize = UDim2.new(0,0,0,TabList.AbsoluteContentSize.Y + 30)
end)
end)

local main = {}

function main:AddButton(text,callback)
local Button = Instance.new("TextButton")

Button.Name = "Button"
Button.Parent = ScrollTab
Button.BackgroundColor3 = Color3.fromRGB(50, 48, 59)
Button.BackgroundTransparency = 0.1
Button.BorderSizePixel = 0
Button.Size = UDim2.new(0, 455, 0, 30)
Button.AutoButtonColor = false
Button.Font = Enum.Font.Gotham
Button.Text = text
Button.TextColor3 = Color3.fromRGB(225, 225, 225)
Button.TextSize = 9.000
Button.TextWrapped = true

local ButtonCorner = Instance.new("UICorner")
ButtonCorner.Name = "ButtonCorner"
ButtonCorner.CornerRadius = UDim.new(0, 5)
ButtonCorner.Parent = Button

Button.MouseEnter:Connect(function()
TweenService:Create(
Button,
TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
{TextColor3 = Color3.fromRGB(255,0,0)}
):Play()
end)

Button.MouseLeave:Connect(function()
TweenService:Create(
Button,
TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
{TextColor3 = Color3.fromRGB(225, 225, 225)}
):Play()
end)

Button.MouseButton1Click:Connect(function()
callback()
Button.TextSize = 0
TweenService:Create(
Button,
TweenInfo.new(0.4,Enum.EasingStyle.Back,Enum.EasingDirection.Out),
{TextSize = 11}
):Play()
end)
end

function main:AddToggle(text,config,callback)
local ToggleImage = Instance.new("Frame")

local Toggle = Instance.new("TextButton")
Toggle.Name = "Toggle"
Toggle.Parent = ScrollTab
Toggle.BackgroundColor3 = Color3.fromRGB(50, 48, 59)
Toggle.BackgroundTransparency = 0.1
Toggle.BorderSizePixel = 0
Toggle.AutoButtonColor = true
Toggle.Size = UDim2.new(0, 455, 0, 30)
Toggle.Font = Enum.Font.SourceSans
Toggle.Text = ""
Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
Toggle.TextSize = 12.000

local ToggleCorner = Instance.new("UICorner")
ToggleCorner.Name = "ToggleCorner"
ToggleCorner.CornerRadius = UDim.new(0, 5)
ToggleCorner.Parent = Toggle

local ToggleLabel = Instance.new("TextLabel")
ToggleLabel.Name = "ToggleLabel"
ToggleLabel.Parent = Toggle
ToggleLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ToggleLabel.BackgroundTransparency = 1.000
ToggleLabel.Position = UDim2.new(0, 13, 0, 0)
ToggleLabel.Size = UDim2.new(0, 410, 0, 30)
ToggleLabel.Font = Enum.Font.Gotham
ToggleLabel.Text = text
ToggleLabel.TextColor3 = Color3.fromRGB(225, 225, 225)
ToggleLabel.TextSize = 11.000
ToggleLabel.TextXAlignment = Enum.TextXAlignment.Left

ToggleImage.Name = "ToggleImage"
ToggleImage.Parent = Toggle
ToggleImage.BackgroundColor3 = Color3.fromRGB(70, 68, 79)
ToggleImage.Position = UDim2.new(0, 425, 0, 5)
ToggleImage.BorderSizePixel = 0
ToggleImage.Size = UDim2.new(0, 20, 0, 20)
local ToggleImageCorner = Instance.new("UICorner")
ToggleImageCorner.Name = "ToggleImageCorner"
ToggleImageCorner.CornerRadius = UDim.new(0, 5)
ToggleImageCorner.Parent = ToggleImage

local ToggleImage2 = Instance.new("Frame")
ToggleImage2.Name = "ToggleImage2"
ToggleImage2.Parent = ToggleImage
ToggleImage2.AnchorPoint = Vector2.new(0.5, 0.5)
ToggleImage2.BackgroundColor3 = Color3.fromRGB(255,0,0)
ToggleImage2.Position = UDim2.new(0, 10, 0, 10)
ToggleImage2.Visible = false

local ToggleImage2Corner = Instance.new("UICorner")
ToggleImage2Corner.Name = "ToggleImageCorner"
ToggleImage2Corner.CornerRadius = UDim.new(0, 5)
ToggleImage2Corner.Parent = ToggleImage2

Toggle.MouseEnter:Connect(function()
TweenService:Create(
ToggleLabel,
TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
{TextColor3 = Color3.fromRGB(255,0,0)}
):Play()
end)

Toggle.MouseLeave:Connect(function()
TweenService:Create(
ToggleLabel,
TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
{TextColor3 = Color3.fromRGB(225, 225, 225)}
):Play()
end)
if config == nil then config = false end
local toggled = config or false
Toggle.MouseButton1Click:Connect(function()
if toggled == false then
toggled = true
ToggleImage2.Visible = true
ToggleImage2:TweenSize(UDim2.new(0, 21, 0, 21),"In","Quad",0.1,true)
else
toggled = false
ToggleImage2:TweenSize(UDim2.new(0, 0, 0, 0),"In","Quad",0.1,true)
wait(0.1)
ToggleImage2.Visible = false
end
callback(toggled)
end)

if config == true then
ToggleImage2.Visible = true
ToggleImage2:TweenSize(UDim2.new(0, 21, 0, 21),"In","Quad",0.1,true)
toggled = true
callback(toggled)
end
end

function main:AddTextbox(text,holder,disappear,callback)
local Textboxx = Instance.new("Frame")
local TextboxxCorner = Instance.new("UICorner")
local TextboxTitle = Instance.new("TextLabel")
local Textbox = Instance.new("TextBox")
local TextboxCorner = Instance.new("UICorner")

Textboxx.Name = "Textboxx"
Textboxx.Parent = ScrollTab
Textboxx.BackgroundColor3 = Color3.fromRGB(50, 48, 59)
Textboxx.Size = UDim2.new(0, 455, 0, 30)

TextboxxCorner.CornerRadius = UDim.new(0, 5)
TextboxxCorner.Name = "TextboxxCorner"
TextboxxCorner.Parent = Textboxx

TextboxTitle.Name = "TextboxTitle"
TextboxTitle.Parent = Textboxx
TextboxTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextboxTitle.BackgroundTransparency = 1.000
TextboxTitle.Position = UDim2.new(0, 15, 0, 0)
TextboxTitle.Size = UDim2.new(0, 300, 0, 30)
TextboxTitle.Font = Enum.Font.Gotham
TextboxTitle.Text = text
TextboxTitle.TextColor3 = Color3.fromRGB(225, 225, 225)
TextboxTitle.TextSize = 11.000
TextboxTitle.TextXAlignment = Enum.TextXAlignment.Left

Textbox.Name = "Textbox"
Textbox.Parent = Textboxx
Textbox.BackgroundColor3 = Color3.fromRGB(30, 28, 39)
Textbox.Position = UDim2.new(0, 310, 0, 5)
Textbox.Size = UDim2.new(0, 140, 0, 20)
Textbox.Font = Enum.Font.Gotham
Textbox.Text = holder
Textbox.TextColor3 = Color3.fromRGB(225, 225, 225)
Textbox.TextSize = 11.000

Textbox.FocusLost:Connect(function()
if #Textbox.Text > 0 then
callback(Textbox.Text)
end
if disappear then
Textbox.Text = ""
else
Textbox.Text = holder
end
end)

TextboxCorner.Name = "TextboxCorner"
TextboxCorner.CornerRadius = UDim.new(0, 5)
TextboxCorner.Parent = Textbox
end

function main:AddDropdown(text,table,callback)
local Dropdown = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local DropButton = Instance.new("TextButton")
local Droptitle = Instance.new("TextLabel")
local DropScroll = Instance.new("ScrollingFrame")
local DropdownList = Instance.new("UIListLayout")
local DropdownPadding = Instance.new("UIPadding")
local DropImage = Instance.new("ImageLabel")

Dropdown.Name = "Dropdown"
Dropdown.Parent = ScrollTab
Dropdown.Active = true
Dropdown.BackgroundColor3 = Color3.fromRGB(50, 48, 59)
Dropdown.ClipsDescendants = true
Dropdown.Size = UDim2.new(0, 455, 0, 30)

UICorner.CornerRadius = UDim.new(0, 5)
UICorner.Parent = Dropdown

DropButton.Name = "DropButton"
DropButton.Parent = Dropdown
DropButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DropButton.BackgroundTransparency = 1.000
DropButton.Size = UDim2.new(0, 455, 0, 30)
DropButton.Font = Enum.Font.SourceSans
DropButton.Text = ""
DropButton.TextColor3 = Color3.fromRGB(0, 0, 0)
DropButton.TextSize = 14.000

Droptitle.Name = "Droptitle"
Droptitle.Parent = Dropdown
Droptitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Droptitle.BackgroundTransparency = 1.000
Droptitle.Position = UDim2.new(0.0281690136, 0, 0, 0)
Droptitle.Size = UDim2.new(0, 410, 0, 30)
Droptitle.Font = Enum.Font.Gotham
Droptitle.Text = text.." : "
Droptitle.TextColor3 = Color3.fromRGB(225, 225, 225)
Droptitle.TextSize = 11.000
Droptitle.TextXAlignment = Enum.TextXAlignment.Left

DropImage.Name = "DropImage"
DropImage.Parent = Dropdown
DropImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DropImage.BackgroundTransparency = 1.000
DropImage.Position = UDim2.new(0, 425, 0, 5)
DropImage.Rotation = 0
DropImage.Size = UDim2.new(0, 20, 0, 20)
DropImage.Image = "rbxassetid://5012539403"

DropScroll.Name = "DropScroll"
DropScroll.Parent = Droptitle
DropScroll.Active = true
DropScroll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DropScroll.BackgroundTransparency = 1.000
DropScroll.BorderSizePixel = 0
DropScroll.Position = UDim2.new(-0.0317460336, 0, 1, 0)
DropScroll.Size = UDim2.new(0, 455, 0, 70)
DropScroll.CanvasSize = UDim2.new(0, 0, 0, 2)
DropScroll.ScrollBarThickness = 2

DropdownList.Name = "DropdownList"
DropdownList.Parent = DropScroll
DropdownList.SortOrder = Enum.SortOrder.LayoutOrder
DropdownList.Padding = UDim.new(0, 5)

DropdownPadding.Name = "DropdownPadding"
DropdownPadding.Parent = DropScroll
DropdownPadding.PaddingTop = UDim.new(0, 5)

local isdropping = false

for i,v in next,table do
local DropButton2 = Instance.new("TextButton")

DropButton2.Name = "DropButton2"
DropButton2.Parent = DropScroll
DropButton2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DropButton2.BackgroundTransparency = 1.000
DropButton2.Size = UDim2.new(0, 455, 0, 30)
DropButton2.AutoButtonColor = false
DropButton2.Font = Enum.Font.Gotham
DropButton2.TextColor3 = Color3.fromRGB(225, 225, 225)
DropButton2.TextSize = 11.000
DropButton2.Text = tostring(v)

DropButton2.MouseEnter:Connect(function()
TweenService:Create(
DropButton2,
TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
{TextColor3 = Color3.fromRGB(255,0,0)}
):Play()
end)
DropButton2.MouseLeave:Connect(function()
TweenService:Create(
DropButton2,
TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
{TextColor3 = Color3.fromRGB(225, 225, 225)}
):Play()
end)

DropButton2.MouseButton1Click:Connect(function()
TweenService:Create(
Dropdown,
TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
{Size = UDim2.new(0, 455, 0, 30)}
):Play()
TweenService:Create(
DropImage,
TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
{Rotation = 0}
):Play()
Droptitle.Text =  text.." : "..tostring(v)
callback(v)
isdropping = not isdropping
DropScroll.CanvasSize = UDim2.new(0,0,0,DropdownList.AbsoluteContentSize.Y + 10)
end)
end

DropButton.MouseButton1Click:Connect(function()
if isdropping == false then
isdropping = true
TweenService:Create(
Dropdown,
TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
{Size = UDim2.new(0, 455, 0, 100)}
):Play()
TweenService:Create(
DropImage,
TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
{Rotation = -180}
):Play()
DropScroll.CanvasSize = UDim2.new(0,0,0,DropdownList.AbsoluteContentSize.Y + 10)
else
isdropping = false
TweenService:Create(
Dropdown,
TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
{Size = UDim2.new(0, 455, 0, 30)}
):Play()
TweenService:Create(
DropImage,
TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
{Rotation = 0}
):Play()
DropScroll.CanvasSize = UDim2.new(0,0,0,DropdownList.AbsoluteContentSize.Y + 10)
end
end)
DropScroll.CanvasSize = UDim2.new(0,0,0,DropdownList.AbsoluteContentSize.Y + 10)

local drop = {}

function drop:Clear()
Droptitle.Text = tostring(text).." :"
TweenService:Create(
Dropdown,
TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
{Size = UDim2.new(0, 455, 0, 30)}
):Play()
isdropping = false
for i, v in next, DropScroll:GetChildren() do
if v:IsA("TextButton") then
v:Destroy()
end
end
end
function drop:Add(t)
local DropButton2 = Instance.new("TextButton")

DropButton2.Name = "DropButton2"
DropButton2.Parent = DropScroll
DropButton2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DropButton2.BackgroundTransparency = 1.000
DropButton2.Size = UDim2.new(0, 455, 0, 30)
DropButton2.AutoButtonColor = false
DropButton2.Font = Enum.Font.Gotham
DropButton2.TextColor3 = Color3.fromRGB(225, 225, 225)
DropButton2.TextSize = 11.000
DropButton2.Text = tostring(t)

DropButton2.MouseButton1Click:Connect(function()
TweenService:Create(
Dropdown,
TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
{Size = UDim2.new(0, 455, 0, 30)}
):Play()
TweenService:Create(
DropImage,
TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
{Rotation = 0}
):Play()
Droptitle.Text =  text.." : "..tostring(t)
callback(t)
isdropping = not isdropping
DropScroll.CanvasSize = UDim2.new(0,0,0,DropdownList.AbsoluteContentSize.Y + 10)
end)
end
return drop
end

function main:AddSlider(text,min,max,set,callback)
set = (math.clamp(set,min,max))
if set > max then set = max end

local Slider = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local SliderTitle = Instance.new("TextLabel")
local SliderValue = Instance.new("TextLabel")
local SliderButton = Instance.new("TextButton")
local Bar1 = Instance.new("Frame")
local Bar = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local CircleBar = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local UICorner_4 = Instance.new("UICorner")

Slider.Name = "Slider"
Slider.Parent = ScrollTab
Slider.BackgroundColor3 = Color3.fromRGB(50, 48, 59)
Slider.Size = UDim2.new(0, 455, 0, 40)

UICorner.CornerRadius = UDim.new(0, 5)
UICorner.Parent = Slider

SliderTitle.Name = "SliderTitle"
SliderTitle.Parent = Slider
SliderTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SliderTitle.BackgroundTransparency = 1.000
SliderTitle.Position = UDim2.new(0.0283286124, 0, 0, 0)
SliderTitle.Size = UDim2.new(0, 290, 0, 20)
SliderTitle.Font = Enum.Font.Gotham
SliderTitle.Text = text
SliderTitle.TextColor3 = Color3.fromRGB(225, 225, 225)
SliderTitle.TextSize = 11.000
SliderTitle.TextXAlignment = Enum.TextXAlignment.Left

SliderValue.Name = "SliderValue"
SliderValue.Parent = Slider
SliderValue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SliderValue.BackgroundTransparency = 1.000
SliderValue.Position = UDim2.new(0.887778878, 0, 0, 0)
SliderValue.Size = UDim2.new(0, 40, 0, 20)
SliderValue.Font = Enum.Font.Gotham
SliderValue.Text =  tostring(set and math.floor( (set / max) * (max - min) + min) or 0)
SliderValue.TextColor3 = Color3.fromRGB(225, 225, 225)
SliderValue.TextSize = 11.000

SliderButton.Name = "SliderButton"
SliderButton.Parent = Slider
SliderButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SliderButton.BackgroundTransparency = 1.000
SliderButton.Position = UDim2.new(0, 10, 0, 25)
SliderButton.Size = UDim2.new(0, 435, 0, 5)
SliderButton.AutoButtonColor = false
SliderButton.Font = Enum.Font.SourceSans
SliderButton.Text = ""
SliderButton.TextColor3 = Color3.fromRGB(0, 0, 0)
SliderButton.TextSize = 14.000

Bar1.Name = "Bar1"
Bar1.Parent = SliderButton
Bar1.BackgroundColor3 = Color3.fromRGB(30, 28, 39)
Bar1.Size = UDim2.new(0, 435, 0, 5)

Bar.Name = "Bar"
Bar.Parent = Bar1
Bar.BackgroundColor3 = Color3.fromRGB(255,0,0)
Bar.Size = UDim2.new(set/max, 0, 0, 5)

UICorner_2.CornerRadius = UDim.new(0, 100)
UICorner_2.Parent = Bar

CircleBar.Name = "CircleBar"
CircleBar.Parent = Bar
CircleBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CircleBar.Position = UDim2.new(1, -2, 0, -2)
CircleBar.AnchorPoint = Vector2.new(0, 0.1)
CircleBar.Size = UDim2.new(0, 10, 0, 10)

UICorner_3.CornerRadius = UDim.new(0, 100)
UICorner_3.Parent = CircleBar

UICorner_4.CornerRadius = UDim.new(0, 100)
UICorner_4.Parent = Bar1

local mouse = game.Players.LocalPlayer:GetMouse()
local uis = game:GetService("UserInputService")

if Value == nil then
Value = set
pcall(function()
callback(Value)
end)
end

SliderButton.MouseButton1Down:Connect(function()
Value = math.floor((((tonumber(max) - tonumber(min)) / 435) * Bar.AbsoluteSize.X) + tonumber(min)) or 0
pcall(function()
callback(Value)
end)
Bar.Size = UDim2.new(0, math.clamp(mouse.X - Bar.AbsolutePosition.X, 0, 435), 0, 5)
CircleBar.Position = UDim2.new(0, math.clamp(mouse.X - Bar.AbsolutePosition.X - 2, 0, 425), 0, -2)
moveconnection = mouse.Move:Connect(function()
SliderValue.Text = Value
Value = math.floor((((tonumber(max) - tonumber(min)) / 435) * Bar.AbsoluteSize.X) + tonumber(min))
pcall(function()
callback(Value)
end)
Bar.Size = UDim2.new(0, math.clamp(mouse.X - Bar.AbsolutePosition.X, 0, 435), 0, 5)
CircleBar.Position = UDim2.new(0, math.clamp(mouse.X - Bar.AbsolutePosition.X - 2, 0, 425), 0, -2)
end)
releaseconnection = uis.InputEnded:Connect(function(Mouse)
if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
Value = math.floor((((tonumber(max) - tonumber(min)) / 435) * Bar.AbsoluteSize.X) + tonumber(min))
pcall(function()
callback(Value)
end)
Bar.Size = UDim2.new(0, math.clamp(mouse.X - Bar.AbsolutePosition.X, 0, 435), 0, 5)
CircleBar.Position = UDim2.new(0, math.clamp(mouse.X - Bar.AbsolutePosition.X - 2, 0, 425), 0, -2)
moveconnection:Disconnect()
releaseconnection:Disconnect()
end
end)
end)
releaseconnection = uis.InputEnded:Connect(function(Mouse)
if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
Value = math.floor((((tonumber(max) - tonumber(min)) / 435) * Bar.AbsoluteSize.X) + tonumber(min))
SliderValue.Text = Value
end
end)
end
function main:AddSeperator(text)
local Seperator = Instance.new("Frame")
local Sep1 = Instance.new("Frame")
local SepLabel = Instance.new("TextLabel")
local Sep2 = Instance.new("Frame")

Seperator.Name = "Seperator"
Seperator.Parent = ScrollTab
Seperator.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Seperator.BackgroundTransparency = 1.000
Seperator.ClipsDescendants = true
Seperator.Size = UDim2.new(0, 455, 0, 20)

Sep1.Name = "Sep1"
Sep1.Parent = Seperator
Sep1.BackgroundColor3 = Color3.fromRGB(255,0,0)
Sep1.BorderSizePixel = 0
Sep1.Position = UDim2.new(0, 0, 0, 10)
Sep1.Size = UDim2.new(0, 150, 0, 1)

SepLabel.Name = "SepLabel"
SepLabel.Parent = Seperator
SepLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SepLabel.BackgroundTransparency = 1.000
SepLabel.Position = UDim2.new(0, 95, 0, 0)
SepLabel.Size = UDim2.new(0, 255, 0, 20)
SepLabel.Font = Enum.Font.Gotham
SepLabel.Text = text
SepLabel.TextColor3 = Color3.fromRGB(225,225,225)
SepLabel.TextSize = 11.000

Sep2.Name = "Sep2"
Sep2.Parent = Seperator
Sep2.BackgroundColor3 = Color3.fromRGB(255,0,0)
Sep2.BorderSizePixel = 0
Sep2.Position = UDim2.new(0, 305, 0, 10)
Sep2.Size = UDim2.new(0, 150, 0, 1)
end
function main:AddLine()
local Line = Instance.new("Frame")
local Linee = Instance.new("Frame")

Line.Name = "Line"
Line.Parent = ScrollTab
Line.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Line.BackgroundTransparency = 1.000
Line.ClipsDescendants = true
Line.Size = UDim2.new(0, 455, 0, 20)

Linee.Name = "Linee"
Linee.Parent = Line
Linee.BackgroundColor3 = Color3.fromRGB(255,0,0)
Linee.BorderSizePixel = 0
Linee.Position = UDim2.new(0, 0, 0, 10)
Linee.Size = UDim2.new(0, 455, 0, 1)
end
function main:AddLabel(text)
local Label = Instance.new("TextLabel")
local PaddingLabel = Instance.new("UIPadding")
local labell = {}

Label.Name = "Label"
Label.Parent = ScrollTab
Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Label.BackgroundTransparency = 1.000
Label.Size = UDim2.new(0, 455, 0, 20)
Label.Font = Enum.Font.Gotham
Label.TextColor3 = Color3.fromRGB(225, 225, 225)
Label.TextSize = 11.000
Label.Text = text
Label.TextXAlignment = Enum.TextXAlignment.Left

PaddingLabel.PaddingLeft = UDim.new(0,10)
PaddingLabel.Parent = Label
PaddingLabel.Name = "PaddingLabel"

function labell:Set(newtext)
Label.Text = newtext
end

return labell
end

return main
end
return uitab
end

--------------------------------------------------------------------
if game.PlaceId == 2753915549 then
World1 = true
elseif game.PlaceId == 4442272183 then
World2 = true
elseif game.PlaceId == 7449423635 then
World3 = true
end

function CheckQuest()
MyLevel = game:GetService("Players").LocalPlayer.Data.Level.Value
if World1 then
if MyLevel == 1 or MyLevel <= 9 then
Mon = "Bandit [Lv. 5]"
LevelQuest = 1
NameQuest = "BanditQuest1"
NameMon = "Bandit"
CFrameQuest = CFrame.new(1059.37195, 15.4495068, 1550.4231, 0.939700544, -0, -0.341998369, 0, 1, -0, 0.341998369, 0, 0.939700544)
elseif MyLevel == 10 or MyLevel <= 14 then
Mon = "Monkey [Lv. 14]"
LevelQuest = 1
NameQuest = "JungleQuest"
NameMon = "Monkey"
CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
elseif MyLevel == 15 or MyLevel <= 29 then
Mon = "Gorilla [Lv. 20]"
LevelQuest = 2
NameQuest = "JungleQuest"
NameMon = "Gorilla"
CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
elseif MyLevel == 30 or MyLevel <= 39 then
Mon = "Pirate [Lv. 35]"
LevelQuest = 1
NameQuest = "BuggyQuest1"
NameMon = "Pirate"
CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
elseif MyLevel == 40 or MyLevel <= 59 then
Mon = "Brute [Lv. 45]"
LevelQuest = 2
NameQuest = "BuggyQuest1"
NameMon = "Brute"
CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
elseif MyLevel == 60 or MyLevel <= 74 then
Mon = "Desert Bandit [Lv. 60]"
LevelQuest = 1
NameQuest = "DesertQuest"
NameMon = "Desert Bandit"
CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
elseif MyLevel == 75 or MyLevel <= 89 then
Mon = "Desert Officer [Lv. 70]"
LevelQuest = 2
NameQuest = "DesertQuest"
NameMon = "Desert Officer"
CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
elseif MyLevel == 90 or MyLevel <= 99 then
Mon = "Snow Bandit [Lv. 90]"
LevelQuest = 1
NameQuest = "SnowQuest"
NameMon = "Snow Bandit"
CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
elseif MyLevel == 100 or MyLevel <= 119 then
Mon = "Snowman [Lv. 100]"
LevelQuest = 2
NameQuest = "SnowQuest"
NameMon = "Snowman"
CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
elseif MyLevel == 120 or MyLevel <= 149 then
Mon = "Chief Petty Officer [Lv. 120]"
LevelQuest = 1
NameQuest = "MarineQuest2"
NameMon = "Chief Petty Officer"
CFrameQuest = CFrame.new(-5039.58643, 27.3500385, 4324.68018, 0, 0, -1, 0, 1, 0, 1, 0, 0)
elseif MyLevel == 150 or MyLevel <= 174 then
Mon = "Sky Bandit [Lv. 150]"
LevelQuest = 1
NameQuest = "SkyQuest"
NameMon = "Sky Bandit"
CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
elseif MyLevel == 175 or MyLevel <= 189 then
Mon = "Dark Master [Lv. 175]"
LevelQuest = 2
NameQuest = "SkyQuest"
NameMon = "Dark Master"
CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
elseif MyLevel == 190 or MyLevel <= 209 then
Mon = "Prisoner [Lv. 190]"
LevelQuest = 1
NameQuest = "PrisonerQuest"
NameMon = "Prisoner"
CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
elseif MyLevel == 210 or MyLevel <= 249 then
Mon = "Dangerous Prisoner [Lv. 210]"
LevelQuest = 2
NameQuest = "PrisonerQuest"
NameMon = "Dangerous Prisoner"
CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
elseif MyLevel == 250 or MyLevel <= 274 then
Mon = "Toga Warrior [Lv. 250]"
LevelQuest = 1
NameQuest = "ColosseumQuest"
NameMon = "Toga Warrior"
CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, 0.857167721, 0, -0.515037298)
elseif MyLevel == 275 or MyLevel <= 299 then
Mon = "Gladiator [Lv. 275]"
LevelQuest = 2
NameQuest = "ColosseumQuest"
NameMon = "Gladiator"
CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, 0.857167721, 0, -0.515037298)
elseif MyLevel == 300 or MyLevel <= 324 then
Mon = "Military Soldier [Lv. 300]"
LevelQuest = 1
NameQuest = "MagmaQuest"
NameMon = "Military Soldier"
CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
elseif MyLevel == 325 or MyLevel <= 374 then
Mon = "Military Spy [Lv. 325]"
LevelQuest = 2
NameQuest = "MagmaQuest"
NameMon = "Military Spy"
CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
elseif MyLevel == 375 or MyLevel <= 399 then
Mon = "Fishman Warrior [Lv. 375]"
LevelQuest = 1
NameQuest = "FishmanQuest"
NameMon = "Fishman Warrior"
CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
end
elseif MyLevel == 400 or MyLevel <= 449 then
Mon = "Fishman Commando [Lv. 400]"
LevelQuest = 2
NameQuest = "FishmanQuest"
NameMon = "Fishman Commando"
CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
end
elseif MyLevel == 450 or MyLevel <= 474 then
Mon = "God's Guard [Lv. 450]"
LevelQuest = 1
NameQuest = "SkyExp1Quest"
NameMon = "God's Guard"
CFrameQuest = CFrame.new(-4721.88867, 843.874695, -1949.96643, 0.996191859, -0, -0.0871884301, 0, 1, -0, 0.0871884301, 0, 0.996191859)
if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
end
elseif MyLevel == 475 or MyLevel <= 524 then
Mon = "Shanda [Lv. 475]"
LevelQuest = 2
NameQuest = "SkyExp1Quest"
NameMon = "Shanda"
CFrameQuest = CFrame.new(-7859.09814, 5544.19043, -381.476196, -0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, -0.422592998)
if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
end
elseif MyLevel == 525 or MyLevel <= 549 then
Mon = "Royal Squad [Lv. 525]"
LevelQuest = 1
NameQuest = "SkyExp2Quest"
NameMon = "Royal Squad"
CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
elseif MyLevel == 550 or MyLevel <= 624 then
Mon = "Royal Soldier [Lv. 550]"
LevelQuest = 2
NameQuest = "SkyExp2Quest"
NameMon = "Royal Soldier"
CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
elseif MyLevel == 625 or MyLevel <= 649 then
Mon = "Galley Pirate [Lv. 625]"
LevelQuest = 1
NameQuest = "FountainQuest"
NameMon = "Galley Pirate"
CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
elseif MyLevel >= 650 then
Mon = "Galley Captain [Lv. 650]"
LevelQuest = 2
NameQuest = "FountainQuest"
NameMon = "Galley Captain"
CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
end
elseif World2 then
if MyLevel == 700 or MyLevel <= 724 then
Mon = "Raider [Lv. 700]"
LevelQuest = 1
NameQuest = "Area1Quest"
NameMon = "Raider"
CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
elseif MyLevel == 725 or MyLevel <= 774 then
Mon = "Mercenary [Lv. 725]"
LevelQuest = 2
NameQuest = "Area1Quest"
NameMon = "Mercenary"
CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
elseif MyLevel == 775 or MyLevel <= 799 then
Mon = "Swan Pirate [Lv. 775]"
LevelQuest = 1
NameQuest = "Area2Quest"
NameMon = "Swan Pirate"
CFrameQuest = CFrame.new(638.43811, 71.769989, 918.282898, 0.139203906, 0, 0.99026376, 0, 1, 0, -0.99026376, 0, 0.139203906)
elseif MyLevel == 800 or MyLevel <= 874 then
Mon = "Factory Staff [Lv. 800]"
NameQuest = "Area2Quest"
LevelQuest = 2
NameMon = "Factory Staff"
CFrameQuest = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
elseif MyLevel == 875 or MyLevel <= 899 then
Mon = "Marine Lieutenant [Lv. 875]"
LevelQuest = 1
NameQuest = "MarineQuest3"
NameMon = "Marine Lieutenant"
CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
elseif MyLevel == 900 or MyLevel <= 949 then
Mon = "Marine Captain [Lv. 900]"
LevelQuest = 2
NameQuest = "MarineQuest3"
NameMon = "Marine Captain"
CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
elseif MyLevel == 950 or MyLevel <= 974 then
Mon = "Zombie [Lv. 950]"
LevelQuest = 1
NameQuest = "ZombieQuest"
NameMon = "Zombie"
CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
elseif MyLevel == 975 or MyLevel <= 999 then
Mon = "Vampire [Lv. 975]"
LevelQuest = 2
NameQuest = "ZombieQuest"
NameMon = "Vampire"
CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
elseif MyLevel == 1000 or MyLevel <= 1049 then
Mon = "Snow Trooper [Lv. 1000]"
LevelQuest = 1
NameQuest = "SnowMountainQuest"
NameMon = "Snow Trooper"
CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
elseif MyLevel == 1050 or MyLevel <= 1099 then
Mon = "Winter Warrior [Lv. 1050]"
LevelQuest = 2
NameQuest = "SnowMountainQuest"
NameMon = "Winter Warrior"
CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
elseif MyLevel == 1100 or MyLevel <= 1124 then
Mon = "Lab Subordinate [Lv. 1100]"
LevelQuest = 1
NameQuest = "IceSideQuest"
NameMon = "Lab Subordinate"
CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
elseif MyLevel == 1125 or MyLevel <= 1174 then
Mon = "Horned Warrior [Lv. 1125]"
LevelQuest = 2
NameQuest = "IceSideQuest"
NameMon = "Horned Warrior"
CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
elseif MyLevel == 1175 or MyLevel <= 1199 then
Mon = "Magma Ninja [Lv. 1175]"
LevelQuest = 1
NameQuest = "FireSideQuest"
NameMon = "Magma Ninja"
CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
elseif MyLevel == 1200 or MyLevel <= 1249 then
Mon = "Lava Pirate [Lv. 1200]"
LevelQuest = 2
NameQuest = "FireSideQuest"
NameMon = "Lava Pirate"
CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
elseif MyLevel == 1250 or MyLevel <= 1274 then
Mon = "Ship Deckhand [Lv. 1250]"
LevelQuest = 1
NameQuest = "ShipQuest1"
NameMon = "Ship Deckhand"
CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016)
if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
end
elseif MyLevel == 1275 or MyLevel <= 1299 then
Mon = "Ship Engineer [Lv. 1275]"
LevelQuest = 2
NameQuest = "ShipQuest1"
NameMon = "Ship Engineer"
CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016)
if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
end
elseif MyLevel == 1300 or MyLevel <= 1324 then
Mon = "Ship Steward [Lv. 1300]"
LevelQuest = 1
NameQuest = "ShipQuest2"
NameMon = "Ship Steward"
CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125)
if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
end
elseif MyLevel == 1325 or MyLevel <= 1349 then
Mon = "Ship Officer [Lv. 1325]"
LevelQuest = 2
NameQuest = "ShipQuest2"
NameMon = "Ship Officer"
CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125)
if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
end
elseif MyLevel == 1350 or MyLevel <= 1374 then
Mon = "Arctic Warrior [Lv. 1350]"
LevelQuest = 1
NameQuest = "FrostQuest"
NameMon = "Arctic Warrior"
CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 5000.034996032715, -132.83953857422))
end
elseif MyLevel == 1375 or MyLevel <= 1424 then
Mon = "Snow Lurker [Lv. 1375]"
LevelQuest = 2
NameQuest = "FrostQuest"
NameMon = "Snow Lurker"
CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
elseif MyLevel == 1425 or MyLevel <= 1449 then
Mon = "Sea Soldier [Lv. 1425]"
LevelQuest = 1
NameQuest = "ForgottenQuest"
NameMon = "Sea Soldier"
CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376)
elseif MyLevel >= 1450 then
Mon = "Water Fighter [Lv. 1450]"
LevelQuest = 2
NameQuest = "ForgottenQuest"
NameMon = "Water Fighter"
CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376)
end
elseif World3 then
if MyLevel == 1500 or MyLevel <= 1524 then
Mon = "Pirate Millionaire [Lv. 1500]"
LevelQuest = 1
NameQuest = "PiratePortQuest"
NameMon = "Pirate Millionaire"
CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
elseif MyLevel == 1525 or MyLevel <= 1574 then
Mon = "Pistol Billionaire [Lv. 1525]"
LevelQuest = 2
NameQuest = "PiratePortQuest"
NameMon = "Pistol Billionaire"
CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
elseif MyLevel == 1575 or MyLevel <= 1599 then
Mon = "Dragon Crew Warrior [Lv. 1575]"
LevelQuest = 1
NameQuest = "AmazonQuest"
NameMon = "Dragon Crew Warrior"
CFrameQuest = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359)
elseif MyLevel == 1600 or MyLevel <= 1624 then
Mon = "Dragon Crew Archer [Lv. 1600]"
NameQuest = "AmazonQuest"
LevelQuest = 2
NameMon = "Dragon Crew Archer"
CFrameQuest = CFrame.new(5833.1147460938, 51.60498046875, -1103.0693359375)
elseif MyLevel == 1625 or MyLevel <= 1649 then
Mon = "Female Islander [Lv. 1625]"
NameQuest = "AmazonQuest2"
LevelQuest = 1
NameMon = "Female Islander"
CFrameQuest = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
elseif MyLevel == 1650 or MyLevel <= 1699 then
Mon = "Giant Islander [Lv. 1650]"
NameQuest = "AmazonQuest2"
LevelQuest = 2
NameMon = "Giant Islander"
CFrameQuest = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
elseif MyLevel == 1700 or MyLevel <= 1724 then
Mon = "Marine Commodore [Lv. 1700]"
LevelQuest = 1
NameQuest = "MarineTreeIsland"
NameMon = "Marine Commodore"
CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
elseif MyLevel == 1725 or MyLevel <= 1774 then
Mon = "Marine Rear Admiral [Lv. 1725]"
NameMon = "Marine Rear Admiral"
NameQuest = "MarineTreeIsland"
LevelQuest = 2
CFrameQuest = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
elseif MyLevel == 1775 or MyLevel <= 1799 then
Mon = "Fishman Raider [Lv. 1775]"
LevelQuest = 1
NameQuest = "DeepForestIsland3"
NameMon = "Fishman Raider"
CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
elseif MyLevel == 1800 or MyLevel <= 1824 then
Mon = "Fishman Captain [Lv. 1800]"
LevelQuest = 2
NameQuest = "DeepForestIsland3"
NameMon = "Fishman Captain"
CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
elseif MyLevel == 1825 or MyLevel <= 1849 then
Mon = "Forest Pirate [Lv. 1825]"
LevelQuest = 1
NameQuest = "DeepForestIsland"
NameMon = "Forest Pirate"
CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
elseif MyLevel == 1850 or MyLevel <= 1899 then
Mon = "Mythological Pirate [Lv. 1850]"
LevelQuest = 2
NameQuest = "DeepForestIsland"
NameMon = "Mythological Pirate"
CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
elseif MyLevel == 1900 or MyLevel <= 1924 then
Mon = "Jungle Pirate [Lv. 1900]"
LevelQuest = 1
NameQuest = "DeepForestIsland2"
NameMon = "Jungle Pirate"
CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
elseif MyLevel == 1925 or MyLevel <= 1974 then
Mon = "Musketeer Pirate [Lv. 1925]"
LevelQuest = 2
NameQuest = "DeepForestIsland2"
NameMon = "Musketeer Pirate"
CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
elseif MyLevel == 1975 or MyLevel <= 1999 then
Mon = "Reborn Skeleton [Lv. 1975]"
LevelQuest = 1
NameQuest = "HauntedQuest1"
NameMon = "Reborn Skeleton"
CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
elseif MyLevel == 2000 or MyLevel <= 2024 then
Mon = "Living Zombie [Lv. 2000]"
LevelQuest = 2
NameQuest = "HauntedQuest1"
NameMon = "Living Zombie"
CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
elseif MyLevel == 2025 or MyLevel <= 2049 then
Mon = "Demonic Soul [Lv. 2025]"
LevelQuest = 1
NameQuest = "HauntedQuest2"
NameMon = "Demonic Soul"
CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0)
elseif MyLevel == 2050 or MyLevel <= 2074 then
Mon = "Posessed Mummy [Lv. 2050]"
LevelQuest = 2
NameQuest = "HauntedQuest2"
NameMon = "Posessed Mummy"
CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0)
elseif MyLevel == 2075 or MyLevel <= 2099 then
Mon = "Peanut Scout [Lv. 2075]"
LevelQuest = 1
NameQuest = "NutsIslandQuest"
NameMon = "Peanut Scout"
CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
elseif MyLevel == 2100 or MyLevel <= 2124 then
Mon = "Peanut President [Lv. 2100]"
LevelQuest = 2
NameQuest = "NutsIslandQuest"
NameMon = "Peanut President"
CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
elseif MyLevel == 2125 or MyLevel <= 2149 then
Mon = "Ice Cream Chef [Lv. 2125]"
LevelQuest = 1
NameQuest = "IceCreamIslandQuest"
NameMon = "Ice Cream Chef"
CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
elseif MyLevel == 2150 or MyLevel <= 2199 then
Mon = "Ice Cream Commander [Lv. 2150]"
LevelQuest = 2
NameQuest = "IceCreamIslandQuest"
NameMon = "Ice Cream Commander"
CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
elseif MyLevel == 2200 or MyLevel <= 2224 then
Mon = "Cookie Crafter [Lv. 2200]"
LevelQuest = 1
NameQuest = "CakeQuest1"
NameMon = "Cookie Crafter"
CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-08, 0.288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, 0.957576931)
elseif MyLevel == 2225 or MyLevel <= 2249 then
Mon = "Cake Guard [Lv. 2225]"
LevelQuest = 2
NameQuest = "CakeQuest1"
NameMon = "Cake Guard"
CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-08, 0.288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, 0.957576931)
elseif MyLevel == 2250 or MyLevel <= 2274 then
Mon = "Baking Staff [Lv. 2250]"
LevelQuest = 1
NameQuest = "CakeQuest2"
NameMon = "Baking Staff"
CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, 0.250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446)
elseif MyLevel == 2275 or MyLevel <= 2299 then
Mon = "Head Baker [Lv. 2275]"
LevelQuest = 2
NameQuest = "CakeQuest2"
NameMon = "Head Baker"
CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, 0.250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446)
elseif MyLevel == 2300 or MyLevel <= 2324 then
Mon = "Cocoa Warriors [Lv. 2300]"
LevelQuest = 1
NameQuest = "ChocolateQuest1"
NameMon = "Cocoa Warriors"
CFrameQuest = CFrame.new(231.78704833984375, 24.760019302368164, -12198.2880859375)
elseif MyLevel == 2325 or MyLevel <= 2349 then
Mon = "Chocolate Bar Battlers [Lv. 2325]"
LevelQuest = 2
NameQuest = "ChocolateQuest1"
NameMon = "Chocolate Bar Battlers"
CFrameQuest = CFrame.new(231.78704833984375, 24.760019302368164, -12198.2880859375)
elseif MyLevel == 2350 or MyLevel <= 2374 then
Mon = "Sweet Thiefs [Lv. 2350]"
LevelQuest = 1
NameQuest = "ChocolateQuest2"
NameMon = "Sweet Thiefs"
CFrameQuest = CFrame.new(149.01541137695312, 24.819602966308594, -12775.4462890625)
elseif MyLevel == 2375 or MyLevel <= 2399 then
Mon = "Candy Rebels [Lv. 2375]"
LevelQuest = 2
NameQuest = "ChocolateQuest2"
NameMon = "Candy Rebels"
CFrameQuest = CFrame.new(149.01541137695312, 24.819602966308594, -12775.4462890625)
elseif MyLevel == 2400 or MyLevel <= 2424 then
Mon = "Candy Pirate [Lv. 2400]"
LevelQuest = 1
NameQuest = "CandyQuest"
NameMon = "Candy Pirate"
CFrameQuest = CFrame.new(-1147.67578125, 14.133035659790039, -14444.029296875)
elseif MyLevel == 2425 or MyLevel <= 2449 then
Mon = "Snow Demon [Lv. 2425]"
LevelQuest = 2
NameQuest = "CandyQuest"
NameMon = "Snow Demon"
CFrameQuest = CFrame.new(-1147.67578125, 14.133035659790039, -14444.029296875)
elseif MyLevel == 2450 or MyLevel <= 2474 then
Mon = "Isle Outlaw [Lv. 2450]"
LevelQuest = 1
NameQuest = "TikiQuest1"
NameMon = "Isle Outlaw"
CFrameQuest = CFrame.new(-16547.1015625, 55.67731475830078, -172.5514373779297)
elseif MyLevel == 2475 or MyLevel <= 2499 then
Mon = "Island Boy [Lv. 2475]"
LevelQuest = 2
NameQuest = "TikiQuest1"
NameMon = "Island Boy"
CFrameQuest = CFrame.new(-16547.1015625, 55.67731475830078, -172.5514373779297)
elseif MyLevel == 2500 or MyLevel <= 2524 then
Mon = "Sun-kissed Warrior [Lv. 2500]"
LevelQuest = 1
NameQuest = "TikiQuest2"
NameMon = "Sun-kissed Warrior"
CFrameQuest = CFrame.new(-16539.447265625, 55.68632888793945, 1050.649169921875)
elseif MyLevel >= 2525 then
Mon = "Isle Champion [Lv. 2525]"
LevelQuest = 2
NameQuest = "TikiQuest2"
NameMon = "Isle Champion"
CFrameQuest = CFrame.new(-16539.447265625, 55.68632888793945, 1050.649169921875)
end
end
end

function Hop()
local PlaceID = game.PlaceId
local AllIDs = {}
local foundAnything = ""
local actualHour = os.date("!*t").hour
local Deleted = false
function TPReturner()
local Site;
if foundAnything == "" then
Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
else
Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
end
local ID = ""
if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
foundAnything = Site.nextPageCursor
end
local num = 0;
for i,v in pairs(Site.data) do
local Possible = true
ID = tostring(v.id)
if tonumber(v.maxPlayers) > tonumber(v.playing) then
for _,Existing in pairs(AllIDs) do
if num ~= 0 then
if ID == tostring(Existing) then
Possible = false
end
else
if tonumber(actualHour) ~= tonumber(Existing) then
local delFile = pcall(function()
AllIDs = {}
table.insert(AllIDs, actualHour)
end)
end
end
num = num + 1
end
if Possible == true then
table.insert(AllIDs, ID)
wait()
pcall(function()
wait()
game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
end)
wait(4)
end
end
end
end
function Teleport()
while wait() do
pcall(function()
TPReturner()
if foundAnything ~= "" then
TPReturner()
end
end)
end
end
Teleport()
end

function isnil(thing)
return (thing == nil)
end
local function round(n)
return math.floor(tonumber(n) + 0.5)
end
Number = math.random(1, 1000000)
function UpdateEspPlayer()
if ESPPlayer then
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
if not isnil(v.Character) then
if not v.Character.Head:FindFirstChild('NameEsp'..v.Name) then
local BillboardGui = Instance.new("BillboardGui")
local ESP = Instance.new("TextLabel")
local HealthESP = Instance.new("TextLabel")
BillboardGui.Parent = v.Character.Head
BillboardGui.Name = 'NameEsp'..v.Name
BillboardGui.ExtentsOffset = Vector3.new(0, 1, 0)
BillboardGui.Size = UDim2.new(1,200,1,30)
BillboardGui.Adornee = v.Character.Head
BillboardGui.AlwaysOnTop = true
ESP.Name = "ESP"
ESP.Parent = BillboardGui
ESP.TextTransparency = 0
ESP.BackgroundTransparency = 1
ESP.Size = UDim2.new(0, 200, 0, 30)
ESP.Position = UDim2.new(0,25,0,0)
ESP.Font = Enum.Font.Gotham
ESP.Text = (v.Name ..' '.."[ "..round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M'.." ]")
if v.Team == game:GetService("Players").LocalPlayer.Team then
ESP.TextColor3 = Color3.new(0, 255, 255)
else
ESP.TextColor3 = Color3.new(255, 0, 0)
end
ESP.TextSize = 14
ESP.TextStrokeTransparency = 0.500
ESP.TextWrapped = true
HealthESP.Name = "HealthESP"
HealthESP.Parent = ESP
HealthESP.TextTransparency = 0
HealthESP.BackgroundTransparency = 1
HealthESP.Position = ESP.Position + UDim2.new(0, -25, 0, 15)
HealthESP.Size = UDim2.new(0, 200, 0, 30)
HealthESP.Font = Enum.Font.Gotham
HealthESP.TextColor3 = Color3.fromRGB(255, 0, 0)
HealthESP.TextSize = 14
HealthESP.TextStrokeTransparency = 0.500
HealthESP.TextWrapped = true
HealthESP.Text = "Health "..math.floor(v.Character.Humanoid.Health).."/"..math.floor(v.Character.Humanoid.MaxHealth)
else
v.Character.Head['NameEsp'..v.Name].ESP.Text = (v.Name ..' '..round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M')
v.Character.Head['NameEsp'..v.Name].ESP.HealthESP.Text = "Health "..math.floor(v.Character.Humanoid.Health).."/"..math.floor(v.Character.Humanoid.MaxHealth)
v.Character.Head:FindFirstChild('NameEsp'..v.Name).ESP.TextTransparency = 0
v.Character.Head:FindFirstChild('NameEsp'..v.Name).ESP.HealthESP.TextTransparency = 0
end
end
end
else
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
if v.Character.Head:FindFirstChild('NameEsp'..v.Name) then
v.Character.Head:FindFirstChild('NameEsp'..v.Name).ESP.TextTransparency = 1
v.Character.Head:FindFirstChild('NameEsp'..v.Name).ESP.HealthESP.TextTransparency = 1
end
end
end
end

function UpdateIslandESP()
for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
pcall(function()
if IslandESP then
if v.Name ~= "Sea" then
if not v:FindFirstChild('NameEsp') then
local bill = Instance.new('BillboardGui',v)
bill.Name = 'NameEsp'
bill.ExtentsOffset = Vector3.new(0, 1, 0)
bill.Size = UDim2.new(1,200,1,30)
bill.Adornee = v
bill.AlwaysOnTop = true
local name = Instance.new('TextLabel',bill)
name.Font = "GothamBold"
name.FontSize = "Size14"
name.TextWrapped = true
name.Size = UDim2.new(1,0,1,0)
name.TextYAlignment = 'Top'
name.BackgroundTransparency = 1
name.TextStrokeTransparency = 0.5
name.TextColor3 = Color3.fromRGB(80, 245, 245)
else
v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
end
end
else
if v:FindFirstChild('NameEsp') then
v:FindFirstChild('NameEsp'):Destroy()
end
end
end)
end
end

function UpdateChestEsp()
for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
pcall(function()
if string.find(v.Name,"Chest") then
if ChestESP then
if string.find(v.Name,"Chest") then
if not v:FindFirstChild('NameEsp'..Number) then
local bill = Instance.new('BillboardGui',v)
bill.Name = 'NameEsp'..Number
bill.ExtentsOffset = Vector3.new(0, 1, 0)
bill.Size = UDim2.new(1,200,1,30)
bill.Adornee = v
bill.AlwaysOnTop = true
local name = Instance.new('TextLabel',bill)
name.Font = "GothamBold"
name.FontSize = "Size14"
name.TextWrapped = true
name.Size = UDim2.new(1,0,1,0)
name.TextYAlignment = 'Top'
name.BackgroundTransparency = 1
name.TextStrokeTransparency = 0.5
name.TextColor3 = Color3.fromRGB(0, 255, 250)
if v.Name == "Chest1" then
name.Text = ("Chest 1" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
end
if v.Name == "Chest2" then
name.Text = ("Chest 2" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
end
if v.Name == "Chest3" then
name.Text = ("Chest 3" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
end
else
v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
end
end
else
if v:FindFirstChild('NameEsp'..Number) then
v:FindFirstChild('NameEsp'..Number):Destroy()
end
end
end
end)
end
end

function UpdateBfEsp()
for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
pcall(function()
if DevilFruitESP then
if string.find(v.Name, "Fruit") then
if not v.Handle:FindFirstChild('NameEsp'..Number) then
local bill = Instance.new('BillboardGui',v.Handle)
bill.Name = 'NameEsp'..Number
bill.ExtentsOffset = Vector3.new(0, 1, 0)
bill.Size = UDim2.new(1,200,1,30)
bill.Adornee = v.Handle
bill.AlwaysOnTop = true
local name = Instance.new('TextLabel',bill)
name.Font = "GothamBold"
name.FontSize = "Size14"
name.TextWrapped = true
name.Size = UDim2.new(1,0,1,0)
name.TextYAlignment = 'Top'
name.BackgroundTransparency = 1
name.TextStrokeTransparency = 0.5
name.TextColor3 = Color3.fromRGB(255, 0, 0)
name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
else
v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
end
end
else
if v.Handle:FindFirstChild('NameEsp'..Number) then
v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
end
end
end)
end
end

function UpdateFlowerEsp()
for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
pcall(function()
if v.Name == "Flower2" or v.Name == "Flower1" then
if FlowerESP then
if not v:FindFirstChild('NameEsp'..Number) then
local bill = Instance.new('BillboardGui',v)
bill.Name = 'NameEsp'..Number
bill.ExtentsOffset = Vector3.new(0, 1, 0)
bill.Size = UDim2.new(1,200,1,30)
bill.Adornee = v
bill.AlwaysOnTop = true
local name = Instance.new('TextLabel',bill)
name.Font = "GothamBold"
name.FontSize = "Size14"
name.TextWrapped = true
name.Size = UDim2.new(1,0,1,0)
name.TextYAlignment = 'Top'
name.BackgroundTransparency = 1
name.TextStrokeTransparency = 0.5
name.TextColor3 = Color3.fromRGB(255, 0, 0)
if v.Name == "Flower1" then
name.Text = ("Blue Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
name.TextColor3 = Color3.fromRGB(0, 0, 255)
end
if v.Name == "Flower2" then
name.Text = ("Red Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
name.TextColor3 = Color3.fromRGB(255, 0, 0)
end
else
v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
end
else
if v:FindFirstChild('NameEsp'..Number) then
v:FindFirstChild('NameEsp'..Number):Destroy()
end
end
end
end)
end
end

function InfAb()
if InfAbility then
if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
local inf = Instance.new("ParticleEmitter")
inf.Acceleration = Vector3.new(0,0,0)
inf.Archivable = true
inf.Drag = 20
inf.EmissionDirection = Enum.NormalId.Top
inf.Enabled = true
inf.Lifetime = NumberRange.new(0.2,0.2)
inf.LightInfluence = 0
inf.LockedToPart = true
inf.Name = "Agility"
inf.Rate = 500
local numberKeypoints2 = {
NumberSequenceKeypoint.new(0, 0);
NumberSequenceKeypoint.new(1, 4);
}
inf.Size = NumberSequence.new(numberKeypoints2)
inf.RotSpeed = NumberRange.new(999, 9999)
inf.Rotation = NumberRange.new(0, 0)
inf.Speed = NumberRange.new(30, 30)
inf.SpreadAngle = Vector2.new(360,360)
inf.Texture = "rbxassetid://7157487174"
inf.VelocityInheritance = 0
inf.ZOffset = 2
inf.Transparency = NumberSequence.new(0)
inf.Color = ColorSequence.new(Color3.fromRGB(80,245,245),Color3.fromRGB(80,245,245))
inf.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
end
else
if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility"):Destroy()
end
end
end

local LocalPlayer = game:GetService'Players'.LocalPlayer
local originalstam = LocalPlayer.Character.Energy.Value
function infinitestam()
LocalPlayer.Character.Energy.Changed:connect(function()
if InfiniteEnergy then
LocalPlayer.Character.Energy.Value = originalstam
end
end)
end

spawn(function()
pcall(function()
while wait(.1) do
if InfiniteEnergy then
wait(0.3)
originalstam = LocalPlayer.Character.Energy.Value
infinitestam()
end
end
end)
end)

function NoDodgeCool()
if nododgecool then
for i,v in next, getgc() do
if game:GetService("Players").LocalPlayer.Character.Dodge then
if typeof(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.Character.Dodge then
for i2,v2 in next, getupvalues(v) do
if tostring(v2) == "0.4" then
repeat wait(.1)
setupvalue(v,i2,0)
until not nododgecool
end
end
end
end
end
end
end

function fly()
local mouse=game:GetService("Players").LocalPlayer:GetMouse''
localplayer=game:GetService("Players").LocalPlayer
game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart")
local torso = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
local speedSET=25
local keys={a=false,d=false,w=false,s=false}
local e1
local e2
local function start()
local pos = Instance.new("BodyPosition",torso)
local gyro = Instance.new("BodyGyro",torso)
pos.Name="EPIXPOS"
pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
pos.position = torso.Position
gyro.maxTorque = Vector3.new(9e9, 9e9, 9e9)
gyro.CFrame = torso.CFrame
repeat
wait()
localplayer.Character.Humanoid.PlatformStand=true
local new=gyro.CFrame - gyro.CFrame.p + pos.position
if not keys.w and not keys.s and not keys.a and not keys.d then
speed=1
end
if keys.w then
new = new + workspace.CurrentCamera.CoordinateFrame.lookVector * speed
speed=speed+speedSET
end
if keys.s then
new = new - workspace.CurrentCamera.CoordinateFrame.lookVector * speed
speed=speed+speedSET
end
if keys.d then
new = new * CFrame.new(speed,0,0)
speed=speed+speedSET
end
if keys.a then
new = new * CFrame.new(-speed,0,0)
speed=speed+speedSET
end
if speed>speedSET then
speed=speedSET
end
pos.position=new.p
if keys.w then
gyro.CFrame = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(-math.rad(speed*15),0,0)
elseif keys.s then
gyro.CFrame = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(math.rad(speed*15),0,0)
else
gyro.CFrame = workspace.CurrentCamera.CoordinateFrame
end
until not Fly
if gyro then
gyro:Destroy()
end
if pos then
pos:Destroy()
end
flying=false
localplayer.Character.Humanoid.PlatformStand=false
speed=0
end
e1=mouse.KeyDown:connect(function(key)
if not torso or not torso.Parent then
flying=false e1:disconnect() e2:disconnect() return
end
if key=="w" then
keys.w=true
elseif key=="s" then
keys.s=true
elseif key=="a" then
keys.a=true
elseif key=="d" then
keys.d=true
end
end)
e2=mouse.KeyUp:connect(function(key)
if key=="w" then
keys.w=false
elseif key=="s" then
keys.s=false
elseif key=="a" then
keys.a=false
elseif key=="d" then
keys.d=false
end
end)
start()
end

function Click()
game:GetService'VirtualUser':CaptureController()
game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
end

function AutoHaki()
if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
end
end

function UnEquipWeapon(Weapon)
if game.Players.LocalPlayer.Character:FindFirstChild(Weapon) then
_G.NotAutoEquip = true
wait(.5)
game.Players.LocalPlayer.Character:FindFirstChild(Weapon).Parent = game.Players.LocalPlayer.Backpack
wait(.1)
_G.NotAutoEquip = false
end
end

function EquipWeapon(ToolSe)
if not _G.NotAutoEquip then
if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
Tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
wait(.1)
game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tool)
end
end
end

function topos(Pos)
Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
if game.Players.LocalPlayer.Character.Humanoid.Sit == true then game.Players.LocalPlayer.Character.Humanoid.Sit = false end
pcall(function() tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance/210, Enum.EasingStyle.Linear),{CFrame = Pos}) end)
tween:Play()
if Distance <= 250 then
tween:Cancel()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
end
if _G.StopTween == true then
tween:Cancel()
_G.Clip = false
end
end

function GetDistance(target)
return math.floor((target.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude)
end

function TP(Pos)
Distance = (Pos.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
if Distance < 250 then
Speed = 700000
elseif Distance >= 1000 then
Speed = 200
end
game:GetService("TweenService"):Create(
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,
TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
{CFrame = Pos}
):Play()
_G.Clip = true
wait(Distance/Speed)
_G.Clip = false
end

spawn(function()
pcall(function()
while wait() do
if _G.AutoAdvanceDungeon or _G.AutoDoughBoss or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or _G.AutoFarmBoss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or _G.AutoSaber or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoDarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoBounty or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TeleportPly or _G.AutoBartilo or _G.Auto_DarkBoss or _G.GrabChest or _G.AutoFarmBounty or _G.Holy_Torch or _G.AutoFarm or _G.Clip or FarmBoss or _G.AutoElitehunter or _G.AutoThirdSea or _G.Auto_Bone == true then
if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
local Noclip = Instance.new("BodyVelocity")
Noclip.Name = "BodyClip"
Noclip.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
Noclip.MaxForce = Vector3.new(100000,100000,100000)
Noclip.Velocity = Vector3.new(0,0,0)
end
end
end
end)
end)

spawn(function()
pcall(function()
game:GetService("RunService").Stepped:Connect(function()
if _G.AutoAdvanceDungeon or _G.AutoDoughBoss or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or _G.AutoFarmBoss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or _G.AutoSaber or _G.NOCLIP or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoDarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoBounty or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TeleportPly or _G.AutoBartilo or _G.Auto_DarkBoss or _G.GrabChest or _G.AutoFarmBounty or _G.Holy_Torch or _G.AutoFarm or _G.Clip or _G.AutoElitehunter or _G.AutoThirdSea or _G.Auto_Bone == true then
for _, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
if v:IsA("BasePart") then
v.CanCollide = false
end
end
end
end)
end)
end)

spawn(function()
while wait() do
if _G.AutoDoughBoss or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or _G.AutoFarmBoss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or _G.AutoSaber or _G.NOCLIP or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoDarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TeleportPly or _G.AutoBartilo or _G.Auto_DarkBoss or _G.AutoFarm or _G.Clip or _G.AutoElitehunter or _G.AutoThirdSea or _G.Auto_Bone == true then
pcall(function()
game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("Ken",true)
end)
end
end
end)

function StopTween(target)
if not target then
_G.StopTween = true
wait()
topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
wait()
if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
end
_G.StopTween = false
_G.Clip = false
end
end

spawn(function()
pcall(function()
while wait() do
for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
if v:IsA("Tool") then
if v:FindFirstChild("RemoteFunctionShoot") then
SelectWeaponGun = v.Name
end
end
end
end
end)
end)

game:GetService("Players").LocalPlayer.Idled:connect(function()
game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
wait(1)
game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

local ScreenGui = Instance.new("ScreenGui")
local Toggle = Instance.new("TextButton")

ScreenGui.Name = "ScreenGui"
ScreenGui.Parent = game.CoreGui

Toggle.Name = "Toggle"
Toggle.Parent = ScreenGui
Toggle.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
Toggle.Position = UDim2.new(0.120833337, 0, 0.0952890813, 0)
Toggle.Size = UDim2.new(0, 50, 0, 50)
Toggle.Font = Enum.Font.Oswald
Toggle.Text = "SX"
Toggle.TextColor3 = Color3.fromRGB(255, 0, 0)
Toggle.TextScaled = true
Toggle.MouseButton1Down:connect(function()
game:GetService("VirtualInputManager"):SendKeyEvent(true,305,false,game)
game:GetService("VirtualInputManager"):SendKeyEvent(false,305,false,game)
end)

local ShadowXUI = library:AddWindow("霖溺 || Blox Fruits ",Enum.KeyCode.RightControl)
--------------------------------------------------------------------
local Main = ShadowXUI:AddTab("主要的","6026568198")
local Status = ShadowXUI:AddTab("状态","6034509993")
local Item = ShadowXUI:AddTab("项目","7044233235")
local Combat = ShadowXUI:AddTab("运动员","7251993295")
local Stats = ShadowXUI:AddTab("统计数据","7040410130")
local Teleport = ShadowXUI:AddTab("传送","6035190846")
local Dungeon = ShadowXUI:AddTab("袭击","7044284832")
local DevilFruit = ShadowXUI:AddTab("水果","7044233235")
local Shop = ShadowXUI:AddTab("商店","6031265976")
local Misc = ShadowXUI:AddTab("杂项","6034509993")
local Test = ShadowXUI:AddTab("测试","6034509993")
--------------------------------------------------------------------
Main:AddSeperator("阴影X")
Main:AddSeperator("设置场")

Time = Main:AddLabel("服务器时间")

function UpdateTime()
local GameTime = math.floor(workspace.DistributedGameTime+0.5)
local Hour = math.floor(GameTime/(60^2))%24
local Minute = math.floor(GameTime/(60^1))%60
local Second = math.floor(GameTime/(60^0))%60
Time:Set("Hr(s) : "..Hour.." Min(s) : "..Minute.." Sec(s) : "..Second)
end

spawn(function()
while task.wait() do
pcall(function()
UpdateTime()
end)
end
end)

Main:AddButton("删除声音",function()



for i, v in pairs(game.Workspace["_WorldOrigin"]:GetChildren()) do
if v.Name == "CurvedRing" or v.Name == "SlashHit" or v.Name == "SwordSlash" or v.Name == "Sounds" then
v:Destroy()
end
end
end)

Main:AddToggle("删除效果命中",false,function(value)
getgenv().D = value
end)

Main:AddButton("移除效果损坏", function()
game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = false
end)

Main:AddSeperator("快速攻击和设置")

Main:AddToggle("快速进攻",true,function(Fast)

_G.FastAttack = Fast

end)
local Module =  require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
local CombatFramework = debug.getupvalues(Module)[2]
local CameraShakerR = require(game.ReplicatedStorage.Util.CameraShaker)

spawn(function()
while true do
if _G.FastAttack then
pcall(function()
CameraShakerR:Stop()
CombatFramework.activeController.attacking = false
CombatFramework.activeController.timeToNextAttack = 0
CombatFramework.activeController.increment = 3
CombatFramework.activeController.hitboxMagnitude = 100
CombatFramework.activeController.blocking = false
CombatFramework.activeController.timeToNextBlock = 0
CombatFramework.activeController.focusStart = 0
CombatFramework.activeController.humanoid.AutoRotate = true
end)
end
task.wait()
end
end)

Main:AddToggle("自动设置复活点",true,function(value)
_G.AutoSetSpawn = value
end)

spawn(function()
pcall(function()
while wait() do
if _G.AutoSetSpawn then
if game:GetService("Players").LocalPlayer.Character.Humanoid.Health > 0 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
end
end
end
end)
end)

Main:AddToggle("带上暴徒",true,function(value)
_G.BringMonster = value
end)

WeaponList = {}

for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
if v:IsA("Tool") then
table.insert(WeaponList ,v.Name)
end
end

local SelectWeapona = Main:AddDropdown("选择武器",_G.AutoFarm,function(value)
_G.SelectWeapon = value
end)

Main:AddButton("刷新武器",function()
SelectWeapona:Clear()
for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
SelectWeapona:Add(v.Name)
end
end)

Main:AddSeperator("主要的")

local AutoFarm = Main:AddToggle("自动农场级别",_G.AutoFarm,function(value)
_G.AutoFarm = value
StopTween(_G.AutoFarm)
end)

spawn(function()
while wait() do
if _G.AutoFarm then
pcall(function()
local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
if not string.find(QuestTitle, NameMon) then
StartMagnet = false
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
end
if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
StartMagnet = false
CheckQuest()
repeat wait() topos(CFrameQuest) until (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.AutoFarm
if (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
wait(1.2)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,LevelQuest)
wait(0.5)
end
elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
CheckQuest()
if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
if v.Name == Mon then
if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
repeat task.wait()
EquipWeapon(_G.SelectWeapon)
AutoHaki()
PosMon = v.HumanoidRootPart.CFrame
topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
v.HumanoidRootPart.CanCollide = false
v.Humanoid.WalkSpeed = 0
v.Head.CanCollide = false
v.HumanoidRootPart.Size = Vector3.new(50,50,50)
StartMagnet = true
game:GetService'VirtualUser':CaptureController()
game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
until not _G.AutoFarm or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
else
StartMagnet = false
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
end
end
end
end
else
StartMagnet = false
if game:GetService("ReplicatedStorage"):FindFirstChild(Mon) then
topos(game:GetService("ReplicatedStorage"):FindFirstChild(Mon).HumanoidRootPart.CFrame * CFrame.new(5,10,7))
else
if (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 15 then
if PosMon ~= nil then
topos(PosMon * CFrame.new(5,10,7))
else
if OldPos ~= nil then
topos(OldPos.Position)
end
end
end
end
end
end
end)
end
end
end)

if World1 then
Main:AddToggle("汽车第二海",_G.AutoSecondSea,function(value)
_G.AutoSecondSea = value
StopTween(_G.AutoSecondSea)
end)

spawn(function()
while wait() do
if _G.AutoSecondSea then
pcall(function()
local MyLevel = game:GetService("Players").LocalPlayer.Data.Level.Value
if MyLevel >= 700 and World1 then
if game:GetService("Workspace").Map.Ice.Door.CanCollide == false and game:GetService("Workspace").Map.Ice.Door.Transparency == 1 then
local CFrame1 = CFrame.new(4849.29883, 5.65138149, 719.611877)
repeat topos(CFrame1) wait() until (CFrame1.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or _G.AutoSecondSea == false
wait(1.1)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress","Detective")
wait(0.5)
EquipWeapon("Key")
repeat topos(CFrame.new(1347.7124, 37.3751602, -1325.6488)) wait() until (Vector3.new(1347.7124, 37.3751602, -1325.6488)-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or _G.AutoSecondSea == false
wait(0.5)
else
if game:GetService("Workspace").Map.Ice.Door.CanCollide == false and game:GetService("Workspace").Map.Ice.Door.Transparency == 1 then
if game:GetService("Workspace").Enemies:FindFirstChild("Ice Admiral [Lv. 700] [Boss]") then
for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if v.Name == "Ice Admiral [Lv. 700] [Boss]" then
if not v.Humanoid.Health <= 0 then
if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
OldCFrameSecond = v.HumanoidRootPart.CFrame
repeat task.wait()
AutoHaki()
EquipWeapon(_G.SelectWeapon)
v.HumanoidRootPart.CanCollide = false
v.Humanoid.WalkSpeed = 0
v.Head.CanCollide = false
v.HumanoidRootPart.Size = Vector3.new(50,50,50)
v.HumanoidRootPart.CFrame = OldCFrameSecond
topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
game:GetService("VirtualUser"):CaptureController()
game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
until not _G.AutoSecondSea or not v.Parent or v.Humanoid.Health <= 0
end
else
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
end
end
end
else
if game:GetService("ReplicatedStorage"):FindFirstChild("Ice Admiral [Lv. 700] [Boss]") then
topos(game:GetService("ReplicatedStorage"):FindFirstChild("Ice Admiral [Lv. 700] [Boss]").HumanoidRootPart.CFrame * CFrame.new(5,10,7))
end
end
end
end
end
end)
end
end
end)
end

if World2 then
Main:AddToggle("汽车第三海",_G.AutoThirdSea,function(value)
_G.AutoThirdSea = value
StopTween(_G.AutoThirdSea)
end)

spawn(function()
while wait() do
if _G.AutoThirdSea then
pcall(function()
if game:GetService("Players").LocalPlayer.Data.Level.Value >= 1500 and World2 then
_G.AutoFarm = false
if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Check") == 0 then
topos(CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016))
if (CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
wait(1.5)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Begin")
end
wait(1.8)
if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra [Lv. 1500] [Boss]") then
for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if v.Name == "rip_indra [Lv. 1500] [Boss]" then
OldCFrameThird = v.HumanoidRootPart.CFrame
repeat task.wait()
AutoHaki()
EquipWeapon(_G.SelectWeapon)
topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
v.HumanoidRootPart.CFrame = OldCFrameThird
v.HumanoidRootPart.Size = Vector3.new(50,50,50)
v.HumanoidRootPart.CanCollide = false
v.Humanoid.WalkSpeed = 0
game:GetService'VirtualUser':CaptureController()
game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
until _G.AutoThirdSea == false or v.Humanoid.Health <= 0 or not v.Parent
end
end
elseif not game:GetService("Workspace").Enemies:FindFirstChild("rip_indra [Lv. 1500] [Boss]") and (CFrame.new(-26880.93359375, 22.848554611206, 473.18951416016).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1000 then
topos(CFrame.new(-26880.93359375, 22.848554611206, 473.18951416016))
end
end
end
end)
end
end
end)
end

if World2 then
Main:AddToggle("汽车农场工厂",_G.AutoFactory,function(value)
_G.AutoFactory = value
StopTween(_G.AutoFactory)
end)

spawn(function()
while wait() do
pcall(function()
if _G.AutoFactory then
if game:GetService("Workspace").Enemies:FindFirstChild("Core") then
for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if v.Name == "Core" and v.Humanoid.Health > 0 then
repeat task.wait()
AutoHaki()
EquipWeapon(_G.SelectWeapon)
topos(CFrame.new(448.46756, 199.356781, -441.389252))
game:GetService("VirtualUser"):CaptureController()
game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
until v.Humanoid.Health <= 0 or _G.AutoFactory == false
end
end
else
topos(CFrame.new(448.46756, 199.356781, -441.389252))
end
end
end)
end
end)
elseif World3 then
Main:AddToggle("汽车幻影岛",_G.AutoMirage,function(value)
_G.AutoMirage = value
end)

spawn(function()
while wait() do
if _G.AutoMirage then
pcall(function()
if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
topos(game:GetService("Workspace").Map:FindFirstChild("MysticIsland").HumanoidRootPart.CFrame * CFrame.new(0,500,-100))
end
end)
end
end
end)
end

Item:AddSeperator("混战")

Item:AddToggle("汽车超人",_G.AutoSuperhuman,function(value)
_G.AutoSuperhuman = value
end)

spawn(function()
pcall(function()
while wait() do
if _G.AutoSuperhuman then
if game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") or game.Players.LocalPlayer.Character:FindFirstChild("Combat") and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 150000 then
UnEquipWeapon("Combat")
wait(.1)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
end
if game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") then
_G.SelectWeapon = "Superhuman"
end
if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") or game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") then
if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value <= 299 then
_G.SelectWeapon = "Black Leg"
end
if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value <= 299 then
_G.SelectWeapon = "Electro"
end
if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value <= 299 then
_G.SelectWeapon = "Fishman Karate"
end
if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 299 then
_G.SelectWeapon = "Dragon Claw"
end
if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 300000 then
UnEquipWeapon("Black Leg")
wait(.1)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
end
if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 300000 then
UnEquipWeapon("Black Leg")
wait(.1)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
end
if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 750000 then
UnEquipWeapon("Electro")
wait(.1)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
end
if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 750000 then
UnEquipWeapon("Electro")
wait(.1)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
end
if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 300 and game:GetService("Players")["Localplayer"].Data.Fragments.Value >= 1500 then
UnEquipWeapon("Fishman Karate")
wait(.1)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
end
if game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 300 and game:GetService("Players")["Localplayer"].Data.Fragments.Value >= 1500 then
UnEquipWeapon("Fishman Karate")
wait(.1)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
end
if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 3000000 then
UnEquipWeapon("Dragon Claw")
wait(.1)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
end
if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 3000000 then
UnEquipWeapon("Dragon Claw")
wait(.1)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
end
end
end
end
end)
end)

Item:AddToggle("自动死步",_G.AutoDeathStep,function(value)
_G.AutoDeathStep = value
end)

spawn(function()
while wait() do wait()
if _G.AutoDeathStep then
if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Death Step") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Death Step") then
if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 450 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
_G.SelectWeapon = "Death Step"
end
if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 450 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
_G.SelectWeapon = "Death Step"
end
if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value <= 449 then
_G.SelectWeapon = "Black Leg"
end
else
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
end
end
end
end)

Item:AddToggle("自动鲨鱼人空手道",_G.AutoSharkman,function(value)
_G.AutoSharkman = value
end)

spawn(function()
pcall(function()
while wait() do
if _G.AutoSharkman then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate"), "keys") then
if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Water Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Water Key") then
topos(CFrame.new(-2604.6958, 239.432526, -10315.1982, 0.0425701365, 0, -0.999093413, 0, 1, 0, 0.999093413, 0, 0.0425701365))
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 400 then
else
Ms = "Tide Keeper [Lv. 1475] [Boss]"
if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if v.Name == Ms then
OldCFrameShark = v.HumanoidRootPart.CFrame
repeat task.wait()
AutoHaki()
EquipWeapon(_G.SelectWeapon)
v.Head.CanCollide = false
v.Humanoid.WalkSpeed = 0
v.HumanoidRootPart.CanCollide = false
v.HumanoidRootPart.Size = Vector3.new(50,50,50)
v.HumanoidRootPart.CFrame = OldCFrameShark
topos(v.HumanoidRootPart.CFrame*CFrame.new(5,10,7))
game:GetService("VirtualUser"):CaptureController()
game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670))
sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoSharkman == false or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Water Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Water Key")
end
end
else
topos(CFrame.new(-3570.18652, 123.328949, -11555.9072, 0.465199202, -1.3857326e-08, 0.885206044, 4.0332897e-09, 1, 1.35347511e-08, -0.885206044, -2.72606271e-09, 0.465199202))
wait(3)
end
end
else
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
end
end
end
end)
end)

Item:AddToggle("自动电动爪",_G.AutoElectricClaw,function(value)
_G.AutoElectricClaw = value
StopTween(_G.AutoElectricClaw)
end)

spawn(function()
pcall(function()
while wait() do
if _G.AutoElectricClaw then
if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electric Claw") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electric Claw") then
if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 400 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
_G.SelectWeapon = "Electric Claw"
end
if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 400 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
_G.SelectWeapon = "Electric Claw"
end
if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value <= 399 then
_G.SelectWeapon = "Electro"
end
else
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
end
end
if _G.AutoElectricClaw then
if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro") then
if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 400 or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 400 then
if _G.AutoFarm == false then
repeat task.wait()
topos(CFrame.new(-10371.4717, 330.764496, -10131.4199))
until not _G.AutoElectricClaw or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw","Start")
wait(2)
repeat task.wait()
topos(CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438))
until not _G.AutoElectricClaw or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438).Position).Magnitude <= 10
wait(1)
repeat task.wait()
topos(CFrame.new(-10371.4717, 330.764496, -10131.4199))
until not _G.AutoElectricClaw or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10
wait(1)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
elseif _G.AutoFarm == true then
_G.AutoFarm = false
wait(1)
repeat task.wait()
topos(CFrame.new(-10371.4717, 330.764496, -10131.4199))
until not _G.AutoElectricClaw or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw","Start")
wait(2)
repeat task.wait()
topos(CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438))
until not _G.AutoElectricClaw or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438).Position).Magnitude <= 10
wait(1)
repeat task.wait()
topos(CFrame.new(-10371.4717, 330.764496, -10131.4199))
until not _G.AutoElectricClaw or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10
wait(1)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
_G.SelectWeapon = "Electric Claw"
wait(.1)
_G.AutoFarm = true
end
end
end
end
end
end)
end)

Item:AddToggle("自动龙爪",_G.AutoDragonTalon,function(value)
_G.AutoDragonTalon = value
end)

spawn(function()
while wait() do
if _G.AutoDragonTalon then
if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Talon") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Talon") then
if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 400 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
_G.SelectWeapon = "Dragon Talon"
end
if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 400 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
_G.SelectWeapon = "Dragon Talon"
end
if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 399 then
_G.SelectWeapon = "Dragon Claw"
end
else
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
end
end
end
end)

Main:AddToggle("汽车农场BF精通",_G.AutoFarmFruitMastery,function(value)
_G.AutoFarmFruitMastery = value
StopTween(_G.AutoFarmFruitMastery)
if _G.AutoFarmFruitMastery == false then
UseSkill = false
end
end)

spawn(function()
while wait() do
if _G.AutoFarmFruitMastery then
pcall(function()
local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
if not string.find(QuestTitle, NameMon) then
Magnet = false
UseSkill = false
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
end
if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
StartMasteryFruitMagnet = false
UseSkill = false
CheckQuest()
repeat wait()
topos(CFrameQuest)
until (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.AutoFarmFruitMastery
if (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
wait(1.2)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,LevelQuest)
wait(0.5)
end
elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
CheckQuest()
if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
if v.Name == Mon then
if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
HealthMs = v.Humanoid.MaxHealth * _G.Kill_At/100
repeat task.wait()
if v.Humanoid.Health <= HealthMs then
AutoHaki()
EquipWeapon(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value)
topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
v.HumanoidRootPart.CanCollide = false
PosMonMasteryFruit = v.HumanoidRootPart.CFrame
v.Humanoid.WalkSpeed = 0
v.Head.CanCollide = false
UseSkill = true
else
UseSkill = false
AutoHaki()
EquipWeapon(_G.SelectWeapon)
topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
v.HumanoidRootPart.CanCollide = false
v.HumanoidRootPart.Size = Vector3.new(50,50,50)
PosMonMasteryFruit = v.HumanoidRootPart.CFrame
v.Humanoid.WalkSpeed = 0
v.Head.CanCollide = false
end
StartMasteryFruitMagnet = true
game:GetService'VirtualUser':CaptureController()
game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
until not _G.AutoFarmFruitMastery or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
else
UseSkill = false
StartMasteryFruitMagnet = false
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
end
end
end
end
else
StartMasteryFruitMagnet = false
UseSkill = false
local Mob = game:GetService("ReplicatedStorage"):FindFirstChild(Mon)
if Mob then
topos(Mob.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
else
if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.Y <= 1 then
game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = true
task.wait()
game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = false
end
end
end
end
end)
end
end
end)

spawn(function()
while wait() do
if UseSkill then
pcall(function()
CheckQuest()
for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if game:GetService("Players").LocalPlayer.Character:FindFirstChild(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value) then
MasBF = game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Data.DevilFruit.Value].Level.Value
elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value) then
MasBF = game:GetService("Players").LocalPlayer.Backpack[game:GetService("Players").LocalPlayer.Data.DevilFruit.Value].Level.Value
end
if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon-Dragon") then
if _G.SkillZ then
local args = {
[1] = PosMonMasteryFruit.Position
}
game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
end
if _G.SkillX then
local args = {
[1] = PosMonMasteryFruit.Position
}
game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
end
if _G.SkillC then
local args = {
[1] = PosMonMasteryFruit.Position
}
game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
wait(2)
game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
end
elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom-Venom") then
if _G.SkillZ then
local args = {
[1] = PosMonMasteryFruit.Position
}
game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
end
if _G.SkillX then
local args = {
[1] = PosMonMasteryFruit.Position
}
game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
end
if _G.SkillC then
local args = {
[1] = PosMonMasteryFruit.Position
}
game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
wait(2)
game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
end
elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha") then
if _G.SkillZ and game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Size == Vector3.new(2, 2.0199999809265, 1) then
local args = {
[1] = PosMonMasteryFruit.Position
}
game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
end
if _G.SkillX then
local args = {
[1] = PosMonMasteryFruit.Position
}
game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
end
if _G.SkillC then
local args = {
[1] = PosMonMasteryFruit.Position
}
game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
end
if _G.SkillV then
local args = {
[1] = PosMonMasteryFruit.Position
}
game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
game:GetService("VirtualInputManager"):SendKeyEvent(true,"V",false,game)
game:GetService("VirtualInputManager"):SendKeyEvent(false,"V",false,game)
end
elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value) then
if _G.SkillZ then
local args = {
[1] = PosMonMasteryFruit.Position
}
game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
end
if _G.SkillX then
local args = {
[1] = PosMonMasteryFruit.Position
}
game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
end
if _G.SkillC then
local args = {
[1] = PosMonMasteryFruit.Position
}
game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
end
if _G.SkillV then
local args = {
[1] = PosMonMasteryFruit.Position
}
game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
game:GetService("VirtualInputManager"):SendKeyEvent(true,"V",false,game)
game:GetService("VirtualInputManager"):SendKeyEvent(false,"V",false,game)
end
end
end
end)
end
end
end)

spawn(function()
game:GetService("RunService").RenderStepped:Connect(function()
pcall(function()
if UseSkill then
for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Notifications:GetChildren()) do
if v.Name == "NotificationTemplate" then
if string.find(v.Text,"Skill locked!") then
v:Destroy()
end
end
end
end
end)
end)
end)

spawn(function()
pcall(function()
game:GetService("RunService").RenderStepped:Connect(function()
if UseSkill then
local args = {
[1] = PosMonMasteryFruit.Position
}
game:GetService("Players").LocalPlayer.Character[game:GetService("Players").LocalPlayer.Data.DevilFruit.Value].RemoteEvent:FireServer(unpack(args))
end
end)
end)
end)

Main:AddToggle("自动农炮精通",_G.AutoFarmGunMastery,function(value)
_G.AutoFarmGunMastery = value
StopTween(_G.AutoFarmGunMastery)
end)

spawn(function()
pcall(function()
while wait() do
if _G.AutoFarmGunMastery then
local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
if not string.find(QuestTitle, NameMon) then
Magnet = false
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
end
if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
StartMasteryGunMagnet = false
CheckQuest()
topos(CFrameQuest)
if (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
wait(1.2)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, LevelQuest)
end
elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
CheckQuest()
if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
pcall(function()
for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if v.Name == Mon then
repeat task.wait()
if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
HealthMin = v.Humanoid.MaxHealth * _G.Kill_At/100
if v.Humanoid.Health <= HealthMin then
EquipWeapon(SelectWeaponGun)
topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
v.Humanoid.WalkSpeed = 0
v.HumanoidRootPart.CanCollide = false
v.HumanoidRootPart.Size = Vector3.new(2,2,1)
v.Head.CanCollide = false
local args = {
[1] = v.HumanoidRootPart.Position,
[2] = v.HumanoidRootPart
}
game:GetService("Players").LocalPlayer.Character[SelectWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args))
else
AutoHaki()
EquipWeapon(_G.SelectWeapon)
v.Humanoid.WalkSpeed = 0
v.HumanoidRootPart.CanCollide = false
v.Head.CanCollide = false
v.HumanoidRootPart.Size = Vector3.new(50,50,50)
topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
game:GetService'VirtualUser':CaptureController()
game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
end
StartMasteryGunMagnet = true
PosMonMasteryGun = v.HumanoidRootPart.CFrame
else
StartMasteryGunMagnet = false
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
end
until v.Humanoid.Health <= 0 or _G.AutoFarmGunMastery == false or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
StartMasteryGunMagnet = false
end
end
end)
else
StartMasteryGunMagnet = false
local Mob = game:GetService("ReplicatedStorage"):FindFirstChild(Mon)
if Mob then
topos(Mob.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
else
if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.Y <= 1 then
game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = true
task.wait()
game:GetService("Players").LocalPlayer.Character.Humanoid.Jump = false
end
end
end
end
end
end
end)
end)

_G.Kill_At = 25
Main:AddSlider("在%s处杀死",1,100,25,function(value)
_G.Kill_At = value
end)

Main:AddSeperator("打BOSS")

local Boss = {}

for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
if string.find(v.Name, "Boss") then
if v.Name == "Ice Admiral [Lv. 700] [Boss]" then
else
table.insert(Boss, v.Name)
end
end
end

local BossName = Main:AddDropdown("选择 Boss",Boss,function(value)
_G.SelectBoss = value
end)

Main:AddButton("刷新 Boss",function()
BossName:Clear()
for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
if string.find(v.Name, "Boss") then
BossName:Add(v.Name)
end
end
end)

Main:AddToggle("汽车农场 Boss",_G.AutoFarmBoss,function(value)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
_G.AutoFarmBoss = value
StopTween(_G.AutoFarmBoss)
end)

spawn(function()
while wait() do
if _G.AutoFarmBoss then
pcall(function()
if game:GetService("Workspace").Enemies:FindFirstChild(_G.SelectBoss) then
for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if v.Name == _G.SelectBoss then
if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
repeat task.wait()
AutoHaki()
EquipWeapon(_G.SelectWeapon)
v.HumanoidRootPart.CanCollide = false
v.Humanoid.WalkSpeed = 0
v.HumanoidRootPart.Size = Vector3.new(80,80,80)
topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
game:GetService("VirtualUser"):CaptureController()
game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
until not _G.AutoFarmBoss or not v.Parent or v.Humanoid.Health <= 0
end
end
end
else
if game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectBoss) then
topos(game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectBoss).HumanoidRootPart.CFrame * CFrame.new(5,10,7))
end
end
end)
end
end
end)

Main:AddToggle("自动农场全部Boss",_G.AutoAllBoss,function(value)
_G.AutoAllBoss = value
StopTween(_G.AutoAllBoss)
end)

Main:AddToggle("自动农场全部Boss跳",_G.AutoAllBossHop,function(value)
_G.AutoAllBossHop = value
end)

spawn(function()
while wait() do
if _G.AutoAllBoss then
pcall(function()
for i,v in pairs(game.ReplicatedStorage:GetChildren()) do
if string.find(v.Name,"Boss") then
if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 17000 then
repeat task.wait()
AutoHaki()
EquipWeapon(_G.SelectWeapon)
v.Humanoid.WalkSpeed = 0
v.HumanoidRootPart.CanCollide = false
v.Head.CanCollide = false
v.HumanoidRootPart.Size = Vector3.new(80,80,80)
topos(v.HumanoidRootPart.CFrame*CFrame.new(5,10,7))
game:GetService'VirtualUser':CaptureController()
game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
until v.Humanoid.Health <= 0 or _G.AutoAllBoss == false or not v.Parent
end
else
if _G.AutoAllBossHop then
Hop()
end
end
end
end)
end
end
end)

Status:AddSeperator("暴徒被杀")

local MobKilled = Status:AddLabel("失败：不适用")

if World1 and World2 then
Status:AddLabel("Defeat : Sea 3")
end

spawn(function()
while wait() do
pcall(function()
if string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 88 then
MobKilled:Set("Defeat : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,41))
elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 87 then
MobKilled:Set("Defeat : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,40))
elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 86 then
MobKilled:Set("Defeat : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,39))
else
MobKilled:Set("Defeat : Cake Prince/Dough King Is Spawning")
end
end)
end
end)

Main:AddToggle("自动面团Boss",_G.AutoDoughBoss,function(value)
_G.AutoDoughBoss = value
StopTween(_G.AutoDoughBoss)
end)

spawn(function()
while wait() do
pcall(function()
if string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 88 then
KillMob = (tonumber(string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,41)) - 500)
elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 87 then
KillMob = (tonumber(string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),40,41)) - 500)
elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 86 then
KillMob = (tonumber(string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),41,41)) - 500)
end
end)
end
end)

spawn(function()
while wait() do
if _G.AutoDoughBoss then
pcall(function()
if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if v.Name == "Cake Prince [Lv. 2300] [Raid Boss]" or v.Name == "Dough King [Lv. 2300] [Raid Boss]" then
if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
repeat task.wait()
AutoHaki()
EquipWeapon(_G.SelectWeapon)
v.HumanoidRootPart.CanCollide = false
v.Humanoid.WalkSpeed = 0
v.HumanoidRootPart.Size = Vector3.new(50,50,50)
topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
game:GetService("VirtualUser"):CaptureController()
game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
until not _G.AutoDoughBoss or not v.Parent or v.Humanoid.Health <= 0
end
end
end
else
if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]").HumanoidRootPart.CFrame * CFrame.new(5,10,7))
else
if KillMob == 0 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner",true)
end
if game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 1 then
if game:GetService("Workspace").Enemies:FindFirstChild("Cookie Crafter [Lv. 2200]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard [Lv. 2225]") or game:GetService("Workspace").Enemies:FindFirstChild("Baking Staff [Lv. 2250]") or game:GetService("Workspace").Enemies:FindFirstChild("Head Baker [Lv. 2275]") then
for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if v.Name == "Cookie Crafter [Lv. 2200]" or v.Name == "Cake Guard [Lv. 2225]" or v.Name == "Baking Staff [Lv. 2250]" or v.Name == "Head Baker [Lv. 2275]" then
if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
repeat task.wait()
AutoHaki()
EquipWeapon(_G.SelectWeapon)
v.HumanoidRootPart.CanCollide = false
v.Humanoid.WalkSpeed = 0
v.Head.CanCollide = false
v.HumanoidRootPart.Size = Vector3.new(50,50,50)
MagnetDough = true
PosMonDoughOpenDoor = v.HumanoidRootPart.CFrame
topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
game:GetService("VirtualUser"):CaptureController()
game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
until not _G.AutoDoughBoss or not v.Parent or v.Humanoid.Health <= 0 or game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0 or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or KillMob == 0
end
end
end
else
MagnetDough = false
if game:GetService("ReplicatedStorage"):FindFirstChild("Cookie Crafter [Lv. 2200]") then
topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cookie Crafter [Lv. 2200]").HumanoidRootPart.CFrame * CFrame.new(5,10,7))
else
if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Guard [Lv. 2225]") then
topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Guard [Lv. 2225]").HumanoidRootPart.CFrame * CFrame.new(5,10,7))
else
if game:GetService("ReplicatedStorage"):FindFirstChild("Baking Staff [Lv. 2250]") then
topos(game:GetService("ReplicatedStorage"):FindFirstChild("Baking Staff [Lv. 2250]").HumanoidRootPart.CFrame * CFrame.new(5,10,7))
else
if game:GetService("ReplicatedStorage"):FindFirstChild("Head Baker [Lv. 2275]") then
topos(game:GetService("ReplicatedStorage"):FindFirstChild("Head Baker [Lv. 2275]").HumanoidRootPart.CFrame * CFrame.new(5,10,7))
end
end
end
end
end
else
if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Dough King [Lv. 2300] [Raid Boss]") then
topos(game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]").HumanoidRootPart.CFrame * CFrame.new(5,10,7))
topos(game:GetService("Workspace").Enemies:FindFirstChild("Dough King [Lv. 2300] [Raid Boss]").HumanoidRootPart.CFrame * CFrame.new(5,10,7))
else
if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]").HumanoidRootPart.CFrame * CFrame.new(5,10,7))
topos(game:GetService("ReplicatedStorage"):FindFirstChild("Dough King [Lv. 2300] [Raid Boss]").HumanoidRootPart.CFrame * CFrame.new(5,10,7))
end
end
end
end
end
end)
end
end
end)

Raid:AddSeperator("高级突袭")

Raid:AddToggle("自动解锁鸟：凤凰突袭",_G.AutoAdvanceDungeon,function(value)
_G.AutoAdvanceDungeon = value
StopTween(_G.AutoAdvanceDungeon)
end)

spawn(function()
while wait() do
if _G.AutoAdvanceDungeon then
pcall(function()
if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Phoenix") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Phoenix") then
if game.Players.LocalPlayer.Backpack:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
if game.Players.LocalPlayer.Backpack:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).Level.Value >= 400 then
topos(CFrame.new(-2812.76708984375, 254.803466796875, -12595.560546875))
if (CFrame.new(-2812.76708984375, 254.803466796875, -12595.560546875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
wait(1.5)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SickScientist","Check")
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SickScientist","Heal")
end
end
elseif game.Players.LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
if game.Players.LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).Level.Value >= 400 then
topos(CFrame.new(-2812.76708984375, 254.803466796875, -12595.560546875))
if (CFrame.new(-2812.76708984375, 254.803466796875, -12595.560546875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
wait(1.5)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SickScientist","Check")
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SickScientist","Heal")
end
end
end
end
end)
end
end
end)

Item:AddSeperator("巴迪剑")

Item:AddToggle("自动伙伴剑",_G.AutoBudySword,function(value)
_G.AutoBudySword = value
StopTween(_G.AutoBudySword)
end)

Item:AddToggle("自动伙伴剑跳",_G.AutoBudySwordHop,function(value)
_G.AutoBudySwordHop = value
end)

spawn(function()
while wait() do
if _G.AutoBudySword then
pcall(function()
if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if v.Name == "Cake Queen [Lv. 2175] [Boss]" then
if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
repeat task.wait()
AutoHaki()
EquipWeapon(_G.SelectWeapon)
v.HumanoidRootPart.CanCollide = false
v.Humanoid.WalkSpeed = 0
v.HumanoidRootPart.Size = Vector3.new(50,50,50)
topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
game:GetService("VirtualUser"):CaptureController()
game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
until not _G.AutoBudySword or not v.Parent or v.Humanoid.Health <= 0
end
end
end
else
if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen [Lv. 2175] [Boss]").HumanoidRootPart.CFrame * CFrame.new(5,10,7))
else
if _G.AutoBudySwordHop then
Hop()
end
end
end
end)
end
end
end)

Status:AddSeperator("精英猎手")
local EliteProgress = Status:AddLabel("Elite Progress : N/A")

spawn(function()
pcall(function()
while wait() do
EliteProgress:Set("Elite Progress : "..game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress"))
end
end)
end)

Status:AddSeperator("灵魂收割者")
local RCheck = Status:AddLabel("Soul Reaper : Not Spawning")

if World1 and World2 then
RCheck:Set("Soul Reaper : Sea 3")
end

if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if string.find(v.Name , "Soul Reaper") then
RCheck:Set("Soul Reaper : Spawning")
end
end
end

Status:AddSeperator("rip_indra")
local ICheck = Status:AddLabel("Rip_Indra True Form : Not Spawning")

if World1 and World2 then
RCheck:Set("Rip_Indra True Form : Sea 3")
end

if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("rip_indra [Lv. 5000] [Raid Boss]") then
for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if v.Name == ("rip_indra True Form [Lv. 5000] [Raid Boss]" or v.Name == "rip_indra [Lv. 5000] [Raid Boss]") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
ICheck:Set("Rip_Indra True Form : Spawning")
end
end
end

Main:AddToggle("汽车精英猎人",_G.AutoElitehunter,function(value)
_G.AutoElitehunter = value
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
StopTween(_G.AutoElitehunter)
end)

spawn(function()
while wait() do
if _G.AutoElitehunter and World3 then
pcall(function()
local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
repeat  wait()
topos(CFrame.new(-5418.892578125, 313.74130249023, -2826.2260742188))
until not _G.AutoElitehunter or (Vector3.new(-5418.892578125, 313.74130249023, -2826.2260742188)-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3
if (Vector3.new(-5418.892578125, 313.74130249023, -2826.2260742188)-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
wait(1.1)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
wait(0.5)
end
elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
if string.find(QuestTitle,"Diablo") or string.find(QuestTitle,"Deandre") or string.find(QuestTitle,"Urban") then
if game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") then
for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if v.Name == "Diablo [Lv. 1750]" or v.Name == "Deandre [Lv. 1750]" or v.Name == "Urban [Lv. 1750]" then
if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
repeat task.wait()
AutoHaki()
EquipWeapon(_G.SelectWeapon)
v.HumanoidRootPart.CanCollide = false
v.Humanoid.WalkSpeed = 0
v.HumanoidRootPart.Size = Vector3.new(50,50,50)
topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
game:GetService("VirtualUser"):CaptureController()
game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
until _G.AutoElitehunter == false or v.Humanoid.Health <= 0 or not v.Parent
end
end
end
else
if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]") then
topos(game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]").HumanoidRootPart.CFrame * CFrame.new(5,10,7))
elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]") then
topos(game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]").HumanoidRootPart.CFrame * CFrame.new(5,10,7))
elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]") then
topos(game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]").HumanoidRootPart.CFrame * CFrame.new(5,10,7))
else
if _G.AutoEliteHunterHop then
Hop()
else
topos(CFrame.new(-5418.892578125, 313.74130249023, -2826.2260742188))
end
end
end
end
end
end)
end
end
end)

Main:AddToggle("自动精英猎人跳",_G.AutoEliteHunterHop,function(value)
_G.AutoEliteHunterHop = value
end)

Item:AddSeperator("神圣的镰刀")

Item:AddToggle("自动空心大镰刀",_G.AutoFarmBossHallow,function(value)
_G.AutoFarmBossHallow = value
StopTween(_G.AutoFarmBossHallow)
end)

Item:AddToggle("自动空心镰刀跳",_G.AutoFarmBossHallowHop,function(value)
_G.AutoFarmBossHallowHop = value
end)

spawn(function()
while wait() do
if _G.AutoFarmBossHallow then
pcall(function()
if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if string.find(v.Name , "Soul Reaper") then
repeat task.wait()
EquipWeapon(_G.SelectWeapon)
AutoHaki()
v.HumanoidRootPart.Size = Vector3.new(50,50,50)
topos(v.HumanoidRootPart.CFrame*CFrame.new(5,10,7))
game:GetService("VirtualUser"):CaptureController()
game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670))
v.HumanoidRootPart.Transparency = 1
sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
until v.Humanoid.Health <= 0 or _G.AutoFarmBossHallow == false
end
end
elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hallow Essence") then
repeat topos(CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125)) wait() until (CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8
EquipWeapon("Hallow Essence")
else
if game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
topos(game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]").HumanoidRootPart.CFrame * CFrame.new(5,10,7))
else
if _G.AutoFarmBossHallowHop then
Hop()
end
end
end
end)
end
end
end)

Item:AddSeperator("黑暗匕首")

Item:AddToggle("自动黑暗匕首",_G.AutoDarkDagger,function(value)
_G.AutoDarkDagger = value
StopTween(_G.AutoDarkDagger)
end)

spawn(function()
pcall(function()
while wait() do
if _G.AutoDarkDagger then
if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("rip_indra [Lv. 5000] [Raid Boss]") then
for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if v.Name == ("rip_indra True Form [Lv. 5000] [Raid Boss]" or v.Name == "rip_indra [Lv. 5000] [Raid Boss]") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
repeat task.wait()
pcall(function()
AutoHaki()
EquipWeapon(_G.SelectWeapon)
v.HumanoidRootPart.CanCollide = false
v.HumanoidRootPart.Size = Vector3.new(50,50,50)
topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
game:GetService("VirtualUser"):CaptureController()
game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670),workspace.CurrentCamera.CFrame)
end)
until _G.AutoDarkDagger == false or v.Humanoid.Health <= 0
end
end
else
topos(CFrame.new(-5344.822265625, 423.98541259766, -2725.0930175781))
end
end
end
end)
end)

Item:AddToggle("自动黑暗匕首跳",_G.AutoDarkDagger_Hop,function(value)
_G.AutoDarkDagger_Hop = value
end)

spawn(function()
pcall(function()
while wait() do
if (_G.AutoDarkDagger_Hop and _G.AutoDarkDagger) and World3 and not game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") and not game:GetService("Workspace").Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") then
Hop()
end
end
end)
end)

Item:AddSeperator("天鹅眼镜")

Item:AddToggle("汽车天鹅眼镜",_G.AutoFarmSwanGlasses,function(value)
_G.AutoFarmSwanGlasses = value
StopTween(_G.AutoFarmSwanGlasses)
end)

spawn(function()
pcall(function()
while wait() do
if _G.AutoFarmSwanGlasses then
if game:GetService("Workspace").Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]") then
for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if v.Name == "Don Swan [Lv. 1000] [Boss]" and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
repeat task.wait()
pcall(function()
AutoHaki()
EquipWeapon(_G.SelectWeapon)
v.HumanoidRootPart.CanCollide = false
v.HumanoidRootPart.Size = Vector3.new(50,50,50)
topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
game:GetService("VirtualUser"):CaptureController()
game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670))
sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
end)
until _G.AutoFarmSwanGlasses == false or v.Humanoid.Health <= 0
end
end
else
repeat task.wait()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(2284.912109375, 15.537666320801, 905.48291015625))
until (CFrame.new(2284.912109375, 15.537666320801, 905.48291015625).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 or _G.AutoFarmSwanGlasses == false
end
end
end
end)
end)

Item:AddToggle("汽车天鹅眼镜店",_G.AutoFarmSwanGlasses_Hop,function(value)
_G.AutoFarmSwanGlasses_Hop = value
end)

spawn(function()
pcall(function()
while wait(.1) do
if (_G.AutoFarmSwanGlasses and _G.AutoFarmSwanGlasses_Hop) and World2 and not game:GetService("ReplicatedStorage"):FindFirstChild("Don Swan [Lv. 1000] [Boss]") and not game:GetService("Workspace").Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]") then
Hop()
end
end
end)
end)

Main:AddSeperator("骨头")

local BoneFarm = Main:AddToggle("自动农场骨头",_G.Auto_Bone,function(value)
_G.Auto_Bone = value
StopTween(_G.Auto_Bone)
end)

spawn(function()
while wait() do
if _G.Auto_Bone and World3 then
pcall(function()
if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton [Lv. 1975]") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie [Lv. 2000]") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul [Lv. 2025]") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy [Lv. 2050]") then
for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name == "Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]" then
if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
repeat task.wait()
AutoHaki()
EquipWeapon(_G.SelectWeapon)
v.HumanoidRootPart.CanCollide = false
v.Humanoid.WalkSpeed = 0
v.Head.CanCollide = false
StartMagnetBoneMon = true
PosMonBone = v.HumanoidRootPart.CFrame
topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
game:GetService("VirtualUser"):CaptureController()
game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
until not _G.Auto_Farm_Bone or not v.Parent or v.Humanoid.Health <= 0
end
end
end
else
StartMagnetBoneMon = false
for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
if v.Name == "Reborn Skeleton [Lv. 1975]" then
topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
elseif v.Name == "Living Zombie [Lv. 2000]" then
topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
elseif v.Name == "Demonic Soul [Lv. 2025]" then
topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
elseif v.Name == "Posessed Mummy [Lv. 2050]" then
topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
end
end
end
end)
end
end
end)

Main:AddToggle("自动随机惊喜",_G.Auto_Random_Bone,function(value)
_G.Auto_Random_Bone = value
end)

spawn(function()
pcall(function()
while wait(.1) do
if _G.Auto_Random_Bone then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
end
end
end)
end)

Main:AddSeperator("观察")

local ObservationRange = Main:AddLabel("观测范围等级：不适用")

spawn(function()
while wait() do
pcall(function()
ObservationRange:Set("Observation Range Level : "..math.floor(game:GetService("Players").LocalPlayer.VisionRadius.Value))
end)
end
end)

Main:AddToggle("自动农场观察",_G.AutoObservation,function(value)
_G.AutoObservation = value
StopTween(_G.AutoObservation)
end)

spawn(function()
while wait() do
pcall(function()
if _G.AutoObservation then
repeat task.wait()
if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
game:GetService('VirtualUser'):CaptureController()
game:GetService('VirtualUser'):SetKeyDown('0x65')
wait(2)
game:GetService('VirtualUser'):SetKeyUp('0x65')
end
until game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") or not _G.AutoObservation
end
end)
end
end)

Main:AddToggle("自动农场观察跳",_G.AutoObservation_Hop,function(value)
_G.AutoObservation_Hop = value
end)

spawn(function()
pcall(function()
while wait() do
if _G.AutoObservation then
if game:GetService("Players").LocalPlayer.VisionRadius.Value >= 3000 then
game:GetService("StarterGui"):SetCore("SendNotification", {
Icon = "rbxassetid://0";
Title = "Observation",
Text = "你有最高分" --可能会有问题--
})
wait(2)
else
if World2 then
if game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate [Lv. 1200]") then
if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
repeat task.wait()
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate [Lv. 1200]").HumanoidRootPart.CFrame * CFrame.new(3,0,0)
until _G.AutoObservation == false or not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
else
repeat task.wait()
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate [Lv. 1200]").HumanoidRootPart.CFrame * CFrame.new(0,50,0)+
wait(1)
if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and _G.AutoObservation_Hop == true then
game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players").LocalPlayer)
end
until _G.AutoObservation == false or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
end
else
topos(CFrame.new(-5478.39209, 15.9775667, -5246.9126))
end
elseif World1 then
if game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain [Lv. 650]") then
if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
repeat task.wait()
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain [Lv. 650]").HumanoidRootPart.CFrame * CFrame.new(3,0,0)
until _G.AutoObservation == false or not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
else
repeat task.wait()
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain [Lv. 650]").HumanoidRootPart.CFrame * CFrame.new(0,50,0)
wait(1)
if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and _G.AutoObservation_Hop == true then
game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players").LocalPlayer)
end
until _G.AutoObservation == false or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
end
else
topos(CFrame.new(5533.29785, 88.1079102, 4852.3916))
end
elseif World3 then
if game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander [Lv. 1650]") then
if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
repeat task.wait()
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander [Lv. 1650]").HumanoidRootPart.CFrame * CFrame.new(3,0,0)
until _G.AutoObservation == false or not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
else
repeat task.wait()
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander [Lv. 1650]").HumanoidRootPart.CFrame * CFrame.new(0,50,0)
wait(1)
if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and _G.AutoObservation_Hop == true then
game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players").LocalPlayer)
end
until _G.AutoObservation == false or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")
end
else
topos(CFrame.new(4530.3540039063, 656.75695800781, -131.60952758789))
end
end
end
end
end
end)
end)

Item:AddSeperator("军刀")

Item:AddToggle("自动军刀",_G.AutoSaber,function(value)
_G.AutoSaber = value
StopTween(_G.AutoSaber)
end)

Item:AddToggle("自动军刀跳跃",_G.AutoSaber_Hop,function(value)
_G.AutoSaber_Hop = value
end)

spawn(function()
while wait() do
if _G.AutoSaber then
pcall(function()
if game:GetService("Workspace").Enemies:FindFirstChild("Saber Expert [Lv. 200] [Boss]") then
for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if v.Name == "Saber Expert [Lv. 200] [Boss]" then
if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
PosMonSaber = v.HumanoidRootPart.CFrame
repeat task.wait()
AutoHaki()
EquipWeapon(_G.SelectWeapon)
v.HumanoidRootPart.CanCollide = false
v.Humanoid.WalkSpeed = 0
v.HumanoidRootPart.CFrame = PosMonSaber
topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
v.HumanoidRootPart.Size = Vector3.new(50,50,50)
game:GetService("VirtualUser"):CaptureController()
game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
until not _G.AutoSaber or not v.Parent or v.Humanoid.Health <= 0
end
end
end
else
if game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert [Lv. 200] [Boss]") then
topos(game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert [Lv. 200] [Boss]").HumanoidRootPart.CFrame * CFrame.new(5,10,7))
else
if _G.AutoSaber_Hop then
Hop()
end
end
end
end)
end
end
end)

Shop:AddSeperator("传说中的剑")

Shop:AddToggle("汽车购买传奇之剑",_G.AutoBuyLegendarySword,function(value)
_G.AutoBuyLegendarySword = value
end)

spawn(function()
while wait() do
if _G.AutoBuyLegendarySword then
pcall(function()
local args = {
[1] = "LegendarySwordDealer",
[2] = "1"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
local args = {
[1] = "LegendarySwordDealer",
[2] = "2"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
local args = {
[1] = "LegendarySwordDealer",
[2] = "3"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
if _G.AutoBuyLegendarySword_Hop and _G.AutoBuyLegendarySword and World2 then
wait(10)
Hop()
end
end)
end
end
end)

Shop:AddToggle("汽车传奇剑跳",_G.AutoBuyLegendarySword_Hop,function(value)
_G.AutoBuyLegendarySword_Hop = value
end)

Shop:AddSeperator("增强颜色")

Shop:AddToggle("自动增强颜色",_G.AutoBuyEnchancementColour,function(value)
_G.AutoBuyEnchancementColour = value
end)

Shop:AddToggle("自动增强跳跃",_G.AutoBuyEnchancementColour_Hop,function(value)
_G.AutoBuyEnchancementColour_Hop = value
end)

spawn(function()
while wait() do
if _G.AutoBuyEnchancementColour then
local args = {
[1] = "ColorsDealer",
[2] = "2"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
if _G.AutoBuyEnchancementColour_Hop and _G.AutoBuyEnchancementColour and not World1 then
wait(10)
Hop()
end
end
end
end)

Item:AddSeperator("其他")

Item:AddToggle("自动火枪帽",_G.AutoMusketeerHat,function(value)
_G.AutoMusketeerHat = value
StopTween(_G.AutoMusketeerHat)
end)

spawn(function()
pcall(function()
while wait(.1) do
if _G.AutoMusketeerHat then
if game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress").KilledBandits == false then
if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Forest Pirate") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
if game:GetService("Workspace").Enemies:FindFirstChild("Forest Pirate [Lv. 1825]") then
for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if v.Name == "Forest Pirate [Lv. 1825]" then
repeat task.wait()
pcall(function()
EquipWeapon(_G.SelectWeapon)
AutoHaki()
v.HumanoidRootPart.Size = Vector3.new(50,50,50)
topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
v.HumanoidRootPart.CanCollide = false
game:GetService'VirtualUser':CaptureController()
game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
MusketeerHatMon = v.HumanoidRootPart.CFrame
StartMagnetMusketeerhat = true
end)
until _G.AutoMusketeerHat == false or not v.Parent or v.Humanoid.Health <= 0 or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
StartMagnetMusketeerhat = false
end
end
else
StartMagnetMusketeerhat = false
topos(CFrame.new(-13206.452148438, 425.89199829102, -7964.5537109375))
end
else
topos(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125))
if (Vector3.new(-12443.8671875, 332.40396118164, -7675.4892578125) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
wait(1.5)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","CitizenQuest",1)
end
end
elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress").KilledBoss == false then
if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") then
for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if v.Name == "Captain Elephant [Lv. 1875] [Boss]" then
OldCFrameElephant = v.HumanoidRootPart.CFrame
repeat task.wait()
pcall(function()
EquipWeapon(_G.SelectWeapon)
AutoHaki()
v.HumanoidRootPart.CanCollide = false
v.HumanoidRootPart.Size = Vector3.new(50,50,50)
topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
v.HumanoidRootPart.CanCollide = false
v.HumanoidRootPart.CFrame = OldCFrameElephant
game:GetService("VirtualUser"):CaptureController()
game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
end)
until _G.AutoMusketeerHat == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
end
end
else
topos(CFrame.new(-13374.889648438, 421.27752685547, -8225.208984375))
end
else
topos(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125))
if (CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
wait(1.5)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen")
end
end
elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen") == 2 then
topos(CFrame.new(-12512.138671875, 340.39279174805, -9872.8203125))
end
end
end
end)
end)

Item:AddToggle("汽车彩虹哈基",_G.Auto_Rainbow_Haki,function(value)
_G.Auto_Rainbow_Haki = value
StopTween(_G.Auto_Rainbow_Haki)
end)

spawn(function()
pcall(function()
while wait(.1) do
if _G.Auto_Rainbow_Haki then
if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
topos(CFrame.new(-11892.0703125, 930.57672119141, -8760.1591796875))
if (Vector3.new(-11892.0703125, 930.57672119141, -8760.1591796875) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
wait(1.5)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan","Bet")
end
elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Stone") then
if game:GetService("Workspace").Enemies:FindFirstChild("Stone [Lv. 1550] [Boss]") then
for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if v.Name == "Stone [Lv. 1550] [Boss]" then
OldCFrameRainbow = v.HumanoidRootPart.CFrame
repeat task.wait()
EquipWeapon(_G.SelectWeapon)
topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
v.HumanoidRootPart.CanCollide = false
v.HumanoidRootPart.CFrame = OldCFrameRainbow
v.HumanoidRootPart.Size = Vector3.new(50,50,50)
game:GetService("VirtualUser"):CaptureController()
game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
until _G.Auto_Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
end
end
else
topos(CFrame.new(-1086.11621, 38.8425903, 6768.71436, 0.0231462717, -0.592676699, 0.805107772, 2.03251839e-05, 0.805323839, 0.592835128, -0.999732077, -0.0137055516, 0.0186523199))
end
elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Island Empress") then
if game:GetService("Workspace").Enemies:FindFirstChild("Island Empress [Lv. 1675] [Boss]") then
for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if v.Name == "Island Empress [Lv. 1675] [Boss]" then
OldCFrameRainbow = v.HumanoidRootPart.CFrame
repeat task.wait()
EquipWeapon(_G.SelectWeapon)
topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
v.HumanoidRootPart.CanCollide = false
v.HumanoidRootPart.CFrame = OldCFrameRainbow
v.HumanoidRootPart.Size = Vector3.new(50,50,50)
game:GetService("VirtualUser"):CaptureController()
game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
until _G.Auto_Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
end
end
else
topos(CFrame.new(5713.98877, 601.922974, 202.751251, -0.101080291, -0, -0.994878292, -0, 1, -0, 0.994878292, 0, -0.101080291))
end
elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Kilo Admiral") then
if game:GetService("Workspace").Enemies:FindFirstChild("Kilo Admiral [Lv. 1750] [Boss]") then
for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if v.Name == "Kilo Admiral [Lv. 1750] [Boss]" then
OldCFrameRainbow = v.HumanoidRootPart.CFrame
repeat task.wait()
EquipWeapon(_G.SelectWeapon)
topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
v.HumanoidRootPart.CanCollide = false
v.HumanoidRootPart.Size = Vector3.new(50,50,50)
v.HumanoidRootPart.CFrame = OldCFrameRainbow
game:GetService("VirtualUser"):CaptureController()
game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
until _G.Auto_Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
end
end
else
topos(CFrame.new(2877.61743, 423.558685, -7207.31006, -0.989591599, -0, -0.143904909, -0, 1.00000012, -0, 0.143904924, 0, -0.989591479))
end
elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") then
if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") then
for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if v.Name == "Captain Elephant [Lv. 1875] [Boss]" then
OldCFrameRainbow = v.HumanoidRootPart.CFrame
repeat task.wait()
EquipWeapon(_G.SelectWeapon)
topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
v.HumanoidRootPart.CanCollide = false
v.HumanoidRootPart.Size = Vector3.new(50,50,50)
v.HumanoidRootPart.CFrame = OldCFrameRainbow
game:GetService("VirtualUser"):CaptureController()
game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
until _G.Auto_Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
end
end
else
topos(CFrame.new(-13485.0283, 331.709259, -8012.4873, 0.714521289, 7.98849911e-08, 0.69961375, -1.02065748e-07, 1, -9.94383065e-09, -0.69961375, -6.43015241e-08, 0.714521289))
end
elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Beautiful Pirate") then
if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate [Lv. 1950] [Boss]") then
for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if v.Name == "Beautiful Pirate [Lv. 1950] [Boss]" then
OldCFrameRainbow = v.HumanoidRootPart.CFrame
repeat task.wait()
EquipWeapon(_G.SelectWeapon)
topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
v.HumanoidRootPart.CanCollide = false
v.HumanoidRootPart.Size = Vector3.new(50,50,50)
v.HumanoidRootPart.CFrame = OldCFrameRainbow
game:GetService("VirtualUser"):CaptureController()
game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
until _G.Auto_Rainbow_Haki == false or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
end
end
else
topos(CFrame.new(5312.3598632813, 20.141201019287, -10.158538818359))
end
else
topos(CFrame.new(-11892.0703125, 930.57672119141, -8760.1591796875))
if (Vector3.new(-11892.0703125, 930.57672119141, -8760.1591796875) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
wait(1.5)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan","Bet")
end
end
end
end
end)
end)

Item:AddToggle("自动观察Haki V2",_G.AutoObservationv2,function(value)
_G.AutoObservationv2 = value
StopTween(_G.AutoObservationv2)
end)

spawn(function()
while wait() do
pcall(function()
if _G.AutoObservationv2 then
if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen") == 3 then
_G.AutoMusketeerHat = false
if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Banana") and  game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Apple") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Pineapple") then
repeat
topos(CFrame.new(-12444.78515625, 332.40396118164, -7673.1806640625))
wait()
until not _G.AutoObservationv2 or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-12444.78515625, 332.40396118164, -7673.1806640625)).Magnitude <= 10
wait(.5)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen")
elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fruit Bowl") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fruit Bowl") then
repeat
topos(CFrame.new(-10920.125, 624.20275878906, -10266.995117188))
wait()
until not _G.AutoObservationv2 or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-10920.125, 624.20275878906, -10266.995117188)).Magnitude <= 10
wait(.5)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2","Start")
wait(1)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2","Buy")
else
for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
if v.Name == "Apple" or v.Name == "Banana" or v.Name == "Pineapple" then
v.Handle.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,1,10)
wait()
firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,v.Handle,0)
wait()
end
end
end
else
_G.AutoMusketeerHat = true
end
end
end)
end
end)

Item:AddToggle("自动游戏",_G.AutoRengoku,function(value)
_G.AutoRengoku = value
StopTween(_G.AutoRengoku)
end)

spawn(function()
pcall(function()
while wait() do
if _G.AutoRengoku then
if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hidden Key") then
EquipWeapon("Hidden Key")
topos(CFrame.new(6571.1201171875, 299.23028564453, -6967.841796875))
elseif game:GetService("Workspace").Enemies:FindFirstChild("Snow Lurker [Lv. 1375]") or game:GetService("Workspace").Enemies:FindFirstChild("Arctic Warrior [Lv. 1350]") then
for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if (v.Name == "Snow Lurker [Lv. 1375]" or v.Name == "Arctic Warrior [Lv. 1350]") and v.Humanoid.Health > 0 then
repeat task.wait()
EquipWeapon(_G.SelectWeapon)
AutoHaki()
v.HumanoidRootPart.CanCollide = false
v.HumanoidRootPart.Size = Vector3.new(50,50,50)
RengokuMon = v.HumanoidRootPart.CFrame
topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
game:GetService'VirtualUser':CaptureController()
game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
StartRengokuMagnet = true
until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") or _G.AutoRengoku == false or not v.Parent or v.Humanoid.Health <= 0
StartRengokuMagnet = false
end
end
else
StartRengokuMagnet = false
topos(CFrame.new(5439.716796875, 84.420944213867, -6715.1635742188))
end
end
end
end)
end)

Main:AddToggle("汽车农场星质",_G.AutoEctoplasm,function(value)
_G.AutoEctoplasm = value
StopTween(_G.AutoEctoplasm)
end)

spawn(function()
pcall(function()
while wait() do
if _G.AutoEctoplasm then
if game:GetService("Workspace").Enemies:FindFirstChild("Ship Deckhand [Lv. 1250]") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Engineer [Lv. 1275]") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Steward [Lv. 1300]") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Officer [Lv. 1325]") then
for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if string.find(v.Name, "Ship") then
repeat task.wait()
EquipWeapon(_G.SelectWeapon)
AutoHaki()
if string.find(v.Name,"Ship") then
v.HumanoidRootPart.CanCollide = false
v.Head.CanCollide = false
v.HumanoidRootPart.Size = Vector3.new(50,50,50)
topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
game:GetService'VirtualUser':CaptureController()
game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
EctoplasmMon = v.HumanoidRootPart.CFrame
StartEctoplasmMagnet = true
else
StartEctoplasmMagnet = false
topos(CFrame.new(911.35827636719, 125.95812988281, 33159.5390625))
end
until _G.AutoEctoplasm == false or not v.Parent or v.Humanoid.Health <= 0
end
end
else
StartEctoplasmMagnet = false
local Distance = (Vector3.new(911.35827636719, 125.95812988281, 33159.5390625) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
if Distance > 18000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
end
topos(CFrame.new(911.35827636719, 125.95812988281, 33159.5390625))
end
end
end
end)
end)

Item:AddToggle("汽车阎罗王",_G.AutoYama,function(value)
_G.AutoYama = value
StopTween(_G.AutoYama)
end)

spawn(function()
while wait() do
if _G.AutoYama then
if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress") >= 30 then
repeat wait(.1)
fireclickdetector(game:GetService("Workspace").Map.Waterfall.SealedKatana.Handle.ClickDetector)
until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Yama") or not _G.AutoYama
end
end
end
end)

Main:AddToggle("自动埃沃赛车",_G.Auto_EvoRace,function(value)
_G.Auto_EvoRace = value
StopTween(_G.Auto_EvoRace)
end)

spawn(function()
pcall(function()
while wait(.1) do
if _G.Auto_EvoRace then
if not game:GetService("Players").LocalPlayer.Data.Race:FindFirstChild("Evolved") then
if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 0 then
topos(CFrame.new(-2779.83521, 72.9661407, -3574.02002, -0.730484903, 6.39014104e-08, -0.68292886, 3.59963224e-08, 1, 5.50667032e-08, 0.68292886, 1.56424669e-08, -0.730484903))
if (Vector3.new(-2779.83521, 72.9661407, -3574.02002) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
wait(1.3)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","2")
end
elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 1 then
pcall(function()
if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 1") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 1") then
topos(game:GetService("Workspace").Flower1.CFrame)
elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 2") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 2") then
topos(game:GetService("Workspace").Flower2.CFrame)
elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 3") then
if game:GetService("Workspace").Enemies:FindFirstChild("Zombie [Lv. 950]") then
for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if v.Name == "Zombie [Lv. 950]" then
repeat task.wait()
AutoHaki()
EquipWeapon(_G.SelectWeapon)
topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
v.HumanoidRootPart.CanCollide = false
v.HumanoidRootPart.Size = Vector3.new(50,50,50)
game:GetService("VirtualUser"):CaptureController()
game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
PosMonEvo = v.HumanoidRootPart.CFrame
StartEvoMagnet = true
until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") or not v.Parent or v.Humanoid.Health <= 0 or _G.Auto_EvoRace == false
StartEvoMagnet = false
end
end
else
StartEvoMagnet = false
topos(CFrame.new(-5685.9233398438, 48.480125427246, -853.23724365234))
end
end
end)
elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 2 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","3")
end
end
end
end
end)
end)

Main:AddToggle("汽车巴特里奥探索",_G.AutoBartilo,function(value)
_G.AutoBartilo = value
end)

spawn(function()
pcall(function()
while wait(.1) do
if _G.AutoBartilo then
if game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 0 then
if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
if game:GetService("Workspace").Enemies:FindFirstChild("Swan Pirate [Lv. 775]") then
Ms = "Swan Pirate [Lv. 775]"
for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if v.Name == Ms then
pcall(function()
repeat task.wait()
sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
EquipWeapon(_G.SelectWeapon)
AutoHaki()
v.HumanoidRootPart.Transparency = 1
v.HumanoidRootPart.CanCollide = false
v.HumanoidRootPart.Size = Vector3.new(50,50,50)
topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
PosMonBarto =  v.HumanoidRootPart.CFrame
game:GetService'VirtualUser':CaptureController()
game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
AutoBartiloBring = true
until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoBartilo == false or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
AutoBartiloBring = false
end)
end
end
else
repeat topos(CFrame.new(932.624451, 156.106079, 1180.27466, -0.973085582, 4.55137119e-08, -0.230443969, 2.67024713e-08, 1, 8.47491108e-08, 0.230443969, 7.63147128e-08, -0.973085582)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(932.624451, 156.106079, 1180.27466, -0.973085582, 4.55137119e-08, -0.230443969, 2.67024713e-08, 1, 8.47491108e-08, 0.230443969, 7.63147128e-08, -0.973085582)).Magnitude <= 10
end
else
repeat topos(CFrame.new(-456.28952, 73.0200958, 299.895966)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-456.28952, 73.0200958, 299.895966)).Magnitude <= 10
wait(1.1)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","BartiloQuest",1)
end
elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 1 then
if game:GetService("Workspace").Enemies:FindFirstChild("Jeremy [Lv. 850] [Boss]") then
Ms = "Jeremy [Lv. 850] [Boss]"
for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if v.Name == Ms then
OldCFrameBartlio = v.HumanoidRootPart.CFrame
repeat task.wait()
sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
EquipWeapon(_G.SelectWeapon)
AutoHaki()
v.HumanoidRootPart.Transparency = 1
v.HumanoidRootPart.CanCollide = false
v.HumanoidRootPart.Size = Vector3.new(50,50,50)
v.HumanoidRootPart.CFrame = OldCFrameBartlio
topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))
game:GetService'VirtualUser':CaptureController()
game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoBartilo == false
end
end
elseif game:GetService("ReplicatedStorage"):FindFirstChild("Jeremy [Lv. 850] [Boss]") then
repeat topos(CFrame.new(-456.28952, 73.0200958, 299.895966)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-456.28952, 73.0200958, 299.895966)).Magnitude <= 10
wait(1.1)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo")
wait(1)
repeat topos(CFrame.new(2099.88159, 448.931, 648.997375)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10
wait(2)
else
repeat topos(CFrame.new(2099.88159, 448.931, 648.997375)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(2099.88159, 448.931, 648.997375)).Magnitude <= 10
end
elseif game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 2 then
repeat topos(CFrame.new(-1850.49329, 13.1789551, 1750.89685)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1850.49329, 13.1789551, 1750.89685)).Magnitude <= 10
wait(1)
repeat topos(CFrame.new(-1858.87305, 19.3777466, 1712.01807)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1858.87305, 19.3777466, 1712.01807)).Magnitude <= 10
wait(1)
repeat topos(CFrame.new(-1803.94324, 16.5789185, 1750.89685)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1803.94324, 16.5789185, 1750.89685)).Magnitude <= 10
wait(1)
repeat topos(CFrame.new(-1858.55835, 16.8604317, 1724.79541)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1858.55835, 16.8604317, 1724.79541)).Magnitude <= 10
wait(1)
repeat topos(CFrame.new(-1869.54224, 15.987854, 1681.00659)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1869.54224, 15.987854, 1681.00659)).Magnitude <= 10
wait(1)
repeat topos(CFrame.new(-1800.0979, 16.4978027, 1684.52368)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1800.0979, 16.4978027, 1684.52368)).Magnitude <= 10
wait(1)
repeat topos(CFrame.new(-1819.26343, 14.795166, 1717.90625)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1819.26343, 14.795166, 1717.90625)).Magnitude <= 10
wait(1)
repeat topos(CFrame.new(-1813.51843, 14.8604736, 1724.79541)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1813.51843, 14.8604736, 1724.79541)).Magnitude <= 10
end
end
end
end)
end)

Main:AddToggle("自动圣火炬（Tushita）",_G.AutoHolyTorch,function(value)
_G.AutoHolyTorch = value
StopTween(_G.AutoHolyTorch)
end)

spawn(function()
while wait() do
if _G.AutoHolyTorch then
pcall(function()
wait(1)
TP(CFrame.new(-10752, 417, -9366))
wait(1)
TP(CFrame.new(-11672, 334, -9474))
wait(1)
TP(CFrame.new(-12132, 521, -10655))
wait(1)
TP(CFrame.new(-13336, 486, -6985))
wait(1)
TP(CFrame.new(-13489, 332, -7925))
end)
end
end
end)

spawn(function()
while task.wait() do
pcall(function()
if _G.BringMonster then
CheckQuest()
for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if _G.AutoFarm and StartMagnet and v.Name == Mon and (Mon == "Factory Staff [Lv. 800]" or Mon == "Monkey [Lv. 14]" or Mon == "Dragon Crew Warrior [Lv. 1575]" or Mon == "Dragon Crew Archer [Lv. 1600]") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 220 then
v.HumanoidRootPart.Size = Vector3.new(50,50,50)
v.HumanoidRootPart.CFrame = PosMon
v.Humanoid:ChangeState(14)
v.HumanoidRootPart.CanCollide = false
v.Head.CanCollide = false
if v.Humanoid:FindFirstChild("Animator") then
v.Humanoid.Animator:Destroy()
end
sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
elseif _G.AutoFarm and StartMagnet and v.Name == Mon and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 275 then
v.HumanoidRootPart.Size = Vector3.new(50,50,50)
v.HumanoidRootPart.CFrame = PosMon
v.Humanoid:ChangeState(14)
v.HumanoidRootPart.CanCollide = false
v.Head.CanCollide = false
if v.Humanoid:FindFirstChild("Animator") then
v.Humanoid.Animator:Destroy()
end
sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
end
if _G.AutoEctoplasm and StartEctoplasmMagnet then
if string.find(v.Name, "Ship") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - EctoplasmMon.Position).Magnitude <= 250 then
v.HumanoidRootPart.Size = Vector3.new(50,50,50)
v.HumanoidRootPart.CFrame = EctoplasmMon
v.Humanoid:ChangeState(14)
v.HumanoidRootPart.CanCollide = false
v.Head.CanCollide = false
if v.Humanoid:FindFirstChild("Animator") then
v.Humanoid.Animator:Destroy()
end
sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
end
end
if _G.AutoRengoku and StartRengokuMagnet then
if (v.Name == "Snow Lurker [Lv. 1375]" or v.Name == "Arctic Warrior [Lv. 1350]") and (v.HumanoidRootPart.Position - RengokuMon.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
v.HumanoidRootPart.Size = Vector3.new(50,50,50)
v.Humanoid:ChangeState(14)
v.HumanoidRootPart.CanCollide = false
v.Head.CanCollide = false
v.HumanoidRootPart.CFrame = RengokuMon
if v.Humanoid:FindFirstChild("Animator") then
v.Humanoid.Animator:Destroy()
end
sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
end
end
if _G.AutoMusketeerHat and StartMagnetMusketeerhat then
if v.Name == "Forest Pirate [Lv. 1825]" and (v.HumanoidRootPart.Position - MusketeerHatMon.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
v.HumanoidRootPart.Size = Vector3.new(50,50,50)
v.Humanoid:ChangeState(14)
v.HumanoidRootPart.CanCollide = false
v.Head.CanCollide = false
v.HumanoidRootPart.CFrame = MusketeerHatMon
if v.Humanoid:FindFirstChild("Animator") then
v.Humanoid.Animator:Destroy()
end
sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
end
end
if _G.Auto_EvoRace and StartEvoMagnet then
if v.Name == "Zombie [Lv. 950]" and (v.HumanoidRootPart.Position - PosMonEvo.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
v.HumanoidRootPart.Size = Vector3.new(50,50,50)
v.Humanoid:ChangeState(14)
v.HumanoidRootPart.CanCollide = false
v.Head.CanCollide = false
v.HumanoidRootPart.CFrame = PosMonEvo
if v.Humanoid:FindFirstChild("Animator") then
v.Humanoid.Animator:Destroy()
end
sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
end
end
if _G.AutoBartilo and AutoBartiloBring then
if v.Name == "Swan Pirate [Lv. 775]" and (v.HumanoidRootPart.Position - PosMonBarto.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
v.HumanoidRootPart.Size = Vector3.new(50,50,50)
v.Humanoid:ChangeState(14)
v.HumanoidRootPart.CanCollide = false
v.Head.CanCollide = false
v.HumanoidRootPart.CFrame = PosMonBarto
if v.Humanoid:FindFirstChild("Animator") then
v.Humanoid.Animator:Destroy()
end
sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
end
end
if _G.AutoFarmFruitMastery and StartMasteryFruitMagnet then
if v.Name == "Monkey [Lv. 14]" then
if (v.HumanoidRootPart.Position - PosMonMasteryFruit.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
v.HumanoidRootPart.Size = Vector3.new(50,50,50)
v.Humanoid:ChangeState(14)
v.HumanoidRootPart.CanCollide = false
v.Head.CanCollide = false
v.HumanoidRootPart.CFrame = PosMonMasteryFruit
if v.Humanoid:FindFirstChild("Animator") then
v.Humanoid.Animator:Destroy()
end
sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
end
elseif v.Name == "Factory Staff [Lv. 800]" then
if (v.HumanoidRootPart.Position - PosMonMasteryFruit.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
v.HumanoidRootPart.Size = Vector3.new(50,50,50)
v.Humanoid:ChangeState(14)
v.HumanoidRootPart.CanCollide = false
v.Head.CanCollide = false
v.HumanoidRootPart.CFrame = PosMonMasteryFruit
if v.Humanoid:FindFirstChild("Animator") then
v.Humanoid.Animator:Destroy()
end
sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
end
elseif v.Name == Mon then
if (v.HumanoidRootPart.Position - PosMonMasteryFruit.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
v.HumanoidRootPart.Size = Vector3.new(50,50,50)
v.Humanoid:ChangeState(14)
v.HumanoidRootPart.CanCollide = false
v.Head.CanCollide = false
v.HumanoidRootPart.CFrame = PosMonMasteryFruit
if v.Humanoid:FindFirstChild("Animator") then
v.Humanoid.Animator:Destroy()
end
sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
end
end
end
if _G.AutoFarmGunMastery and StartMasteryGunMagnet then
if v.Name == "Monkey [Lv. 14]" then
if (v.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
v.HumanoidRootPart.Size = Vector3.new(50,50,50)
v.Humanoid:ChangeState(14)
v.HumanoidRootPart.CanCollide = false
v.Head.CanCollide = false
v.HumanoidRootPart.CFrame = PosMonMasteryGun
if v.Humanoid:FindFirstChild("Animator") then
v.Humanoid.Animator:Destroy()
end
sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
end
elseif v.Name == "Factory Staff [Lv. 800]" then
if (v.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
v.HumanoidRootPart.Size = Vector3.new(50,50,50)
v.Humanoid:ChangeState(14)
v.HumanoidRootPart.CanCollide = false
v.Head.CanCollide = false
v.HumanoidRootPart.CFrame = PosMonMasteryGun
if v.Humanoid:FindFirstChild("Animator") then
v.Humanoid.Animator:Destroy()
end
sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
end
elseif v.Name == Mon then
if (v.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
v.HumanoidRootPart.Size = Vector3.new(50,50,50)
v.Humanoid:ChangeState(14)
v.HumanoidRootPart.CanCollide = false
v.Head.CanCollide = false
v.HumanoidRootPart.CFrame = PosMonMasteryGun
if v.Humanoid:FindFirstChild("Animator") then
v.Humanoid.Animator:Destroy()
end
sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
end
end
end
if _G.Auto_Bone and StartMagnetBoneMon then
if (v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name == "Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]") and (v.HumanoidRootPart.Position - PosMonBone.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
v.HumanoidRootPart.Size = Vector3.new(50,50,50)
v.Humanoid:ChangeState(14)
v.HumanoidRootPart.CanCollide = false
v.Head.CanCollide = false
v.HumanoidRootPart.CFrame = PosMonBone
if v.Humanoid:FindFirstChild("Animator") then
v.Humanoid.Animator:Destroy()
end
sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
end
end
if _G.AutoDoughBoss and MagnetDough then
if (v.Name == "Cookie Crafter [Lv. 2200]" or v.Name == "Cake Guard [Lv. 2225]" or v.Name == "Baking Staff [Lv. 2250]" or v.Name == "Head Baker [Lv. 2275]") and (v.HumanoidRootPart.Position - PosMonDoughOpenDoor.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
v.HumanoidRootPart.Size = Vector3.new(50,50,50)
v.Humanoid:ChangeState(14)
v.HumanoidRootPart.CanCollide = false
v.Head.CanCollide = false
v.HumanoidRootPart.CFrame = PosMonDoughOpenDoor
if v.Humanoid:FindFirstChild("Animator") then
v.Humanoid.Animator:Destroy()
end
sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
end
end
if _G.AutoCandy and StartMagnetCandy then
if (v.HumanoidRootPart.Position - PosMonCandy.Position).Magnitude <= 250 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
v.HumanoidRootPart.Size = Vector3.new(50,50,50)
v.Humanoid:ChangeState(14)
v.HumanoidRootPart.CanCollide = false
v.Head.CanCollide = false
v.HumanoidRootPart.CFrame = PosMonCandy
if v.Humanoid:FindFirstChild("Animator") then
v.Humanoid.Animator:Destroy()
end
sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
end
end
end
end
end)
end
end)

local plyserv = Combat:AddLabel("球员们")

spawn(function()
while wait() do
pcall(function()
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
if i == 12 then
plyserv:Set("Players :".." "..i.." ".."/".." ".."12".." ".."(Max)")
elseif i == 1 then
plyserv:Set("Player :".." "..i.." ".."/".." ".."12")
else
plyserv:Set("Players :".." "..i.." ".."/".." ".."12")
end
end
end)
end
end)

Playerslist = {}

for i,v in pairs(game:GetService("Players"):GetChildren()) do
table.insert(Playerslist,v.Name)
end

local SelectedPly = Combat:AddDropdown("选择玩家",Playerslist,function(value)
_G.SelectPly = value
end)

Combat:AddButton("刷新",function()
Playerslist = {}
SelectedPly:Clear()
for i,v in pairs(game:GetService("Players"):GetChildren()) do
SelectedPly:Add(v.Name)
end
end)

Combat:AddToggle("观看/查看播放器",false,function(value)
SpectatePlys = value
local plr1 = game:GetService("Players").LocalPlayer.Character.Humanoid
local plr2 = game:GetService("Players"):FindFirstChild(_G.SelectPly)
repeat wait(.1)
game:GetService("Workspace").Camera.CameraSubject = game:GetService("Players"):FindFirstChild(_G.SelectPly).Character.Humanoid
until SpectatePlys == false
game:GetService("Workspace").Camera.CameraSubject = game:GetService("Players").LocalPlayer.Character.Humanoid
end)

Combat:AddToggle("转到所选玩家",false,function(value)
_G.TeleportPly = value
pcall(function()
if _G.TeleportPly then
repeat topos(game:GetService("Players")[_G.SelectPly].Character.HumanoidRootPart.CFrame) wait() until _G.TeleportPly == false
end
StopTween(_G.TeleportPly)
end)
end)

Combat:AddToggle("自动杀死玩家",false,function(value)
_G.Auto_Kill_Ply = value
StopTween(_G.Auto_Kill_Ply)
end)

spawn(function()
while wait() do
if _G.Auto_Kill_Ply then
pcall(function()
if _G.SelectPly ~= nil then
if game.Players:FindFirstChild(_G.SelectPly) then
if game.Players:FindFirstChild(_G.SelectPly).Character.Humanoid.Health > 0 then
repeat task.wait()
EquipWeapon(_G.SelectWeapon)
AutoHaki()
game.Players:FindFirstChild(_G.SelectPly).Character.HumanoidRootPart.CanCollide = false
topos(game.Players:FindFirstChild(_G.SelectPly).Character.HumanoidRootPart.CFrame * CFrame.new(0,35,0))
spawn(function()
pcall(function()
if _G.SelectWeapon == SelectWeaponGun then
local args = {
[1] = game.Players:FindFirstChild(_G.SelectPly).Character.HumanoidRootPart.Position,
[2] = game.Players:FindFirstChild(_G.SelectPly).Character.HumanoidRootPart
}
game:GetService("Players").LocalPlayer.Character[SelectWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args))
else
game:GetService("VirtualUser"):CaptureController()
game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
end
end)
end)
until game.Players:FindFirstChild(_G.SelectPly).Character.Humanoid.Health <= 0 or not game.Players:FindFirstChild(_G.SelectPly) or not _G.Auto_Kill_Ply
end
end
end
end)
end
end
end)

Combat:AddSeperator("瞄准机器人")

spawn(function()
while wait() do
pcall(function()
local MaxDistance = math.huge
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
if v.Name ~= game:GetService("Players").LocalPlayer.Name then
local Distance = v:DistanceFromCharacter(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position)
if Distance < MaxDistance then
MaxDistance = Distance
PlayerSelectAimbot = v.Name
end
end
end
end)
end
end)

Combat:AddToggle("瞄准机器人枪",false,function(value)
_G.Aimbot_Gun = value
end)

spawn(function()
while task.wait() do
if _G.Aimbot_Gun and game:GetService("Players").LocalPlayer.Character:FindFirstChild(SelectWeaponGun) then
pcall(function()
game:GetService("Players").LocalPlayer.Character[SelectWeaponGun].Cooldown.Value = 0
local args = {
[1] = game:GetService("Players"):FindFirstChild(PlayerSelectAimbot).Character.HumanoidRootPart.Position,
[2] = game:GetService("Players"):FindFirstChild(PlayerSelectAimbot).Character.HumanoidRootPart
}
game:GetService("Players").LocalPlayer.Character[SelectWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args))
game:GetService'VirtualUser':CaptureController()
game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
end)
end
end
end)

Combat:AddToggle("瞄准机器人技能",false,function(value)
_G.Aimbot_Skill = value
end)

spawn(function()
pcall(function()
while task.wait() do
if _G.Aimbot_Skill and PlayerSelectAimbot ~= nil and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and game.Players.LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name]:FindFirstChild("MousePos") then
local args = {
[1] = game:GetService("Players"):FindFirstChild(PlayerSelectAimbot).Character.HumanoidRootPart.Position
}

game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name).RemoteEvent:FireServer(unpack(args))
end
end
end)
end)

Combat:AddSeperator("PvP")

Combat:AddToggle("已启用PVP",false,function(value)
_G.EnabledPvP = value
end)

spawn(function()
pcall(function()
while wait(.1) do
if _G.EnabledPvP then
if game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == true then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
end
end
end
end)
end)

Combat:AddToggle("安全模式",false,function(value)
_G.Safe_Mode = value
StopTween(_G.Safe_Mode)
end)

spawn(function()
pcall(function()
while wait() do
if _G.Safe_Mode then
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
end
end
end)
end)

Combat:AddButton("重生",function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Pirates")
wait()
end)

Combat:AddSeperator("赏金")

local Current = Combat:AddLabel("目前的奖金 :")

local Bounty = tostring(game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value)
local sub = string.sub
local len = string.len
spawn(function()
while wait() do
pcall(function()
if len(Bounty) == 4 then
Bounty1 = sub(Bounty,1,1).."."..sub(Bounty,2,3).."K"
elseif len(Bounty) == 5 then
Bounty1 = sub(Bounty,1,2).."."..sub(Bounty,3,4).."K"
elseif len(Bounty) == 6 then
Bounty1 = sub(Bounty,1,3).."."..sub(Bounty,4,5).."K"
elseif len(Bounty) == 7 then
Bounty1 = sub(Bounty,1,1).."."..sub(Bounty,2,3).."M"
elseif len(Bounty) == 8 then
Bounty1 = sub(Bounty,1,2).."."..sub(Bounty,3,4).."M"
elseif len(Bounty) <= 3 then
Bounty1 = Bounty
end
if tonumber(Bounty) == 25000000 then
Current:Set("Current Bounties : "..Bounty1.." [ Max ]")
elseif tonumber(Bounty) < 25000000 then
Current:Set("Current Bounties : "..Bounty1)
end
end)
end
end)

local Earn = Combat:AddLabel("挣来的")
local OldBounty = game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value
local Bounty = tostring(game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value)
local Earned = tostring(game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value - OldBounty)
local sub = string.sub
local len = string.len
spawn(function()
while wait() do
pcall(function()
if len(Earned) == 4 then
Earned1 = sub(Earned,1,1).."."..sub(Earned,2,3).."K"
elseif len(Earned) == 5 then
Earned1 = sub(Earned,1,2).."."..sub(Earned,3,4).."K"
elseif len(Earned) == 6 then
Earned1 = sub(Earned,1,3).."."..sub(Earned,4,5).."K"
elseif len(Earned) == 7 then
Earned1 = sub(Earned,1,1).."."..sub(Earned,2,3).."M"
elseif len(Earned) == 8 then
Earned1 = sub(Earned,1,2).."."..sub(Earned,3,4).."M"
elseif len(Earned) <= 3 then
Earned1 = Earned
end
Earn:Set("Earned : "..tonumber(Earned1))
end)
end
end)

Combat:AddToggle("汽车农场赏金",_G.AutoFarmBounty,function(value)
_G.AutoFarmBounty = value
StopTween(_G.AutoFarmBounty)
end)

spawn(function()
while wait() do
pcall(function()
if _G.AutoFarmBounty then
for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
if v:IsA("Shirt") then
v:Destroy()
end
if v:IsA("Pants") then
v:Destroy()
end
if v:IsA("Accessory") then
v:Destroy()
end
end
end
end)
end
end)

spawn(function()
pcall(function()
if _G.AutoFarmBounty then
while wait() do
if game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
end
end
end
end)
end)

spawn(function()
while wait() do
pcall(function()
if _G.AutoFarmBounty then
if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
end
end
end)
end
end)

spawn(function()
while task.wait() do
pcall(function()
if _G.AutoFarmBounty then
game:GetService("Players").LocalPlayer.Character[SelectWeaponGun].Cooldown.Value = 0
spawn(function()
game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Beli.Visible = false
game:GetService("Players")["LocalPlayer"].PlayerGui.Main.HP.Visible = false
game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Energy.Visible = false
game:GetService("Players")["LocalPlayer"].PlayerGui.Main.StatsButton.Visible = false
game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ShopButton.Visible = false
game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Skills.Visible = false
game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Level.Visible = false
game:GetService("Players")["LocalPlayer"].PlayerGui.Main.MenuButton.Visible = false
game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Code.Visible = false
game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Settings.Visible = false
game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Mute.Visible = false
game:GetService("Players")["LocalPlayer"].PlayerGui.Main.CrewButton.Visible = false
game.Players.LocalPlayer.Character.Animate.Disabled = true
end)
end
end)
end
end)
CastlePostoMansion = CFrame.new(-5084.8447265625, 316.48101806641, -3145.3752441406)
MansiontoCastlePos = CFrame.new(-12464.596679688, 376.30590820312, -7567.2626953125)
Castletophydra = CFrame.new(-5095.33984375, 316.48101806641, -3168.3134765625)
HydratoCastle = CFrame.new(5741.869140625, 611.94750976562, -282.61154174805)
spawn(function()
while wait() do
pcall(function()
if _G.AutoFarmBounty then
for i,v in pairs(game:GetService("Workspace").Characters:GetChildren()) do
if v.Name ~= game.Players.LocalPlayer.Name then
if v:WaitForChild("Humanoid").Health > 0 and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude <= 17000 then
plyselecthunthelpold = v.Humanoid.Health
repeat task.wait()
EquipWeapon(SelectWeaponGun)
NameTarget = v.Name
if tostring(game.Players.LocalPlayer.Team) == "Pirates" then
topos(v.HumanoidRootPart.CFrame * CFrame.new(0,60,-20))
elseif tostring(game.Players.LocalPlayer.Team) == "Marines" then
if game.Players[NameTarget].Team ~= game.Players.LocalPlayer.Team then
topos(v.HumanoidRootPart.CFrame * CFrame.new(0,60,-20))
end
end
spawn(function()
if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 150 then
StartCheckTarget = true
end
end)
v.HumanoidRootPart.CanCollide = false
spawn(function()
pcall(function()
local args = {
[1] = v.HumanoidRootPart.Position,
[2] = v.HumanoidRootPart
}
game:GetService("Players").LocalPlayer.Character[SelectWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args))
end)
end)
TargetSelectHunt = v.Humanoid
until _G.AutoFarmBounty == false or v.Humanoid.Health == 0 or not v:FindFirstChild("HumanoidRootPart") or not v:FindFirstChild("Humanoid") or not v.Parent or NextplySelect == true
NextplySelect = false
StartCheckTarget = false
end
end
end
end
end)
end
end)

spawn(function()
pcall(function()
while task.wait() do
if _G.AutoFarmBounty then
game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Visible = false
game:GetService("Players").LocalPlayer.PlayerGui.Main.SafeZone.Visible = false
end
end
end)
end)

spawn(function()
pcall(function()
while wait() do
if _G.AutoFarmBounty then
if TargetSelectHunt ~= nil then
if StartCheckTarget then
wait(6.5)
if TargetSelectHunt.Health == TargetSelectHunt.MaxHealth or TargetSelectHunt.Health >= plyselecthunthelpold then
NextplySelect = true
TargetSelectHunt = nil
end
end
end
end
end
end)
end)

spawn(function()
pcall(function()
while wait(.1) do
if _G.AutoFarmBounty then
if game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == true then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
end
end
end
end)
end)

Combat:AddToggle("自动农场赏金跳",_G.AutoFarmBounty_Hop,function(value)
_G.AutoFarmBounty_Hop = value
end)

spawn(function()
while wait() do
if _G.AutoFarmBounty then
if _G.AutoFarmBounty_Hop then
pcall(function()
wait(120)
Hop()
end)
end
end
end
end)

Combat:AddSeperator("杂项赏金")

Combat:AddButton("下一个玩家",function()
NextplySelect = true
wait(.1)
NextplySelect = false
end)

Combat:AddSlider("锁定赏金",1,25000000,750000,function(value)
_G.BountyLock = value
end)

Combat:AddToggle("启动赏金锁",false,function(value)
_G.StartBountyLock = value
end)

spawn(function()
while wait() do
if _G.StartBountyLock then
pcall(function()
if game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value >= _G.BountyLock then
game:GetService("Players").LocalPlayer:Kick("成功地！赏金农场")
end
end)
end
end
end)
--可能会有问题--

Stats:AddSeperator("自动统计")

local Pointstat = Stats:AddLabel("统计点")

spawn(function()
while wait() do
pcall(function()
Pointstat:Set("统计点 : "..tostring(game:GetService("Players")["LocalPlayer"].Data.Points.Value))
end)
end
end)
--可能会有问题--

Stats:AddToggle("自动混战",_G.Auto_Melee,function(value)
_G.Auto_Melee = value
end)

Stats:AddToggle("自动防御",_G.Auto_Defense,function(value)
_G.Auto_Defense = value
end)

Stats:AddToggle("自动剑",_G.Auto_Sword,function(value)
_G.Auto_Sword = value
end)

Stats:AddToggle("自动枪",_G.Auto_Gun,function(value)
_G.Auto_Gun = value
end)

Stats:AddToggle("汽车恶魔果实",_G.Auto_DevilFruit,function(value)
_G.Auto_DevilFruit = value
end)

_G.PointStats = 1
Stats:AddSlider("选择点",1,1000,1,function(value)
_G.PointStats = value
end)

spawn(function()
while wait() do
pcall(function()
if _G.Auto_Melee then
if game:GetService("Players")["LocalPlayer"].Data.Points.Value ~= 0 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Melee",_G.PointStats)
end
end
end)
end
end)

spawn(function()
while wait() do
pcall(function()
if _G.Auto_Defense then
if game:GetService("Players")["LocalPlayer"].Data.Points.Value ~= 0 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Defense",_G.PointStats)
end
end
end)
end
end)

spawn(function()
while wait() do
pcall(function()
if _G.Auto_Sword then
if game:GetService("Players")["LocalPlayer"].Data.Points.Value ~= 0 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Sword",_G.PointStats)
end
end
end)
end
end)

spawn(function()
while wait() do
pcall(function()
if _G.Auto_Gun then
if game:GetService("Players")["LocalPlayer"].Data.Points.Value ~= 0 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Gun",_G.PointStats)
end
end
end)
end
end)

spawn(function()
while wait() do
pcall(function()
if _G.Auto_DevilFruit then
if game:GetService("Players")["LocalPlayer"].Data.Points.Value ~= 0 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Devil Fruit",_G.PointStats)
end
end
end)
end
end)

Stats:AddSeperator("状态")

local locallv = Stats:AddLabel("水平")

spawn(function()
while wait() do
pcall(function()
locallv:Set("水平 :".." "..game:GetService("Players").LocalPlayer.Data.Level.Value)
end)
end
end)
--可能会有问题--

local localrace = Stats:AddLabel("赛跑")

spawn(function()
while wait() do
pcall(function()
localrace:Set("赛跑 :".." "..game:GetService("Players").LocalPlayer.Data.Race.Value)
end)
end
end)
--可能会有问题--

local localbeli = Stats:AddLabel("贝利")

spawn(function()
while wait() do
pcall(function()
localbeli:Set("贝利 :".." "..game:GetService("Players").LocalPlayer.Data.Beli.Value)
end)
end
end)
--可能会有问题--

local localfrag = Stats:AddLabel("碎片")

spawn(function()
while wait() do
pcall(function()
localfrag:Set("碎片 :".." "..game:GetService("Players").LocalPlayer.Data.Fragments.Value)
end)
end
end)
--可能会有问题--


local localexp = Stats:AddLabel("实验")

spawn(function()
while wait() do
pcall(function()
localexp:Set("经验点 :".." "..game:GetService("Players").LocalPlayer.Data.Exp.Value)
end)
end
end)
--可能会有问题--

local localstat = Stats:AddLabel("统计点数")

spawn(function()
while wait() do
pcall(function()
localstat:Set("统计点数 :".." "..game:GetService("Players").LocalPlayer.Data.Points.Value)
end)
end
end)
--可能会有问题--

local localbountyhornor = Stats:AddLabel("赏金")

spawn(function()
while wait() do
pcall(function()
localbountyhornor:Set("赏金/荣誉 :".." "..game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value)
end)
end
end)
--可能会有问题--

local localDevil = Stats:AddLabel("恶魔之果")

spawn(function()
while wait() do
pcall(function()
if game:GetService("Players").LocalPlayer.Character:FindFirstChild(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value) or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(game:GetService("Players").LocalPlayer.Data.DevilFruit.Value) then
localDevil:Set("恶魔之果 :".." "..game:GetService("Players").LocalPlayer.Data.DevilFruit.Value)
else
localDevil:Set("没有恶魔果实")
end
end)
end
end)
--可能会有问题--

Stats:AddSeperator("假的")

Stats:AddToggle("已启用假的",_G.EnabledStat,function(value)
_G.EnabledStat = value
end)

Stats:AddTextbox("水平","",true,function(value)
if _G.EnabledStat then
game:GetService("Players")["LocalPlayer"].Data.Level.Value = tonumber(value)
end
end)

Stats:AddTextbox("实验","",true,function(value)
if _G.EnabledStat then
game:GetService("Players")["LocalPlayer"].Data.Exp.Value = tonumber(value)
end
end)

Stats:AddTextbox("贝利","",true,function(value)
if _G.EnabledStat then
game:GetService("Players")["LocalPlayer"].Data.Beli.Value = tonumber(value)
end
end)

Stats:AddTextbox("碎片","",true,function(value)
if _G.EnabledStat then
game:GetService("Players")["LocalPlayer"].Data.Fragments.Value = tonumber(value)
end
end)

Stats:AddTextbox("健康","",true,function(value)
if _G.EnabledStat then
game:GetService("Players")["LocalPlayer"].Data.Health.Value = tonumber(value)
end
end)

Stats:AddTextbox("能量","",true,function(value)
if _G.EnabledStat then
game:GetService("Players")["LocalPlayer"].Data.Energy.Value = tonumber(value)
end
end)

Stats:AddTextbox("混战","",true,function(value)
if _G.EnabledStat then
game:GetService("Players")["LocalPlayer"].Data.Stats.Melee.Level.Value = tonumber(value)
end
end)

Stats:AddTextbox("防御","",true,function(value)
if _G.EnabledStat then
game:GetService("Players")["LocalPlayer"].Data.Stats.Defense.Level.Value = tonumber(value)
end
end)

Stats:AddTextbox("剑","",true,function(value)
if _G.EnabledStat then
game:GetService("Players")["LocalPlayer"].Data.Stats.Sword.Level.Value = tonumber(value)
end
end)

Stats:AddTextbox("枪","",true,function(value)
if _G.EnabledStat then
game:GetService("Players")["LocalPlayer"].Data.Stats.Gun.Level.Value = tonumber(value)
end
end)
Stats:AddTextbox("水果","",true,function(value)
if _G.EnabledStat then
game:GetService("Players")["LocalPlayer"].Data.Stats["Demon Fruit"].Level.Value = tonumber(value)
end
end)

Stats:AddTextbox("赏金/荣誉","",true,function(value)
if _G.EnabledStat then
game:GetService("Players")["LocalPlayer"].leaderstats["Bounty/Honor"].Value = tonumber(value)
end
end)

Teleport:AddSeperator("世界 - 怪物")

Teleport:AddButton("传送到第一海（主）",function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
end)

Teleport:AddButton("传送到第二海（德莱斯罗萨）",function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
end)

Teleport:AddButton("传送到第三海（邹）",function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
end)

Teleport:AddButton("去海兽",function()
for i,v in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
if v:FindFirstChild("HumanoidRootPart") then
topos(v.HumanoidRootPart.CFrame*CFrame.new(0,100,0))
end
end
end)

Teleport:AddSeperator("岛屿")

if World1 then
Teleport:AddDropdown("选择岛",{
"风车",
"海洋",
"中城",
"丛林",
"海盗村",
"沙漠",
"雪岛",
"马里恩福德",
"斗兽场",
"天空",
"上天",
"天空岛3",
"监狱",
"岩浆村",
"水下岛",
"喷泉城",
"军刀专家室",
"暴徒岛"
},function(value)
_G.SelectIsland = value
end)
end

if World2 then
Teleport:AddDropdown("选择岛",{
"咖啡馆",
"第一点",
"暗区",
"火烈鸟大厦",
"火烈鸟房间",
"绿色区域",
"工厂",
"斗兽场",
"僵尸岛",
"两座雪山",
"朋克冒险",
"被诅咒的船",
"冰雪城堡",
"遗忘之岛",
"乌索普岛",
"迷你天空岛"
},function(value)
_G.SelectIsland = value
end)
end

if World3 then
Teleport:AddDropdown("选择岛",{
"豪宅",
"港口小镇",
"大树",
"海上城堡",
"米尼斯基",
"九头蛇岛",
"漂浮的海龟",
"闹鬼的城堡",
"冰淇淋岛",
"花生岛",
"蛋糕岛",
"巧克力岛",
"糖果岛",
"提基前哨"
},function(value)
_G.SelectIsland = value
end)
end

Teleport:AddToggle("传送",false,function(value)
_G.TeleportIsland = value
if _G.TeleportIsland == true then
repeat wait()
if _G.SelectIsland == "风车" then
topos(CFrame.new(979.79895019531, 16.516613006592, 1429.0466308594))
elseif _G.SelectIsland == "海军陆战队" then
topos(CFrame.new(-2566.4296875, 6.8556680679321, 2045.2561035156))
elseif _G.SelectIsland == "中城" then
topos(CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094))
elseif _G.SelectIsland == "丛林" then
topos(CFrame.new(-1612.7957763672, 36.852081298828, 149.12843322754))
elseif _G.SelectIsland == "海盗村" then
topos(CFrame.new(-1181.3093261719, 4.7514905929565, 3803.5456542969))
elseif _G.SelectIsland == "沙漠" then
topos(CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688))
elseif _G.SelectIsland == "雪岛" then
topos(CFrame.new(1347.8067626953, 104.66806030273, -1319.7370605469))
elseif _G.SelectIsland == "马里恩福德" then
topos(CFrame.new(-4914.8212890625, 50.963626861572, 4281.0278320313))
elseif _G.SelectIsland == "斗兽场" then
topos( CFrame.new(-1427.6203613281, 7.2881078720093, -2792.7722167969))
elseif _G.SelectIsland == "天空" then
topos(CFrame.new(-4869.1025390625, 733.46051025391, -2667.0180664063))
elseif _G.SelectIsland == "上天空" then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
elseif _G.SelectIsland == "天空岛3" then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
elseif _G.SelectIsland == "监狱" then
topos( CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656))
elseif _G.SelectIsland == "岩浆村" then
topos(CFrame.new(-5247.7163085938, 12.883934020996, 8504.96875))
elseif _G.SelectIsland == "水下岛" then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
elseif _G.SelectIsland == "喷泉城" then
topos(CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813))
elseif _G.SelectIsland == "军刀专家室" then
topos(CFrame.new(-1442.16553, 29.8788261, -28.3547478))
elseif _G.SelectIsland == "暴民岛" then
topos(CFrame.new(-2850.20068, 7.39224768, 5354.99268))
elseif _G.SelectIsland == "咖啡馆" then
topos(CFrame.new(-380.47927856445, 77.220390319824, 255.82550048828))
elseif _G.SelectIsland == "第一个点" then
topos(CFrame.new(-11.311455726624, 29.276733398438, 2771.5224609375))
elseif _G.SelectIsland == "暗区" then
topos(CFrame.new(3780.0302734375, 22.652164459229, -3498.5859375))
elseif _G.SelectIsland == "火烈鸟大厦" then
topos(CFrame.new(-483.73370361328, 332.0383605957, 595.32708740234))
elseif _G.SelectIsland == "火烈鸟房间" then
topos(CFrame.new(2284.4140625, 15.152037620544, 875.72534179688))
elseif _G.SelectIsland == "绿区" then
topos( CFrame.new(-2448.5300292969, 73.016105651855, -3210.6306152344))
elseif _G.SelectIsland == "工厂" then
topos(CFrame.new(424.12698364258, 211.16171264648, -427.54049682617))
elseif _G.SelectIsland == "巨像" then
topos( CFrame.new(-1503.6224365234, 219.7956237793, 1369.3101806641))
elseif _G.SelectIsland == "僵尸岛" then
topos(CFrame.new(-5622.033203125, 492.19604492188, -781.78552246094))
elseif _G.SelectIsland == "雪山" then
topos(CFrame.new(753.14288330078, 408.23559570313, -5274.6147460938))
elseif _G.SelectIsland == "朋克危险" then
topos(CFrame.new(-6127.654296875, 15.951762199402, -5040.2861328125))
elseif _G.SelectIsland == "被诅咒的船" then
topos(CFrame.new(923.40197753906, 125.05712890625, 32885.875))
elseif _G.SelectIsland == "冰雪城堡" then
topos(CFrame.new(6148.4116210938, 294.38687133789, -6741.1166992188))
elseif _G.SelectIsland == "被遗忘的岛" then
topos(CFrame.new(-3032.7641601563, 317.89672851563, -10075.373046875))
elseif _G.SelectIsland == "乌索普岛" then
topos(CFrame.new(4816.8618164063, 8.4599885940552, 2863.8195800781))
elseif _G.SelectIsland == "迷你天空岛" then
topos(CFrame.new(-288.74060058594, 49326.31640625, -35248.59375))
elseif _G.SelectIsland == "大树" then
topos(CFrame.new(2681.2736816406, 1682.8092041016, -7190.9853515625))
elseif _G.SelectIsland == "海上城堡" then
topos(CFrame.new(-5074.45556640625, 314.5155334472656, -2991.054443359375))
elseif _G.SelectIsland == "米尼斯基" then
topos(CFrame.new(-260.65557861328, 49325.8046875, -35253.5703125))
elseif _G.SelectIsland == "港口小镇" then
topos(CFrame.new(-290.7376708984375, 6.729952812194824, 5343.5537109375))
elseif _G.SelectIsland == "九头蛇岛" then
topos(CFrame.new(5228.8842773438, 604.23400878906, 345.0400390625))
elseif _G.SelectIsland == "漂浮的海龟" then
topos(CFrame.new(-13274.528320313, 531.82073974609, -7579.22265625))
elseif _G.SelectIsland == "豪宅" then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375))
elseif _G.SelectIsland == "闹鬼的城堡" then
topos(CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562))
elseif _G.SelectIsland == "冰淇淋岛" then
topos(CFrame.new(-902.56817626953, 79.93204498291, -10988.84765625))
elseif _G.SelectIsland == "花生岛" then
topos(CFrame.new(-2062.7475585938, 50.473892211914, -10232.568359375))
elseif _G.SelectIsland == "蛋糕岛" then
topos(CFrame.new(-1884.7747802734375, 19.327526092529297, -11666.8974609375))
elseif _G.SelectIsland == "巧克力岛" then
topos(CFrame.new(284.1343688964844, 28.333633422851562, -12723.7626953125))
elseif _G.SelectIsland == "糖果岛" then
topos(CFrame.new(-1068.4385986328125, 14.133130073547363, -14400.068359375))
elseif _G.SelectIsland == "提基前哨" then
topos(CFrame.new(-16227.4228515625, 9.0863618850708, 439.591796875))
end
until not _G.TeleportIsland
end
StopTween(_G.TeleportIsland)
end)

Dungeon:AddLine()

local TimeRaid = Dungeon:AddLabel("等地牢")

spawn(function()
pcall(function()
while wait() do
if game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Visible == true then
TimeRaid:Set(game:GetService("Players").LocalPlayer.PlayerGui.Main.Timer.Text)
else
TimeRaid:Set("等地牢")
end
end
end)
end)

Dungeon:AddToggle("自动RAID",_G.Auto_Dungeon,function(value)
_G.Auto_Dungeon = value
StopTween(_G.Auto_Dungeon)
end)

spawn(function()
pcall(function()
while wait() do
if _G.Auto_Dungeon then
if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true then
for i,v in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
pcall(function()
repeat wait()
sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
v.Humanoid.Health = 0
v.HumanoidRootPart.CanCollide = false
until not _G.Auto_Dungeon or not v.Parent or v.Humanoid.Health <= 0
end)
end
end
end
end
end
end)
end)

spawn(function()
pcall(function()
while wait() do
if _G.Auto_Dungeon then
if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true then
if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
topos(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame*CFrame.new(0,80,100))
elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
topos(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame*CFrame.new(0,80,100))
elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
topos(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame*CFrame.new(0,80,100))
elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
topos(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame*CFrame.new(0,80,100))
elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
topos(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame*CFrame.new(0,80,100))
end
end
end
end
end)
end)

Dungeon:AddToggle("自动唤醒器",_G.Auto_Awakener,function(value)
_G.Auto_Awakener = value
end)

spawn(function()
pcall(function()
while wait(.1) do
if _G.Auto_Awakener then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Check")
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Awaken")
end
end
end)
end)

Dungeon:AddLine()

Dungeon:AddDropdown("选择筹码 (选择筹码)",{"火焰","冰","震动","光","黑的","蜘蛛","隆隆","岩浆","人：佛","沙子","鸟：凤凰","面团"},function(value)
_G.SelectChip = value
end)

Dungeon:AddToggle("自动选择地牢",_G.AutoSelectDungeon,function(value)
_G.AutoSelectDungeon = value
end)

spawn(function()
while wait() do
if _G.AutoSelectDungeon then
pcall(function()
if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flame") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame") then
_G.SelectChip = "Blaze"
elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ice") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice") then
_G.SelectChip = "Ice"
elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake") then
_G.SelectChip = "Quake"
elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light") then
_G.SelectChip = "Light"
elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark") then
_G.SelectChip = "Dark"
elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spider") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spider") then
_G.SelectChip = "Spider"
elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rumble") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble") then
_G.SelectChip = "Rumble"
elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magma") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma") then
_G.SelectChip = "Magma"
elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human: Buddha") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Human: Buddha") then
_G.SelectChip = "Human: Buddha"
elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sand") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand") then
_G.SelectChip = "Sand"
elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Phoenix") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Phoenix") then
_G.SelectChip = "Bird: Phoenix"
elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dough") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough") then
_G.SelectChip = "Dough"
else
_G.SelectChip = "Flame"
end
end)
end
end
end)

Dungeon:AddToggle("自动购买芯片",_G.AutoBuyChip,function(value)
_G.AutoBuyChip = value
end)

spawn(function()
pcall(function()
while wait() do
if _G.AutoBuyChip then
if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip") or not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip") then
if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc", "Select", _G.SelectChip)
end
end
end
end
end)
end)

Dungeon:AddButton("购买芯片选择",function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc","Select",_G.SelectChip)
end)

Dungeon:AddToggle("自动启动RAID",_G.Auto_StartRaid,function(value)
_G.Auto_StartRaid = value
end)

spawn(function()
while wait(.1) do
pcall(function()
if _G.Auto_StartRaid then
if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == false then
if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip") then
if World2 then
fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
elseif World3 then
fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
end
end
end
end
end)
end
end)

Dungeon:AddButton("启动RAID",function()
if World2 then
fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
elseif World3 then
fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
end
end)

Dungeon:AddLine()

Dungeon:AddButton("下一个岛",function()
pcall(function()
if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
TP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame*CFrame.new(0,70,100))
elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
TP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame*CFrame.new(0,70,100))
elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
TP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame*CFrame.new(0,70,100))
elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
TP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame*CFrame.new(0,70,100))
elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
TP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame*CFrame.new(0,70,100))
end
end)
end)

if World2 then
Dungeon:AddButton("传送到实验室",function()
TP(CFrame.new(-6438.73535, 250.645355, -4501.50684))
end)
elseif World3 then
Dungeon:AddButton("传送到实验室",function()
TP(CFrame.new(-5017.40869, 314.844055, -2823.0127, -0.925743818, 4.48217499e-08, -0.378151238, 4.55503146e-09, 1, 1.07377559e-07, 0.378151238, 9.7681621e-08, -0.925743818))
end)
end

if World2 then
Dungeon:AddButton("唤醒室",function()
TP(CFrame.new(266.227783, 1.39509034, 1857.00732))
end)
elseif World3 then
Dungeon:AddButton("唤醒室",function()
TP(CFrame.new(-11571.440429688, 49.172668457031, -7574.7368164062))
end)
end

DevilFruit:AddSeperator("狙击手")

FruitList = {
"炸弹",
"长钉",
"砍",
"春天",
"火箭",
"旋转",
"鸟：猎鹰",
"烟",
"火焰",
"冰",
"沙子",
"黑的",
"鬼魂",
"钻石",
"光",
"爱情",
"橡皮",
"障碍",
"岩浆",
"传送门",
"震动",
"人：佛",
"蜘蛛",
"鸟：凤凰",
"隆隆",
"痛",
"重力",
"面团",
"毒液",
"阴影",
"控制",
"精神",
"龙",
"豹",
"猛犸象",
"声音",
}

_G.SelectFruit = ""
DevilFruit:AddDropdown("选择水果狙击手",FruitList,function(value)
_G.SelectFruit = value
end)

DevilFruit:AddToggle("汽车购买水果狙击手",_G.AutoBuyFruitSniper,function(value)
_G.AutoBuyFruitSniper = value
end)

DevilFruit:AddSeperator("其他人")

DevilFruit:AddDropdown("选择水果吃",FruitList,function(value)
_G.SelectFruitEat = value
end)

DevilFruit:AddToggle("自动吃水果",_G.AutoEatFruit,function(value)
_G.AutoEatFruit = value
end)

spawn(function()
pcall(function()
while wait(.1) do
if _G.AutoEatFruit then
game:GetService("Players").LocalPlayer.Character:FindFirstChild(_G.SelectFruitEat).EatRemote:InvokeServer()
end
end
end)
end)

DevilFruit:AddToggle("自动吃水果跳",_G.AutoEatFruitHop,function(value)
_G.AutoEatFruitHop = value
end)

spawn(function()
pcall(function()
while wait(.1) do wait(10)
if _G.AutoEatFruitHop and _G.SelectFruitEat ~= nil then
if not game:GetService("Players").LocalPlayer.Character:FindFirstChild(_G.SelectFruitEat) or not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(_G.SelectFruitEat) then
Hop()
else
game:GetService("Players").LocalPlayer.Character:FindFirstChild(_G.SelectFruitEat).EatRemote:InvokeServer()
end
end
end
end)
end)

spawn(function()
pcall(function()
while wait(.1) do
if _G.AutoBuyFruitSniper then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PurchaseRawFruit",_G.SelectFruit)
end
end
end)
end)

DevilFruit:AddToggle("自动随机水果",_G.Random_Auto,function(value)
_G.Random_Auto = value
end)

spawn(function()
pcall(function()
while wait(.1) do
if _G.Random_Auto then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
end
end
end)
end)

DevilFruit:AddButton("随机水果",function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
end)


DevilFruit:AddToggle("自动掉落水果",_G.DropFruit,function(value)
_G.DropFruit = value
end)

spawn(function()
while wait() do
if _G.DropFruit then
pcall(function()
for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
if string.find(v.Name, "Fruit") then
EquipWeapon(v.Name)
wait(.1)
if game:GetService("Players").LocalPlayer.PlayerGui.Main.Dialogue.Visible == true then
game:GetService("Players").LocalPlayer.PlayerGui.Main.Dialogue.Visible = false
end
EquipWeapon(v.Name)
game:GetService("Players").LocalPlayer.Character:FindFirstChild(SelectFruit).EatRemote:InvokeServer("Drop")
end
end
for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
if string.find(v.Name, "Fruit") then
EquipWeapon(v.Name)
wait(.1)
if game:GetService("Players").LocalPlayer.PlayerGui.Main.Dialogue.Visible == true then
game:GetService("Players").LocalPlayer.PlayerGui.Main.Dialogue.Visible = false
end
EquipWeapon(v.Name)
game:GetService("Players").LocalPlayer.Character:FindFirstChild(SelectFruit).EatRemote:InvokeServer("Drop")
end
end
end)
end
end
end)

DevilFruit:AddToggle("汽车商店水果",_G.AutoStoreFruit,function(value)
_G.AutoStoreFruit = value
end)

spawn(function()
pcall(function()
while wait(.1) do
if _G.AutoStoreFruit then
for i,v in pairs(FruitList) do
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit",v)
end
end
end
end)
end)


DevilFruit:AddToggle("抢水果",_G.BringFruit,function(value)
_G.BringFruit = value
pcall(function()
while _G.BringFruit do wait(.1)
for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
if v:IsA("Tool") then
local OldCFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.Handle.CFrame * CFrame.new(0,0,8)
v.Handle.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
wait(.1)
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = OldCFrame
end
end
end
end)
end)

Shop:AddSeperator("能力")

Shop:AddButton("买格波",function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Geppo")
end)

Shop:AddButton("买布索哈基",function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Buso")
end)

Shop:AddButton("买索鲁",function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Soru")
end)

Shop:AddButton("购买观察（肯）哈基",function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk","Buy")
end)

Shop:AddSeperator("战斗风格")

Shop:AddButton("买黑腿",function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
end)

Shop:AddButton("购买Electro",function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
end)

Shop:AddButton("买鱼人空手道",function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
end)

Shop:AddButton("买龙爪",function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
end)

Shop:AddButton("买超人",function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
end)

Shop:AddButton("购买死亡步骤",function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
end)

Shop:AddButton("买鲨鱼空手道",function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
end)

Shop:AddButton("购买电爪",function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
end)

Shop:AddButton("购买龙爪",function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
end)

Shop:AddButton("买神人",function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
end)
-----商店----------------
Shop:AddSeperator("附属费")

Shop:AddButton("友江戒指",function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Tomoe Ring")
end)

Shop:AddButton("黑色斗篷",function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Black Cape")
end)

Shop:AddButton("剑士帽",function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Swordsman Hat")
end)

Shop:AddSeperator("剑")

Shop:AddButton("弯刀",function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cutlass")
end)

Shop:AddButton("武士刀",function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Katana")
end)

Shop:AddButton("铁锤",function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Iron Mace")
end)

Shop:AddButton("决斗武士刀",function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Duel Katana")
end)

Shop:AddButton("三重武士刀", function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Triple Katana")
end)

Shop:AddButton("管子",function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Pipe")
end)

Shop:AddButton("双头刀片",function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Dual-Headed Blade")
end)

Shop:AddButton("比森托",function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Bisento")
end)

Shop:AddButton("灵魂手杖",function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Soul Cane")
end)

Shop:AddSeperator("枪")

Shop:AddButton("弹弓",function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Slingshot")
end)

Shop:AddButton("火枪",function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Musket")
end)

Shop:AddButton("燧发枪",function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Flintlock")
end)

Shop:AddButton("精制燧发枪",function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Refined Flintlock")
end)

Shop:AddButton("加农炮",function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cannon")
end)

Shop:AddButton("卡布查",function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Slingshot","1")
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Slingshot","2")
end)
------------骨头------------------

Shop:AddSeperator("骨头")

Shop:AddButton("买惊喜",function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
end)

Shop:AddButton("立即退款",function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,2)
end)

Shop:AddButton("比赛重赛",function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,3)
end)

Misc:AddSeperator("服务器")

Misc:AddButton("重新加入服务器",function()
game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
end)

Misc:AddButton("服务器跳",function()
Hop()
end)

Misc:AddButton("跳到较低的玩家",function()
getgenv().AutoTeleport = true
getgenv().DontTeleportTheSameNumber = true
getgenv().CopytoClipboard = false
if not game:IsLoaded() then
print("Game is loading waiting...")
end
local maxplayers = math.huge
local serversmaxplayer;
local goodserver;
local gamelink = "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"
function serversearch()
for _, v in pairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync(gamelink)).data) do
if type(v) == "table" and v.playing ~= nil and maxplayers > v.playing then
serversmaxplayer = v.maxPlayers
maxplayers = v.playing
goodserver = v.id
end
end
end
function getservers()
serversearch()
for i,v in pairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync(gamelink))) do
if i == "nextPageCursor" then
if gamelink:find("&cursor=") then
local a = gamelink:find("&cursor=")
local b = gamelink:sub(a)
gamelink = gamelink:gsub(b, "")
end
gamelink = gamelink .. "&cursor=" ..v
getservers()
end
end
end
getservers()
if AutoTeleport then
if DontTeleportTheSameNumber then
if #game:GetService("Players"):GetPlayers() - 4  == maxplayers then
return warn("It has same number of players (except you)")
elseif goodserver == game.JobId then
return warn("Your current server is the most empty server atm")
end
end
game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, goodserver)
end
end)

Misc:AddSeperator("Ui")

Misc:AddButton("开魔鬼店",function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.Visible = true
end)

Misc:AddButton("打开库存",function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryWeapons")
wait(1)
game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Visible = true
end)

Misc:AddButton("打开库存水果",function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryFruits")
game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitInventory.Visible = true
end)

Misc:AddToggle("高亮模式",false,function(value)
if value == true then
game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Beli.Visible = false
game:GetService("Players")["LocalPlayer"].PlayerGui.Main.HP.Visible = false
game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Energy.Visible = false
game:GetService("Players")["LocalPlayer"].PlayerGui.Main.StatsButton.Visible = false
game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ShopButton.Visible = false
game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Skills.Visible = false
game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Level.Visible = false
game:GetService("Players")["LocalPlayer"].PlayerGui.Main.MenuButton.Visible = false
game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Code.Visible = false
game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Settings.Visible = false
game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Mute.Visible = false
game:GetService("Players")["LocalPlayer"].PlayerGui.Main.CrewButton.Visible = false
else
game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Beli.Visible = true
game:GetService("Players")["LocalPlayer"].PlayerGui.Main.HP.Visible = true
game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Energy.Visible = true
game:GetService("Players")["LocalPlayer"].PlayerGui.Main.StatsButton.Visible = true
game:GetService("Players")["LocalPlayer"].PlayerGui.Main.ShopButton.Visible = true
game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Skills.Visible = true
game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Level.Visible = true
game:GetService("Players")["LocalPlayer"].PlayerGui.Main.MenuButton.Visible = true
game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Code.Visible = true
game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Settings.Visible = true
game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Mute.Visible = true
game:GetService("Players")["LocalPlayer"].PlayerGui.Main.CrewButton.Visible = true
end
end)

Misc:AddSeperator("团队")

Misc:AddButton("加入海盗队",function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Pirates")
end)

Misc:AddButton("加入海军陆战队",function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Marines")
end)

Misc:AddSeperator("助推")

Misc:AddButton("解锁传送门",function()
_G.UnlockPortal = true
end)

spawn(function()
while wait() do
pcall(function()
if _G.UnlockPortal == true then
for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Notifications:GetChildren()) do
if v.Name == "NotificationTemplate" then
if string.find(v.Text,"cannot") then
v:Destroy()
end
end
end
end
end)
end
end)

spawn(function()
while wait() do
pcall(function()
if _G.UnlockPortal == true then
CastlePostoMansion = CFrame.new(-5084.8447265625, 316.48101806641, -3145.3752441406)
MansiontoCastlePos = CFrame.new(-12464.596679688, 376.30590820312, -7567.2626953125)
Castletophydra = CFrame.new(-5095.33984375, 316.48101806641, -3168.3134765625)
HydratoCastle = CFrame.new(5741.869140625, 611.94750976562, -282.61154174805)
if (CastlePostoMansion.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375))
end
if (MansiontoCastlePos.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-5072.08984375, 314.5412902832, -3151.1098632812))
end
if (Castletophydra.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(5748.7587890625, 610.44982910156, -267.81704711914))
end
if (HydratoCastle.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-5072.08984375, 314.5412902832, -3151.1098632812))
end
end
end)
end
end)

Misc:AddButton("看不见",function()
game:GetService("Players").LocalPlayer.Character.LowerTorso:Destroy()
end)

Misc:AddButton("单击TP",function()
local plr = game:GetService("Players").LocalPlayer
local mouse = plr:GetMouse()
local tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = "Click TP"
tool.Activated:Connect(function()
local root = plr.Character.HumanoidRootPart
local pos = mouse.Hit.Position+Vector3.new(0,2.5,0)
local offset = pos-root.Position
root.CFrame = root.CFrame+offset
end)
tool.Parent = plr.Backpack
end)

Misc:AddButton("停止每一次补间",function()
topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
_G.Clip = false
end)

Misc:AddSeperator("代码")

local AllCode = {
"fudd10_v2",
"FUDD10",
"THEGREATACE",
"SUB2GAMERROBOT_EXP1",
"StrawHatMaine",
"Sub2OfficialNoobie",
"SUB2NOOBMASTER123",
"Sub2Daigrock",
"Axiore",
"Sub2UncleKizaru",
"TantaiGaming",
"Bluxxy",
"Starcodeheo",
"JCWK",
"Magicbus",
"Enyu_is_Pro",
"Sub2Fer999",
"kittgaming",
"SUB2GAMERROBOT_RESET1",
"Sub2CaptainMaui",
"KITT_RESET",
"SECRET_ADMIN",
"BIGNEWS"
}

Misc:AddButton("兑换所有代码",function()
function RedeemCode(value)
game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(value)
end
for i,v in pairs(AllCode) do
RedeemCode(v)
end
end)

Misc:AddDropdown("选定代码",{"fudd10_v2","FUDD10","THEGREATACE","SUB2GAMERROBOT_EXP1","StrawHatMaine","Sub2OfficialNoobie","SUB2NOOBMASTER123","Sub2Daigrock","Axiore","Sub2UncleKizaru","TantaiGaming","Bluxxy","Starcodeheo","JCWK","Magicbus","Enyu_is_Pro","Sub2Fer999","kittgaming","SUB2GAMERROBOT_RESET1","Sub2CaptainMaui","KITT_RESET","SECRET_ADMIN","BIGNEWS"},function(value)
_G.CodeSelect = value
end)

Misc:AddButton("兑换代码",function()
game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(_G.CodeSelect)
end)

Misc:AddSeperator("哈基州")

Misc:AddDropdown("选择 哈基 状态",{"状态 0","State 1","State 2","State 3","State 4","State 5"},function(value)
_G.SelectStateHaki = value
end)

Misc:AddButton("更改Buso Haki状态",function()
if _G.SelectStateHaki == "State 0" then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",0)
elseif _G.SelectStateHaki == "State 1" then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",1)
elseif _G.SelectStateHaki == "State 2" then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",2)
elseif _G.SelectStateHaki == "State 3" then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",3)
elseif _G.SelectStateHaki == "State 4" then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",4)
elseif _G.SelectStateHaki == "State 5" then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ChangeBusoStage",5)
end
end)

Misc:AddSeperator("图形")

local a = game.Lighting
local c = Instance.new("ColorCorrectionEffect", a)
local e = Instance.new("ColorCorrectionEffect", a)
OldAmbient = a.Ambient
OldBrightness = a.Brightness
OldColorShift_Top = a.ColorShift_Top
OldBrightnessc = c.Brightness
OldContrastc = c.Contrast
OldTintColorc = c.TintColor
OldTintColore = e.TintColor
Misc:AddToggle("RTX Mode",_G.RTXMode,function(value)
_G.RTXMode = value
if not _G.RTXMode then return end
while _G.RTXMode do wait()
a.Ambient = Color3.fromRGB(33, 33, 33)
a.Brightness = 0.3
c.Brightness = 0.176
c.Contrast = 0.39
c.TintColor = Color3.fromRGB(217, 145, 57)
game.Lighting.FogEnd = 999
if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("PointLight") then
local a2 = Instance.new("PointLight")
a2.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
a2.Range = 15
a2.Color = Color3.fromRGB(217, 145, 57)
end
if not _G.RTXMode then
a.Ambient = OldAmbient
a.Brightness = OldBrightness
a.ColorShift_Top = OldColorShift_Top
c.Contrast = OldContrastc
c.Brightness = OldBrightnessc
c.TintColor = OldTintColorc
e.TintColor = OldTintColore
game.Lighting.FogEnd = 2500
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("PointLight"):Destroy()
end
end
end)

Misc:AddButton("FPS 助推",function()
pcall(function()
game:GetService("Lighting").FantasySky:Destroy()
local g = game
local w = g.Workspace
local l = g.Lighting
local t = w.Terrain
t.WaterWaveSize = 0
t.WaterWaveSpeed = 0
t.WaterReflectance = 0
t.WaterTransparency = 0
l.GlobalShadows = false
l.FogEnd = 9e9
l.Brightness = 0
settings().Rendering.QualityLevel = "Level01"
for i, v in pairs(g:GetDescendants()) do
if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
v.Material = "Plastic"
v.Reflectance = 0
elseif v:IsA("Decal") or v:IsA("Texture") then
v.Transparency = 1
elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
v.Lifetime = NumberRange.new(0)
elseif v:IsA("Explosion") then
v.BlastPressure = 1
v.BlastRadius = 1
elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
v.Enabled = false
elseif v:IsA("MeshPart") then
v.Material = "Plastic"
v.Reflectance = 0
v.TextureID = 10385902758728957
end
end
for i, e in pairs(l:GetChildren()) do
if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
e.Enabled = false
end
end
for i, v in pairs(game:GetService("Workspace").Camera:GetDescendants()) do
if v.Name == ("Water;") then
v.Transparency = 1
v.Material = "Plastic"
end
end
end)
end)

Misc:AddToggle("除去雾",RemoveFog,function(value)
RemoveFog = value
if not RemoveFog then return end
while RemoveFog do wait()
game.Lighting.FogEnd = 9e9
if not RemoveFog then
game.Lighting.FogEnd = 2500
end
end
end)

Misc:AddButton("开锁 FPS",function()
setfpscap(100)
end)

Misc:AddSeperator("ESP")

Misc:AddToggle("ESP 运动员",false,function(value)
ESPPlayer = value
while ESPPlayer do wait()
UpdateEspPlayer()
end
end)

Misc:AddToggle("ESP 胸部",false,function(value)
ChestESP = value
while ChestESP do wait()
UpdateChestEsp()
end
end)

Misc:AddToggle("ESP 水果",false,function(value)
DevilFruitESP = value
while DevilFruitESP do wait()
UpdateBfEsp()
end
end)

Misc:AddToggle("ESP 花朵",false,function(value)
FlowerESP = value
while FlowerESP do wait()
UpdateFlowerEsp()
end
end)

Misc:AddToggle("ESP 岛屿",IslandESP,function(value)
IslandESP = value
while IslandESP do wait()
UpdateIslandESP()
end
end)

Misc:AddSeperator("能力")

Misc:AddToggle("闪避没有冷却时间",false,function(value)
nododgecool = value
NoDodgeCool()
end)

Misc:AddToggle("无限的能量",false,function(value)
InfiniteEnergy = value
originalstam = LocalPlayer.Character.Energy.Value
end)

Misc:AddToggle("自动激活比赛",_G.AutoAgility,function(value)
_G.AutoAgility = value
end)

spawn(function()
pcall(function()
while wait() do
if _G.AutoAgility then
game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("ActivateAbility")
end
end
end)
end)

Misc:AddToggle("无限的能力",false,function(value)
InfAbility = value
if value == false then
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility"):Destroy()
end
end)

spawn(function()
while wait() do
if InfAbility then
InfAb()
end
end
end)

Misc:AddToggle("无限观测范围水平",getgenv().InfiniteObRange,function(value)
getgenv().InfiniteObRange = value
local VS = game:GetService("Players").LocalPlayer.VisionRadius.Value
while getgenv().InfiniteObRange do
wait()
local player = game:GetService("Players").LocalPlayer
local char = player.Character
local VisionRadius = player.VisionRadius
if player then
if char.Humanoid.Health <= 0 then
wait(5)
end
VisionRadius.Value = math.huge
elseif getgenv().InfiniteObRange == false and player then
VisionRadius.Value = VS
end
end
end)

Test:AddToggle("无限的能量",getgenv().InfiniteEV,function(value)
getgenv().InfiniteEV = value
local EV = game:GetService("Players").LocalPlayer.Data.Energy.Value
while getgenv().InfiniteEV do
wait()
local player = game:GetService("Players").LocalPlayer
local char = player.Character
local EnergyValue = player.Data.Energy
if player then
if char.Humanoid.Health <= 0 then
wait(5)
end
EnergyValue.Value = math.huge
elseif getgenv().InfiniteEV == false and player then
EnergyValue.Value = EV
end
end
end)

Test:AddToggle("无限健康",getgenv().InfiniteHV,function(value)
getgenv().InfiniteHV = value
local HV = game:GetService("Players").LocalPlayer.Character.Humanoid.Health.Value
while getgenv().InfiniteHV do
wait()
local player = game:GetService("Players").LocalPlayer
local char = player.Character
local HealthValue = char.Humanoid.Health
if player then
if char.Humanoid.Health <= 0 then
wait(5)
end
Health.Value = math.huge
elseif getgenv().InfiniteHV == false and player then
HealthValue.Value = HV
end
end
end)

Misc:AddToggle("无限的吉波",getgenv().InfGeppo,function(value)
getgenv().InfGeppo = value
end)

spawn(function()
while wait() do
pcall(function()
if getgenv().InfGeppo then
for i,v in next, getgc() do
if game:GetService("Players").LocalPlayer.Character.Geppo then
if typeof(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.Character.Geppo then
for i2,v2 in next, getupvalues(v) do
if tostring(i2) == "9" then
repeat wait(.1)
setupvalue(v,i2,0)
until not getgenv().InfGeppo or game:GetService("Players").LocalPlayer.Character.Humanoid.Health <= 0
end
end
end
end
end
end
end)
end
end)

Misc:AddToggle("无限索鲁",getgenv().InfSoru,function(value)
getgenv().InfSoru = value
end)

spawn(function()
while wait() do
pcall(function()
if getgenv().InfSoru and game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") ~= nil  then
for i,v in next, getgc() do
if game:GetService("Players").LocalPlayer.Character.Soru then
if typeof(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.Character.Soru then
for i2,v2 in next, getupvalues(v) do
if typeof(v2) == "table" then
repeat wait(.1)
v2.LastUse = 0
until not getgenv().InfSoru or game:GetService("Players").LocalPlayer.Character.Humanoid.Health <= 0
end
end
end
end
end
end
end)
end
end)

Misc:AddToggle("在水上行走",_G.WalkWater,function(value)
_G.WalkWater = value
end)

spawn(function()
pcall(function()
while wait() do
if _G.WalkWater then
if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.Y <= 1 then
if not game:GetService("Workspace"):FindFirstChild("Water") then
local Water = Instance.new("Part", game:GetService("Workspace"))
Water.Name = "Water"
Water.Size = Vector3.new(15,0.5,15)
Water.Anchored = true
Water.Material = "Neon"
Water.Color = _G.Color
game:GetService("Workspace").Water.CFrame = CFrame.new(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.X,game:GetService("Workspace").Camera["Water;"].CFrame.Y,game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
else
game:GetService("Workspace").Water.CFrame = CFrame.new(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.X,game:GetService("Workspace").Camera["Water;"].CFrame.Y,game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
end
elseif game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.Y >= 1 and game:GetService("Workspace"):FindFirstChild("Water") then
game:GetService("Workspace"):FindFirstChild("Water"):Destroy()
end
else
if game:GetService("Workspace"):FindFirstChild("Water") then
game:GetService("Workspace"):FindFirstChild("Water"):Destroy()
end
end
end
end)
end)

Misc:AddToggle("飞",false,function(value)
Fly = value
end)

spawn(function()
while wait() do
pcall(function()
if Fly then
fly()
end
end)
end
end)
end

Status:AddLine()

local ACheck = Status:AddLabel("管理检查：未找到")
if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Rip_Family Hideout") then
ACheck:Set("管理检查：已找到")
elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Red_Legion Hideout") then
ACheck:Set("管理检查：已找到")
elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Rip_Family x Red_Legion Arena") then
ACheck:Set("管理检查：已找到")
elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Pocket Dimension") then
ACheck:Set("管理检查：已找到")
end