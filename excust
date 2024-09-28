--ID系统是hoho做的——给破解我源码的人看

local list = {
--极速
	[1119466531] = "loadstring(game:HttpGet(('https://raw.githubusercontent.com/wucan114514/an/refs/heads/main/%E6%9E%81%E9%80%9F%E4%BC%A0%E5%A5%87.lua')))()",
--力量
	[1268927906] = "loadstring(game:HttpGet(('https://raw.githubusercontent.com/wucan114514/an/refs/heads/main/%E5%AE%89%E5%8A%A0%E5%AF%86.lua')))()",	
	--大力士
	[2564505263] = "loadstring(game:HttpGet(('https://raw.githubusercontent.com/wucan114514/an/refs/heads/main/%E8%B6%85%E7%BA%A7%E5%A4%A7%E5%8A%9B%E5%A3%AB%E6%A8%A1%E6%8B%9F%E5%99%A8%E8%84%9A%E6%9C%AC.lua')))()",	
	--忍者
	[1335695570] = "loadstring(game:HttpGet(('https://raw.githubusercontent.com/wucan114514/an/refs/heads/main/%E5%BF%8D%E8%80%85%E4%BC%A0%E5%A5%87%E8%84%9A%E6%9C%AC.lua')))()",
	--举重
	[1275875292] = "loadstring(game:HttpGet(('https://raw.githubusercontent.com/wucan114514/an/refs/heads/main/%E4%B8%BE%E9%87%8D%E6%A8%A1%E6%8B%9F%E5%99%A8%E8%84%9A%E6%9C%AC.lua')))()",			
--吃掉世界
	[5677613211] = "loadstring(game:HttpGet(('https://raw.githubusercontent.com/wucan114514/an/refs/heads/main/%E5%90%83%E6%8E%89%E4%B8%96%E7%95%8C%E8%84%9A%E6%9C%AC.lua')))()",	
	--健身联盟
	[5972059550] = "loadstring(game:HttpGet(('https://raw.githubusercontent.com/wucan114514/gegeyxjb/main/Gymlm')))()",	
	--动物进化
	[3358419523] = "loadstring(game:HttpGet(('https://raw.githubusercontent.com/wucan114514/gegeyxjb/main/animalssimulator')))()",	
	--强壮
    [147235689] = "loadstring(game:HttpGet(('https://raw.githubusercontent.com/wucan114514/gegeyxjb/main/qz')))()",
--超级食肉者
    [3136631809] = "loadstring(game:HttpGet(('https://raw.githubusercontent.com/wucan114514/gegeyxjb/main/srz')))()",
    --拔剑
    [4795326392] = "loadstring(game:HttpGet(('https://raw.githubusercontent.com/wucan114514/an/refs/heads/main/pullasword')))()",

}

local name = {
	[1119466531] = "极速传奇",
	[1268927906] = "力量传奇",
	[2564505263] = "超级大力士模拟器",
	[1335695570] = "忍者传奇",
	[1275875292] = "举重模拟器",
	[5677613211] = "吃掉世界",
	[5972059550] = "健身联盟",
	[3358419523] = "动物进化模拟器",
	[147235689] = "强壮传奇",
	[3136631809] = "超级食肉者模拟器",	
	[4795326392] = "拔出一把剑",	
}

_G.HoHoLoaded = true
if getgenv().Key and listPre[game.GameId] ~= nil then
	getgenv().messagebox = function()end
	loadstring(listPre[tonumber(game.GameId)])()
elseif not getgenv().Key and list[game.GameId] ~= nil then
    game:GetService("StarterGui"):SetCore("SendNotification",{
                Title = "当前游戏:"..name[game.GameId].."";
                Text ="检测到你当前游玩的游戏为:"..name[game.GameId].."\n已自动为你执行此游戏脚本";
                Duration = 3;
            })
	loadstring(list[tonumber(game.GameId)])()
else
	game:GetService("StarterGui"):SetCore("SendNotification",{
                Title = "错误：没有此游戏脚本";
                Text ="安脚本暂时没有此游戏脚本，qq群号已自动复制到您的粘贴板里";
                Duration = 5;
            })
	setclipboard("984571833")
end