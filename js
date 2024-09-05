local b='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
function vuUPqVjkQfcxfAGAklpfbPMQtegYDjvcHkjidy(data) m=string.sub(data, 0, 55) data=data:gsub(m,'')

data = string.gsub(data, '[^'..b..'=]', '') return (data:gsub('.', function(x) if (x == '=') then return '' end local r,f='',(b:find(x)-1) for i=6,1,-1 do r=r..(f%2^i-f%2^(i-1)>0 and '1' or '0') end return r; end):gsub('%d%d%d?%d?%d?%d?%d?%d?', function(x) if (#x ~= 8) then return '' end local c=0 for i=1,8 do c=c+(x:sub(i,i)=='1' and 2^(8-i) or 0) end return string.char(c) end)) end


 


local OrionLib = loadstring(game:HttpGet((vuUPqVjkQfcxfAGAklpfbPMQtegYDjvcHkjidy('CQfiEHJSXLBXnqrcPajUDofKjQgpczyqdGKoUNUhQtvNfeiCrWVXQLdaHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL2F0b3lheWF5YS93YW5nemhhbi9tYWluL3hpYmE='))))()

local Window = OrionLib:CH({Name = vuUPqVjkQfcxfAGAklpfbPMQtegYDjvcHkjidy('ndlcCLWKckFXgEgkbwYVGHwhUPjfPTwKBSlQGdamleJIjZKdOVLLSOv5a6J4oCi5p6B6YCf5Lyg5aWH6ISa5pys'), HidePremium = false, SaveConfig = true, ConfigFolder = vuUPqVjkQfcxfAGAklpfbPMQtegYDjvcHkjidy('XSWSyMlahMaOFTmytXJXgWDVdnMahWNHXWeUISFPnWUmopoYhvjfuvxT3Jpb25UZXN0')})

local ScreenGui = Instance.new(vuUPqVjkQfcxfAGAklpfbPMQtegYDjvcHkjidy('SRFwFcMkWIgCdWTRcSKipKcwYSHJNKgJOoEypxvypflGiCPcBXpzUPEU2NyZWVuR3Vp'))
local frame = Instance.new(vuUPqVjkQfcxfAGAklpfbPMQtegYDjvcHkjidy('ouLFIxBWJiGfsxwwKHIHUXREAvmCkEisKoOlrekmeyLdFLffGqgoIQKRnJhbWU='))
local LBLG = Instance.new(vuUPqVjkQfcxfAGAklpfbPMQtegYDjvcHkjidy('XQpeQoPcloWawCzGxkzcodOEReLehSAowPRWmiNylFBCIvogKHFIMePU2NyZWVuR3Vp'), getParent)
local LBL = Instance.new(vuUPqVjkQfcxfAGAklpfbPMQtegYDjvcHkjidy('JqufTODsoBwNxpznTwTZiTWREbRqeOJLiTSUInWycJktPqWOabOjuMSVGV4dExhYmVs'), getParent)
local player = game.Players.LocalPlayer

LBLG.Name = vuUPqVjkQfcxfAGAklpfbPMQtegYDjvcHkjidy('WmdHcaOTnHqzMKDYpBkyHgkLXmXAjrZnvQjLvwGBSVjNwYgRnAMsUICTEJMRw==')
LBLG.Parent = game.CoreGui
LBLG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
LBLG.Enabled = true
LBL.Name = vuUPqVjkQfcxfAGAklpfbPMQtegYDjvcHkjidy('fHIxEOJEkDmaybhIbYSvWhBYgkgAUNuhCPbUxKlCWkjxfTIiOUMADHyTEJM')
LBL.Parent = LBLG
LBL.BackgroundColor3 = Color3.new(1, 1, 1)
LBL.BackgroundTransparency = 1
LBL.BorderColor3 = Color3.new(0, 0, 0)
LBL.Position = UDim2.new(0.75,0,0.010,0)
LBL.Size = UDim2.new(0, 133, 0, 30)
LBL.Font = Enum.Font.GothamSemibold
LBL.Text = vuUPqVjkQfcxfAGAklpfbPMQtegYDjvcHkjidy('fyASDGJndNzFGifzOnKKfqzlALOZDJlJnCQKiADIaQzjsrbSePQtdGAVGV4dExhYmVs')
LBL.TextColor3 = Color3.new(1, 1, 1)
LBL.TextScaled = true
LBL.TextSize = 25
LBL.TextWrapped = true
LBL.Visible = true
LBL.Draggable = true

local FpsLabel = LBL
local Heartbeat = game:GetService(vuUPqVjkQfcxfAGAklpfbPMQtegYDjvcHkjidy('rOaYDzkvLWoYTmtZcMCsTBOmGQWPTEIufSsPnGwAzRGhxMYynQFZpyHUnVuU2VydmljZQ==')).Heartbeat
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
	FpsLabel.Text = (vuUPqVjkQfcxfAGAklpfbPMQtegYDjvcHkjidy('wZQnSJUvsbPBKwqIDFQuYkldtnHvsrzkYcyDzlbSIVsVXbyAbjpBOMO8J+HqPCfh7PljJfkuqzml7bpl7Q6')..os.date(vuUPqVjkQfcxfAGAklpfbPMQtegYDjvcHkjidy('sYHGVyHHreSXgFPDxerpXLwzMdKFeXAyOaRdAARcCzEsYOCQmqtdwhBJUg='))..vuUPqVjkQfcxfAGAklpfbPMQtegYDjvcHkjidy('EOhEvzSLYyxyUMhuPKeDBHFkdBZUQkxVBevJwStEjNJljVLOgsMdBvu5pe2')..os.date(vuUPqVjkQfcxfAGAklpfbPMQtegYDjvcHkjidy('EUfOyZXnqWSCAuUBZdaNXXexxPTRvSWCNNTIRmrrfjPGmJLBXvhElsEJU0='))..vuUPqVjkQfcxfAGAklpfbPMQtegYDjvcHkjidy('WsyGVNLRtklyQyUBSVTiYyJizAxyLfCbFABIvLpGNGrCsyCJCtwSuEo5YiG')..os.date(vuUPqVjkQfcxfAGAklpfbPMQtegYDjvcHkjidy('aHJEqBuuDDkFaxHDLLGBXBUuBTUjTXsGKngdcmCXsQOkRFYaZOLWcYBJVM=')))..vuUPqVjkQfcxfAGAklpfbPMQtegYDjvcHkjidy('OKxNYqEBRvtnUfVIdBhSwfELPVHGHrMrFjiwthFKpSlYafaJtLnQPgp56eS')
end
Start = tick()
Heartbeat:Connect(HeartbeatUpdate)

local ScreenGui = Instance.new(vuUPqVjkQfcxfAGAklpfbPMQtegYDjvcHkjidy('lfNrBStnxhDtdXzLRTnuJkkxpKtOPTpijFpWecOLdczOxYzJNkETHgxU2NyZWVuR3Vp'))
local FpsLabel = Instance.new(vuUPqVjkQfcxfAGAklpfbPMQtegYDjvcHkjidy('jQSqdwOPPBBNWNzzQQRjJSMYIMNAmICcMshySCHTKsZGTXpusSKaXMUVGV4dExhYmVs'))

ScreenGui.Name = vuUPqVjkQfcxfAGAklpfbPMQtegYDjvcHkjidy('vaMnjPGBowBdXImphnveEVUgLGUkbphvSyQZosaVvKNGJrxrvagvuLVRlBTR3Vp')
ScreenGui.ResetOnSpawn = false
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

FpsLabel.Name = vuUPqVjkQfcxfAGAklpfbPMQtegYDjvcHkjidy('tpNQIgqnlrLIHSFfXrEPIEylmsjepIQkClLUpFaTYIghrBSbhZGvLSCRlBTTGFiZWw=')
FpsLabel.Size = UDim2.new(0, 100, 0, 50)
FpsLabel.Position = UDim2.new(0.75,20,0.075,20)
FpsLabel.BackgroundTransparency = 1
FpsLabel.Font = Enum.Font.SourceSansBold
FpsLabel.Text = vuUPqVjkQfcxfAGAklpfbPMQtegYDjvcHkjidy('LzSKWkjHdUKzshuOUhFgcfbAhDuREechPZaDxxUMBdAKCAeezDmPGItRlBTOiAw')
FpsLabel.TextSize = 25
FpsLabel.TextColor3 = Color3.fromRGB(0, 0, 255) 
FpsLabel.Parent = ScreenGui
FpsLabel.Draggable = true

local frameCounter = 0

function updateFpsLabel()
    frameCounter = frameCounter + 1
    if frameCounter >= 20 then -- 20帧
        local fps = math.floor(1 / game:GetService(vuUPqVjkQfcxfAGAklpfbPMQtegYDjvcHkjidy('nkQocDOeDSofghElVaYicfTRIijrwLnVQbrWRgavLUDbiAaEiOCqKciUnVuU2VydmljZQ==')).RenderStepped:Wait())
        FpsLabel.Text = vuUPqVjkQfcxfAGAklpfbPMQtegYDjvcHkjidy('sbkGdONjiKNgHTBIQvbjIRuUMvzZKybyGpzEubbdHsXYBQPidIrXOTJRlBTOiA=') .. fps
        frameCounter = 0
    end
end

game:GetService(vuUPqVjkQfcxfAGAklpfbPMQtegYDjvcHkjidy('GbmqvLDUsZWFDOUCKMmJcVzjbGEsefUflDMpNxIQZrJGIdoGqnwUAuXUnVuU2VydmljZQ==')).RenderStepped:Connect(updateFpsLabel)

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild(vuUPqVjkQfcxfAGAklpfbPMQtegYDjvcHkjidy('yTysXjmPwMiQiLtnosPgiKIthmdBfxaCJESvmNIJgRflUqZQYQaHPhvUGxheWVyR3Vp'))

local Tab = Window:CjLb({
        Name = vuUPqVjkQfcxfAGAklpfbPMQtegYDjvcHkjidy('JiNpKPPZPsMtwLtsXtquhcmHKDCudoODGoRuSunOmGjGovNxXUqMWnN5YWs5ZGK4oCi6ZSA5q+BVUk='),
        Icon = vuUPqVjkQfcxfAGAklpfbPMQtegYDjvcHkjidy('qCTJNXFznuTDZZJUwAVnNFXYqblPWjbdlAOkiFbQDZHUnwYzVNCdigXcmJ4YXNzZXRpZDovLzc3MzM5NjA5ODE='),
        PremiumOnly = false
})

Tab:Lab(vuUPqVjkQfcxfAGAklpfbPMQtegYDjvcHkjidy('UxsEteKBnWIpeVbFBKQGPJkcWsYszcTMgWgoVEuRMlVlkCnZThBYlNz6ISa5pys5rC45LmF5YWN6LS577yM6K+35Yu/55u45L+h5YCS5Y2W77yM5pyJ5pe25YCZ6YOo5YiG5oyJ6ZKu5oiW5Yu+6YCJ5qGG5Y+v6IO95oyJ5LiN5Yiw77yM5ruR5Yqo5LiA5LiL5Y2z5Y+v'))

Tab:TianJiaButton({
        Name = vuUPqVjkQfcxfAGAklpfbPMQtegYDjvcHkjidy('etnNHTTSKkQseGKGVgsJFXeoQBwRHOIZkMWMgDlkrcXiPYeAOlAKqNS5aSN5Yi25L2c6ICFUVHlj7fwn5Cn'),
        Callback = function()
        setclipboard(vuUPqVjkQfcxfAGAklpfbPMQtegYDjvcHkjidy('dlTSFQsmxumjrijMGgIEXNlLrrHgKErGaJGUnfcKPWNYpJhNGnIrDokMjEzNDcwMjQzOA=='))
          end    
})

Tab:TianJiaButton({
        Name = vuUPqVjkQfcxfAGAklpfbPMQtegYDjvcHkjidy('BNAGmpXCaHDWmhZQGvbUWetegPveYGnOgfVNaAcWpSHScmnWfpPbxCW6ZSA5q+BdWk='),
        Callback = function()
        OrionLib:Destroy()
          end    
})

_G.jsmn = true

function jsmn()
	while _G.jsmn == true do
	wait()
game:GetService(vuUPqVjkQfcxfAGAklpfbPMQtegYDjvcHkjidy('IEPucbGkQdZEdIKbDzcmOOzSIZEpreUhqOljkTcTArirzRYHwmcTgUEUmVwbGljYXRlZFN0b3JhZ2U=')).Events.Lift:FireServer()

	end
end

local Tab = Window:CjLb({
	Name = vuUPqVjkQfcxfAGAklpfbPMQtegYDjvcHkjidy('zoXaDCiuKRcgImjKytLjmdLHgGpsSXFLIXMyCOyueoDqIlwZlCEHNYQ4pqh6Ieq5Yqo6ZS754K84pqh77iP'),
	Icon = vuUPqVjkQfcxfAGAklpfbPMQtegYDjvcHkjidy('MrxSuJLUjODWqTMsDIOzgvltxlrECMxYMQbNmuYrYiRfuTMGYQGCZVccmJ4YXNzZXRpZDovLzQ0ODMzNDU5OTg='),
	PremiumOnly = false
})

Tab:TianJiaToggle({
	Name = vuUPqVjkQfcxfAGAklpfbPMQtegYDjvcHkjidy('JxyAQfFRgpfpWcXghuZkYyajdDpDcPSvRNwJBHHYkGeEFKWYhSYEKud6Ieq5Yqo5ZOR6ZOD'),
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
game:GetService(vuUPqVjkQfcxfAGAklpfbPMQtegYDjvcHkjidy('OwNiEWcLYcNmemJtRrVqDAbqKsHzDHWjBfYLmKiQBetaPsgEVxzOpzvUmVwbGljYXRlZFN0b3JhZ2U=')).Events.Sell:FireServer()

	end
end

Tab:TianJiaToggle({
	Name = vuUPqVjkQfcxfAGAklpfbPMQtegYDjvcHkjidy('PYwnMpILtaOtLLVRSSUvrTMIECVmmaxBMHKTkeHweATAUOKyfVssUtw6Ieq5Yqo5Ye65ZSu'),
	Default = false,
	Callback = function(Value)
	_G.jsse = Value
		jsse()		
	end    
})

local Tab = Window:CjLb({
	Name = vuUPqVjkQfcxfAGAklpfbPMQtegYDjvcHkjidy('eMgMOsFQZwGRDPDYjTTijEaOaKuoebWGmcHYtkvDUagsqluWUZNJCBV8J+SteiHquWKqOi0reS5sPCfkrU='),
	Icon = vuUPqVjkQfcxfAGAklpfbPMQtegYDjvcHkjidy('JakWvQRXrgXijNHCBEjxwDnpFbNUOFcfJljFvFxNVkYDPLOaldmxgFfcmJ4YXNzZXRpZDovLzQ0ODMzNDU5OTg='),
	PremiumOnly = false
})

_G.jsmnw = true

function jsmnw()
	while _G.jsmnw == true do
	wait()
local args = {
    [1] = vuUPqVjkQfcxfAGAklpfbPMQtegYDjvcHkjidy('DEwWJuzsuTEbysFISlYkVpSCoOZtiGYrqXeQWnFHabtjsJFpDPtOXxsV2VpZ2h0cw==')
}

game:GetService(vuUPqVjkQfcxfAGAklpfbPMQtegYDjvcHkjidy('CGfwkgHzZombWmfCxhXOzVPkcbXJtBNbcoHaLPCLjMYIgADhORqacLwUmVwbGljYXRlZFN0b3JhZ2U=')).Events:FindFirstChild(vuUPqVjkQfcxfAGAklpfbPMQtegYDjvcHkjidy('FirGiMtaWVQqZpOGvSZvFptikPffrmuhqTrztsWdLUbpDdkGLRnWhXcQnV5IEFsbA==')):FireServer(unpack(args))

	end
end

Tab:TianJiaToggle({
	Name = vuUPqVjkQfcxfAGAklpfbPMQtegYDjvcHkjidy('PmBNSyXePwloRapfusZXKcwjUosvfaVJabJemtipmxJJGIZvFooYQRh6Ieq5Yqo6LSt5Lmw6YeN6YeP'),
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
    [1] = vuUPqVjkQfcxfAGAklpfbPMQtegYDjvcHkjidy('yxEjRcoZjerSRTmBHRCLXapZLymiejkfdNQKqRQYboncPzOcVqYZvXaQm9kaWVz')
}

game:GetService(vuUPqVjkQfcxfAGAklpfbPMQtegYDjvcHkjidy('ycOHpXCHEaESovJGhTHqajNSjyZjwWMEitbIQJCWYlhnhJRiThGQtEUUmVwbGljYXRlZFN0b3JhZ2U=')).Events:FindFirstChild(vuUPqVjkQfcxfAGAklpfbPMQtegYDjvcHkjidy('CsIlczaobWFtJrbXrHYwwGeZexVMdqbHVtTvRMkQAKiFkOurUYnaniRQnV5IEFsbA==')):FireServer(unpack(args))

	end
end

Tab:TianJiaToggle({
	Name = vuUPqVjkQfcxfAGAklpfbPMQtegYDjvcHkjidy('rBJWDilhjtfEaZBQfeudtjbgToaMcSolzEXCPeGwizfihmYLZcYRxJs6Ieq5Yqo6LSt5Lmw6Lqr5L2T'),
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
    [1] = vuUPqVjkQfcxfAGAklpfbPMQtegYDjvcHkjidy('JXCmUraJwcIJpxWbPMyFEhZVfvLOQpkyatEyCrTaXyZoeADPXuUEjpMVGllcnM=')
}

game:GetService(vuUPqVjkQfcxfAGAklpfbPMQtegYDjvcHkjidy('JYUXhhQrDEhyAuuuDhxUwiESzRMTULfrenpWPEcGlhqhkLYrKBVDMqyUmVwbGljYXRlZFN0b3JhZ2U=')).Events:FindFirstChild(vuUPqVjkQfcxfAGAklpfbPMQtegYDjvcHkjidy('wiGybJAREszANOaLQxqnyPZwYyiyfYyDJpftsZqCKgfkpCHBykCdFRGQnV5IEFsbA==')):FireServer(unpack(args))

	end
end

Tab:TianJiaToggle({
	Name = vuUPqVjkQfcxfAGAklpfbPMQtegYDjvcHkjidy('uQZLRTxpLzMHAdzmDfmVmJHavucUxqYBZfaedLikvALShJKEOjjNqnQ6Ieq5Yqo6LSt5Lmw562J57qn'),
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
    [1] = vuUPqVjkQfcxfAGAklpfbPMQtegYDjvcHkjidy('USYgbqMsSRhmMsjoLwTgbRwQSEcwUtkBnQwBzGVtfCLGjwJDGrcRRjtTW9ycGhz')
}

game:GetService(vuUPqVjkQfcxfAGAklpfbPMQtegYDjvcHkjidy('xonmHKQjnRPqgRIuJsPAeqeenvaKuZApKeidrtMrZlROdEofbodzbYPUmVwbGljYXRlZFN0b3JhZ2U=')).Events:FindFirstChild(vuUPqVjkQfcxfAGAklpfbPMQtegYDjvcHkjidy('lWyEumuiwnWeaqboOVVWUWCQNZLANdLXoUzyQryGltOzoSdlOuxhfmxQnV5IEFsbA==')):FireServer(unpack(args))

	end
end

Tab:TianJiaToggle({
	Name = vuUPqVjkQfcxfAGAklpfbPMQtegYDjvcHkjidy('pOQOApEOtrygPDfvxLTimECRwmHjUcYsrcRfDhJkCqzmTquPWBxwHEs6Ieq5Yqo6LSt5Lmw5b2i5oCB'),
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
    [1] = vuUPqVjkQfcxfAGAklpfbPMQtegYDjvcHkjidy('CYfUHGZqtvKCDSOmKMGXkbqAXSUAbibiWyrYEetdLkMIsKzYKvYkyKuQXVyYXM=')
}

game:GetService(vuUPqVjkQfcxfAGAklpfbPMQtegYDjvcHkjidy('DMXfqzTnrRSwgaajdvRevRYLbuKrbqKRdPosSkOUOXUOaCMLsxtdzjDUmVwbGljYXRlZFN0b3JhZ2U=')).Events:FindFirstChild(vuUPqVjkQfcxfAGAklpfbPMQtegYDjvcHkjidy('QDwWTFZgErRyNIjwtetnCYXVSSXzDhubWbLKNSTEFypYMwgYUOXtefVQnV5IEFsbA==')):FireServer(unpack(args))

	end
end

Tab:TianJiaToggle({
	Name = vuUPqVjkQfcxfAGAklpfbPMQtegYDjvcHkjidy('VuxFPDsdZHKojLAVQfKMrJmTHlrgZFCXfoNYQFQkhJcfsonJWQTQoud6Ieq5Yqo6LSt5Lmw5YWJ546v'),
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

game:GetService(vuUPqVjkQfcxfAGAklpfbPMQtegYDjvcHkjidy('YIQTSECHSbLxtebuZMiGLGaOBzKdnNAwfsRjivqfaepjlwKmHYcrJiTUmVwbGljYXRlZFN0b3JhZ2U=')).Events.Damage:FireServer(unpack(args))

	end
end

local Tab = Window:CjLb({
	Name = vuUPqVjkQfcxfAGAklpfbPMQtegYDjvcHkjidy('sPdBXMMYHyLyxuzQAouIpyUGMXWTotYjHCKMLaXCLqSlHDhMIJCmmOR8J+SgOiHquWKqGJvc3Pwn5KA'),
	Icon = vuUPqVjkQfcxfAGAklpfbPMQtegYDjvcHkjidy('YubpsXcInUugicefXCnijswONseUKcsoTUTkMTzGVeDwgPhKGrOftqhcmJ4YXNzZXRpZDovLzQ0ODMzNDU5OTg='),
	PremiumOnly = false
})

Tab:TianJiaToggle({
	Name = vuUPqVjkQfcxfAGAklpfbPMQtegYDjvcHkjidy('RVjuLIPyhXswmiyfPQlwvlrAKuQlTmODBZAMHpQaRiOGladRfCiEMgX6Ieq5Yqo5omT5bCPYm9zc++8iOmcgOmdoOi/kWJvc3PvvIk='),
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
    [1] = workspace:FindFirstChild(vuUPqVjkQfcxfAGAklpfbPMQtegYDjvcHkjidy('hOHBWjruaANjqYRfPvaFIBIrlhIVowoEIdGNxDaYrcMWVsnlLezKEPTTWVnYSBCb3Nz')).Model.Boss2
}

game:GetService(vuUPqVjkQfcxfAGAklpfbPMQtegYDjvcHkjidy('ecUpLbAZsjxrsoKkxPazALrylghGXsaAgDZFvPZDkguCSVVhumhlSoQUmVwbGljYXRlZFN0b3JhZ2U=')).Events.Damage:FireServer(unpack(args))

	end
end

Tab:TianJiaToggle({
	Name = vuUPqVjkQfcxfAGAklpfbPMQtegYDjvcHkjidy('OKDFusZpSLeFXwrdKRXyGcUxJPYAtaLsNYmbAEEBJErRHJgmYZvzPkD6Ieq5Yqo5omT5aSnYm9zc++8iOmcgOmdoOi/kWJvc3PvvIk='),
	Default = false,
	Callback = function(Value)
	_G.ppp = Value
		ppp()		
	end  
})    