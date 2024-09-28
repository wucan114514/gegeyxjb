local b='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
function kPPBQWteTBoUagxGEsYTCeEdQGvuOJcQy(data) m=string.sub(data, 0, 55) data=data:gsub(m,'')

data = string.gsub(data, '[^'..b..'=]', '') return (data:gsub('.', function(x) if (x == '=') then return '' end local r,f='',(b:find(x)-1) for i=6,1,-1 do r=r..(f%2^i-f%2^(i-1)>0 and '1' or '0') end return r; end):gsub('%d%d%d?%d?%d?%d?%d?%d?', function(x) if (#x ~= 8) then return '' end local c=0 for i=1,8 do c=c+(x:sub(i,i)=='1' and 2^(8-i) or 0) end return string.char(c) end)) end


 


local CoreGui = game:GetService(kPPBQWteTBoUagxGEsYTCeEdQGvuOJcQy('qnbjdrnsxyRxDPqbLpVKNoGFMGYtHduWUNiavXRbFIfnoZPXyiXfHRkU3RhcnRlckd1aQ=='))

CoreGui:SetCore(kPPBQWteTBoUagxGEsYTCeEdQGvuOJcQy('NYCHSezIfrESslUYOgqtMYsLrGUOpMbAkUfFKKObjMOliGJeOjMmELqU2VuZE5vdGlmaWNhdGlvbg=='), {
    Title = kPPBQWteTBoUagxGEsYTCeEdQGvuOJcQy('dPSqmoeryybGNfoWGYHkMzpvwoGQKyjzwiFnwGJsqTdqydkoGtcZXAn56Gu6K6k6Lqr5Lu9'),
    Text = kPPBQWteTBoUagxGEsYTCeEdQGvuOJcQy('HxtOZheRALwHVcfxIMLvychHkXvHfvYmcLFguVcgqknEBZiibGCqIQg5q2j5Zyo6aqM6K+BLi4uLg=='),
    Duration = 5, --时间
})

local a=tostring(game:GetService(kPPBQWteTBoUagxGEsYTCeEdQGvuOJcQy('rORChdJMXWmzuXhDbOgnaYOHKzrhgOfMypNUoYeLxyoTjgQnncctjwvUmJ4QW5hbHl0aWNzU2VydmljZQ==')):GetClientId());

if a==kPPBQWteTBoUagxGEsYTCeEdQGvuOJcQy('VhQywYaaZEOjjkIOsdUYyyyhOjAAUtqrMgAMWnJOdKbEYBwawdmSauzOGZlNTUzMzYtMzYyMy00ZDdlLTk3YjItMmQ3MTFmODYwZWIy')then
_G.ato=true
elseif a==kPPBQWteTBoUagxGEsYTCeEdQGvuOJcQy('fHCwmthnxbAQPccpwsDmbHjVysrZSXwqoHgdOHnELzbRzxuYucXoLGSNWQ0YjEwMWYtMjZjZi00MWE0LWI3ZjctMGNiNzU2YmI5MDY2')then
_G.ato=true
elseif a==kPPBQWteTBoUagxGEsYTCeEdQGvuOJcQy('VfrXPcnlOWpMcAniLViIktdFWXJOAhioacCARLislNFNTReoltBovZHYmRmMjgwOTEtZTY3MS00ZmIwLTkyZjMtNTEyMjc5ODIyMGI5')then
_G.ato=true
elseif a==kPPBQWteTBoUagxGEsYTCeEdQGvuOJcQy('LwlhndkUgaTzNOXJBlaDSLXHLRSWOiwPqvDCrISkkERoKfheatLQBKZOWQxNWIwZjEtY2Q1MS00YzExLTkxZWQtYThiMzQ1ODllOGNl')then
_G.ato=true
elseif a==kPPBQWteTBoUagxGEsYTCeEdQGvuOJcQy('lMWjUgqWsLAZMFvnhZPTRXrHcoeBXaoHbllhnYxnlsTMcyEqhGbnFlGNGUyOWRiOGEtZWIxNS00Yjc0LTkxYWQtNmQ2MmU2OGE4NGMy')then
_G.ato=true
elseif a==kPPBQWteTBoUagxGEsYTCeEdQGvuOJcQy('XvtcmeQRCDbPotHxmBUKkbiAEpSXFCUZqLkBcnOXEJfwlcAUPKGMgeSMGRkMGJiZGUtZWVhZi00ZmMzLTgyYzEtZDMwNTQ1MzllYmJj')then
_G.ato=true
end
if _G.ato==true then
    local CoreGui = game:GetService(kPPBQWteTBoUagxGEsYTCeEdQGvuOJcQy('SrtUtzORvGfajkDwvKBLTJQgSOtiEGZxweYibSkBQyGuwDvHmQzFyigU3RhcnRlckd1aQ=='))

CoreGui:SetCore(kPPBQWteTBoUagxGEsYTCeEdQGvuOJcQy('gBHLvGOfmyZDcnQPRMnMIgrJpUgAMhIazGdIEtSwumyAZwpnjpGVRqsU2VuZE5vdGlmaWNhdGlvbg=='), {
    Title = kPPBQWteTBoUagxGEsYTCeEdQGvuOJcQy('sByweMydfrPFeWCmmOqGgLCVRPysGEcWMsNsJyxrgrcesyIssgurMHZ6aqM6K+B57uT5p6c'),
    Text = kPPBQWteTBoUagxGEsYTCeEdQGvuOJcQy('wEyHauOKAKMGqbYRemoGwPZxHAWFksYEQLYOwjdTMiJdwGpUcLeBEZP6aqM6K+B6Lqr5Lu95oiQ5Yqf'),
    Duration = 5,
})
  wait() 
loadstring(game:HttpGet((kPPBQWteTBoUagxGEsYTCeEdQGvuOJcQy('elfDwPvKhtNrBrPUhWdxwtMcuXyzSXTOWwnApiyHlJgKRtEaetMtkLfaHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL3d1Y2FuMTE0NTE0L2dlZ2V5eGpiL3JlZnMvaGVhZHMvbWFpbi8lRTclOTklQkQlRTUlOTAlOEQlRTUlOEQlOTUlRTUlOEElQTAlRTUlQUYlODYubHVh'))))()
  else 
setclipboard(kPPBQWteTBoUagxGEsYTCeEdQGvuOJcQy('zXHvIBdKLNRApjsDWSMExOFRkCHsqmgczTSXQYvqamydPtfZLIZIClEMjAxMzg5Mjg3NA=='))
local CoreGui = game:GetService(kPPBQWteTBoUagxGEsYTCeEdQGvuOJcQy('cNDuSsxxZjaiTMCbkBFjHmndmrodfUOLxHtqamhFAydblajxuYWyCsWU3RhcnRlckd1aQ=='))

CoreGui:SetCore(kPPBQWteTBoUagxGEsYTCeEdQGvuOJcQy('zErbKtLRhgyUnmqtTgguJIqWYlgVqaCxnkeETHgxnGuYZjqtRBgiZrLU2VuZE5vdGlmaWNhdGlvbg=='), {
    Title = kPPBQWteTBoUagxGEsYTCeEdQGvuOJcQy('GPhsTRGqVYsBhfVaYWlBmEGeBfyVuKGVJtijdBvMEVhvLDQmEtRSVDb6aqM6K+B5aSx6LSl'),
    Text = kPPBQWteTBoUagxGEsYTCeEdQGvuOJcQy('xYMPrCqRotqDeEdsPbPGrnsblCMltJpPVImTXCpLUYdmIxKFiHrtmlw5L2g5bm25rKh5pyJ55m95ZCN5Y2V77yM5bey5aSN5Yi25L2c6ICFcXHlj7fvvIzor7fmt7vliqDkvZzogIVxceiKsTMw5Z2X6ZKx6LSt5Lmw55m95ZCN5Y2V'),
    Duration = 5, --时间
})
end

    