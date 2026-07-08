当地的StarterGui=游戏：GetService(本地StarterGui=游戏：GetService("StarterGui"))
StarterGui:SetCore("发送通知", {
title="窗脚本",
    Text = "欢迎使用窗脚本",
    Duration = 5,
    Button1 = "确定"
})

当地的WindUI=loadstring(游戏：HttpGet(
        "https://raw.githubusercontent.com/Footagesus/WindUI/main/dist/main.lua"
))()

当地的玩家=游戏：GetService("Players")
当地的UserInputService=game:GetService("UserInputService")
当地的RunService=game:GetService("RunService")
当地的TeleportService=游戏：GetService("TeleportService")
当地的VirtualInputManager=游戏：GetService("VirtualInputManager")
当地的HTTPService=game:GetService(""Http服务")

当地的player=players.LocalPlayer
当地的character=player.字符或播放器。添加的字符：等待()
当地的rootPart=字符：WaitForChild("HumanoidRootPart")
当地的humanoid=字符：WaitForChild("Humanoid")
当地的camera=workspace.CurrentCamera

player.CharacterAdded：连接(功能(newchar)
    character = newChar
    rootPart = character:WaitForChild("HumanoidRootPart")
    humanoid = character:WaitForChild("Humanoid")
    end)

-- 状态
当地的n夹=假的
当地的无限跳转=假的
当地的上帝=假的
当地的antiAFK=假的
本地冻结=false
局部不可见=false
本地esp=假的
local espObj = {}
本地瞄准器=假的
本地aimRange=500
局部旋转=false
本地spinSpeed=10
局部spinConnection=零
本地夜视=假的
本地playerjoinnotify=假的
局部重力值=工作空间。重力

-- 追踪
本地tracktarget=零
本地trackConnection=零

-- 飞行
本地flygui=零
局部重力值=工作空间。重力
本地tpwalking=假的

函数getPlayerList()
局部t={}
for_，p在ipairs中(players:GetPlayers())如果p~=player，那么table.insert(t，p.Name)结束
返回#t>0和t或{"无其他玩家"}
结束

功能openflygui()
如果flyGuui则flyGuui：销毁()结束
本地函数restoreCharacter()
Nowe=false；tpwalking=false
本地sp=game.Players.LocalPlayer
如果sp.Character，则
for_，v在ipairs中(sp.Character:GetDescendants())do
如果v:Isa("BodyGyro")或v:Isa("BodyVelocity")或v:Isa("BodyPosition")，则v:Destroy()结束
结束
局部hum=SP.字符：FindFirstChildOfClass("Humanoid")
            if hum then
                hum.PlatformStand = false
                for _, s in ipairs(Enum.HumanoidStateType:GetEnumItems()) do hum:SetStateEnabled(s, true) end
                hum:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)
            end
            if sp.Character:FindFirstChild("Animate") then sp.Character.Animate.Disabled = false end
        end
    end
    local main = Instance.new("ScreenGui")
    local Frame = Instance.new("Frame")
    local up = Instance.new("TextButton")
    local down = Instance.new("TextButton")
    local onof = Instance.new("TextButton")
    local TextLabel = Instance.new("TextLabel")
    local plus = Instance.new("TextButton")
    local speed = Instance.new("TextLabel")
    local mine = Instance.new("TextButton")
    local closebutton = Instance.new("TextButton")
    local mini = Instance.new("TextButton")
    local mini2 = Instance.new("TextButton")
    main.Name = "main"; main.Parent = player:WaitForChild("PlayerGui"); main.ZIndexBehavior = Enum.ZIndexBehavior.Sibling; main.ResetOnSpawn = false
    Frame.Parent = main; Frame.BackgroundColor3 = Color3.fromRGB(255,255,255); Frame.BorderColor3 = Color3.fromRGB(103,221,213)
    Frame.Position = UDim2.new(0.1,0,0.38,0); Frame.Size = UDim2.new(0,190,0,57)
    up.Name = "up"; up.Parent = Frame; up.BackgroundColor3 = Color3.fromRGB(255,255,255); up.Size = UDim2.new(0,44,0,28); up.Font = Enum.Font.SourceSans; up.Text = "上升"; up.TextColor3 = Color3.fromRGB(0,0,0); up.TextSize = 14
    down.Name = "down"; down.Parent = Frame; down.BackgroundColor3 = Color3.fromRGB(255,255,255); down.Position = UDim2.new(0,0,0.49,0); down.Size = UDim2.new(0,44,0,28); down.Font = Enum.Font.SourceSans; down.Text = "下降"; down.TextColor3 = Color3.fromRGB(0,0,0); down.TextSize = 14
    onof.Name = "onof"; onof.Parent = Frame; onof.BackgroundColor3 = Color3.fromRGB(255,255,255); onof.Position = UDim2.new(0.7,0,0.49,0); onof.Size = UDim2.new(0,56,0,28); onof.Font = Enum.Font.SourceSans; onof.Text = "窗飞行"; onof.TextColor3 = Color3.fromRGB(0,0,0); onof.TextSize = 14
    TextLabel.Parent = Frame; TextLabel.BackgroundColor3 = Color3.fromRGB(255,255,255); TextLabel.Position = UDim2.new(0.47,0,0,0); TextLabel.Size = UDim2.new(0,100,0,28); TextLabel.Font = Enum.Font.SourceSans; TextLabel.Text = "窗飞行"; TextLabel.TextColor3 = Color3.fromRGB(0,0,0); TextLabel.TextScaled = true; TextLabel.TextSize = 14; TextLabel.TextWrapped = true
    plus.Name = "plus"; plus.Parent = Frame; plus.BackgroundColor3 = Color3.fromRGB(255,255,255); plus.Position = UDim2.new(0.23,0,0,0); plus.Size = UDim2.new(0,45,0,28); plus.Font = Enum.Font.SourceSans; plus.Text = "+"; plus.TextColor3 = Color3.fromRGB(0,0,0); plus.TextScaled = true; plus.TextSize = 14; plus.TextWrapped = true
    speed.Name = "speed"; speed.Parent = Frame; speed.BackgroundColor3 = Color3.fromRGB(255,255,255); speed.Position = UDim2.new(0.47,0,0.49,0); speed.Size = UDim2.new(0,44,0,28); speed.Font = Enum.Font.SourceSans; speed.Text = "1"; speed.TextColor3 = Color3.fromRGB(0,0,0); speed.TextScaled = true; speed.TextSize = 14; speed.TextWrapped = true
    mine.Name = "mine"; mine.Parent = Frame; mine.BackgroundColor3 = Color3.fromRGB(255,255,255); mine.Position = UDim2.new(0.23,0,0.49,0); mine.Size = UDim2.new(0,45,0,29); mine.Font = Enum.Font.SourceSans; mine.Text = "-"; mine.TextColor3 = Color3.fromRGB(0,0,0); mine.TextScaled = true; mine.TextSize = 14; mine.TextWrapped = true
    closebutton.Name = "Close"; closebutton.Parent = Frame; closebutton.BackgroundColor3 = Color3.fromRGB(255,255,255); closebutton.Font = "SourceSans"; closebutton.Size = UDim2.new(0,45,0,28); closebutton.Text = "x"; closebutton.TextSize = 30; closebutton.Position = UDim2.new(0,0,-1,27)
    mini.Name = "minimize"; mini.Parent = Frame; mini.BackgroundColor3 = Color3.fromRGB(255,255,255); mini.Font = "SourceSans"; mini.Size = UDim2.new(0,45,0,28); mini.Text = "-"; mini.TextSize = 40; mini.Position = UDim2.new(0,44,-1,27)
    mini2.Name = "minimize2"; mini2.Parent = Frame; mini2.BackgroundColor3 = Color3.fromRGB(255,255,255); mini2.Font = "SourceSans"; mini2.Size = UDim2.new(0,45,0,28); mini2.Text = "+"; mini2.TextSize = 40; mini2.Position = UDim2.new(0,44,-1,57); mini2.Visible = false
    local speeds = 1; Frame.Active = true; Frame.Draggable = true
    onof.MouseButton1Down:connect(function()
        if nowe then restoreCharacter(); return end
        if not player.Character then return end
        nowe = true; tpwalking = true
        for i = 1, speeds do spawn(function() local hb = RunService.Heartbeat; while tpwalking and hb:Wait() and player.Character do local chr = player.Character; local hum = chr and chr:FindFirstChildWhichIsA("Humanoid"); if hum and hum.MoveDirection.Magnitude > 0 then chr:TranslateBy(hum.MoveDirection) end end end) end
        if player.Character then
            if player.Character:FindFirstChild("Animate") then player.Character.Animate.Disabled = true end
            local hum = player.Character:FindFirstChildOfClass("Humanoid")
            if hum then for _, s in ipairs(Enum.HumanoidStateType:GetEnumItems()) do hum:SetStateEnabled(s, false) end; hum:ChangeState(Enum.HumanoidStateType.Swimming) end
        end
        if player.Character then
            local hum = player.Character:FindFirstChildOfClass("Humanoid")
            local torso = hum and hum.RigType == Enum.HumanoidRigType.R6 and player.Character:FindFirstChild("Torso") or (hum and player.Character:FindFirstChild("UpperTorso"))
            if hum and torso then
                local ctrl = {f=0,b=0,l=0,r=0}; local lastctrl = {f=0,b=0,l=0,r=0}; local maxspeed = 50; local spd = 0
                local bg = Instance.new("BodyGyro", torso); bg.P = 9e4; bg.maxTorque = Vector3.new(9e9,9e9,9e9); bg.cframe = torso.CFrame
                local bv = Instance.new("BodyVelocity", torso); bv.velocity = Vector3.new(0,0.1,0); bv.maxForce = Vector3.new(9e9,9e9,9e9)
                if nowe then hum.PlatformStand = true end
                while nowe and player.Character and hum and hum.Health > 0 do wait()
                    if ctrl.l+ctrl.r~=0 or ctrl.f+ctrl.b~=0 then spd=spd+0.5+(spd/maxspeed); if spd>maxspeed then spd=maxspeed end
                    elseif spd~=0 then spd=spd-1; if spd<0 then spd=0 end end
                    if (ctrl.l+ctrl.r)~=0 or (ctrl.f+ctrl.b)~=0 then bv.velocity = ((camera.CFrame.LookVector*(ctrl.f+ctrl.b))+((camera.CFrame*CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*0.2,0).p)-camera.CFrame.p))*spd; lastctrl={f=ctrl.f,b=ctrl.b,l=ctrl.l,r=ctrl.r}
                    elseif spd~=0 then bv.velocity = ((camera.CFrame.LookVector*(lastctrl.f+lastctrl.b))+((camera.CFrame*CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*0.2,0).p)-camera.CFrame.p))*spd
                    else bv.velocity=Vector3.new(0,0,0) end
                    bg.cframe = camera.CFrame*CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*spd/maxspeed),0,0)
                end
                bg:Destroy(); bv:Destroy()
            end
        end
    end)
    local tis; up.MouseButton1Down:connect(function() tis = RunService.Heartbeat:Connect(function() local hrp = player.Character and player.Character:FindFirstChild("HumanoidRootPart"); if hrp then hrp.CFrame = hrp.CFrame * CFrame.new(0,1,0) end end) end)
    up.MouseLeave:connect(function() if tis then tis:Disconnect(); tis=nil end end); up.MouseButton1Up:connect(function() if tis then tis:Disconnect(); tis=nil end end)
    local dis; down.MouseButton1Down:connect(function() dis = RunService.Heartbeat:Connect(function() local hrp = player.Character and player.Character:FindFirstChild("HumanoidRootPart"); if hrp then hrp.CFrame = hrp.CFrame * CFrame.new(0,-1,0) end end) end)
    down.MouseLeave:connect(function() if dis then dis:Disconnect(); dis=nil end end); down.MouseButton1Up:connect(function() if dis then dis:Disconnect(); dis=nil end end)
    plus.MouseButton1Down:connect(function() speeds=speeds+1; speed.Text=speeds; if nowe then tpwalking=false; for i=1,speeds do spawn(function() local hb=RunService.Heartbeat; tpwalking=true; while tpwalking and hb:Wait() and player.Character do local chr=player.Character; local hum=chr and chr:FindFirstChildWhichIsA("Humanoid"); if hum and hum.MoveDirection.Magnitude>0 then chr:TranslateBy(hum.MoveDirection) end end end) end end end)
    mine.MouseButton1Down:connect(function() if speeds==1 then speed.Text='不能小于1'; wait(1); speed.Text=speeds else speeds=speeds-1; speed.Text=speeds; if nowe then tpwalking=false; for i=1,speeds do spawn(function() local hb=RunService.Heartbeat; tpwalking=true; while tpwalking and hb:Wait() and player.Character do local chr=player.Character; local hum=chr and chr:FindFirstChildWhichIsA("Humanoid"); if hum and hum.MoveDirection.Magnitude>0 then chr:TranslateBy(hum.MoveDirection) end end end) end end end end)
    closebutton.MouseButton1Click:Connect(function() restoreCharacter(); main:Destroy() end)
    mini.MouseButton1Click:Connect(function() up.Visible=false;down.Visible=false;onof.Visible=false;plus.Visible=false;speed.Visible=false;mine.Visible=false;mini.Visible=false;mini2.Visible=true; Frame.BackgroundTransparency=1; closebutton.Position=UDim2.new(0,0,-1,57) end)
    mini2.MouseButton1Click:Connect(function() up.Visible=true;down.Visible=true;onof.Visible=true;plus.Visible=true;speed.Visible=true;mine.Visible=true;mini.Visible=true;mini2.Visible=false; Frame.BackgroundTransparency=0; closebutton.Position=UDim2.new(0,0,-1,27) end)
    flyGui = main
end

-- 功能函数
function enNoclip() noclip=true;spawn(function() while noclip do RunService.Stepped:Wait();if character then for _,v in ipairs(character:GetDescendants())do if v:IsA("BasePart")then v.CanCollide=false end end end end end)end
function disNoclip() noclip=false end
function enGod() god=true;spawn(function() while god do wait();if humanoid and humanoid.Health>0 then humanoid.Health=humanoid.MaxHealth end end end)end
function disGod() god=false end
function enIJ() infiniteJump=true;UserInputService.JumpRequest:Connect(function() if infiniteJump and humanoid then humanoid:ChangeState(Enum.HumanoidStateType.Jumping)end end)end
function disIJ() infiniteJump=false end
function enFrozen() frozen=true;if rootPart then rootPart.Anchored=true end end
function disFrozen() frozen=false;if rootPart then rootPart.Anchored=false end end
function setWS(s) if humanoid then humanoid.WalkSpeed=s end end
function enESP() esp=true;for _,p in ipairs(Players:GetPlayers())do if p~=player and p.Character then local h=Instance.new("Highlight");h.FillColor=Color3.fromRGB(255,0,0);h.FillTransparency=0.5;h.Parent=p.Character;espObj[p]=h end end end
function disESP() esp=false;for _,v in pairs(espObj)do if v then v:Destroy()end end;espObj={}end
function enAFK() antiAFK=true;spawn(function() while antiAFK do VirtualInputManager:SendMouseMoveEvent(1,0,true,game,false);wait(0.1);VirtualInputManager:SendMouseMoveEvent(-1,0,true,game,false)end end)end
function disAFK() antiAFK=false end
function enInvisible() invisible=true;if character then for _,v in ipairs(character:GetDescendants())do if v:IsA("BasePart")then v.Transparency=1 end end end end
function disInvisible() invisible=false;if character then for _,v in ipairs(character:GetDescendants())do if v:IsA("BasePart")then v.Transparency=0 end end end end
function suicide() if character and humanoid then humanoid.Health=0 end end
function killAll() for _,p in ipairs(Players:GetPlayers())do if p~=player and p.Character then local h=p.Character:FindFirstChild("Humanoid");if h and h.Health>0 then h:TakeDamage(h.MaxHealth)end end end end
function rejoin() TeleportService:Teleport(game.PlaceId,player)end
function leave() game:Shutdown()end
function closeScript() if flyGui then nowe=false;tpwalking=false;flyGui:Destroy()end;disNoclip();disIJ();disGod();disFrozen();disESP();disAFK();disSpin();disNV();disPJN();stopTrack();if Window then Window:Destroy()end end
function enAimbot() aimbot=true;spawn(function() while aimbot do wait();local cl,cd=nil,aimRange;for _,p in ipairs(Players:GetPlayers())do if p~=player and p.Character then local hd=p.Character:FindFirstChild("Head");local hu=p.Character:FindFirstChild("Humanoid");if hd and hu and hu.Health>0 then local sp,on=camera:WorldToViewportPoint(hd.Position);if on then local mp=UserInputService:GetMouseLocation();local d=(Vector2.new(sp.X,sp.Y)-mp).Magnitude;if d<cd then cd=d;cl=hd end end end end end;if cl then camera.CFrame=CFrame.new(camera.CFrame.Position,cl.Position)end end end)end
function disAimbot() aimbot=false end
function enSpin() spinning=true;spinConnection=RunService.Heartbeat:Connect(function() if rootPart then rootPart.CFrame=rootPart.CFrame*CFrame.Angles(0,math.rad(spinSpeed),0) end end)end
function disSpin() spinning=false;if spinConnection then spinConnection:Disconnect();spinConnection=nil end end
function setSpinSpeed(v) spinSpeed=v;if spinning then disSpin();enSpin() end end
function enNV() nightVision=true;game:GetService("Lighting").Brightness=2;game:GetService("Lighting").ClockTime=14 end
function disNV() nightVision=false;game:GetService("Lighting").Brightness=1 end
function enPJN() playerJoinNotify=true;Players.PlayerAdded:Connect(function(p) if playerJoinNotify then StarterGui:SetCore("SendNotification",{Title="窗脚本",Text=p.Name.." 加入了服务器",Duration=3,Button1="确定"})end end)end
function disPJN() playerJoinNotify=false end
function setGravity(v) workspace.Gravity=v;gravityValue=v end

-- 追踪
function startTrack(name)
    stopTrack()
    for _,p in ipairs(Players:GetPlayers()) do if p.Name==name and p~=player and p.Character then trackTarget=p;break end end
    if not trackTarget then return end
    trackConnection=RunService.Heartbeat:Connect(function()
        if not trackTarget or not trackTarget.Character then stopTrack();return end
        local tr=trackTarget.Character:FindFirstChild("HumanoidRootPart")
        local mr=player.Character and player.Character:FindFirstChild("HumanoidRootPart")
        if tr and mr then mr.CFrame=tr.CFrame*CFrame.new(0,0,5) end
    end)
end
function stopTrack() trackTarget=nil;if trackConnection then trackConnection:Disconnect();trackConnection=nil end end

-- 甩飞
function flingOne(name)
    for _,p in ipairs(Players:GetPlayers()) do
        if p.Name==name and p~=player and p.Character then
            local tr=p.Character:FindFirstChild("HumanoidRootPart")
            if tr then
                local old=tr.CFrame
                for i=1,5 do tr.CFrame=tr.CFrame+Vector3.new(0,5000,0);wait()end
                tr.CFrame=old+Vector3.new(math.random(-200,200),math.random(500,2000),math.random(-200,200))
            end
            break
        end
    end
end

local musicData={}
local musicFile="chuang_music.json"
pcall(function() musicData=HttpService:JSONDecode(readfile(musicFile)) end)

-- UI
local Window=WindUI:CreateWindow({Title="窗脚本",Icon="zap",Theme="Indigo",KeySystem={Key={"何意味"},SaveKey=true}})

local NoticeTab=Window:Tab({Title="公告",Icon="megaphone"})
NoticeTab:Button({Title="脚本功能少",Callback=function()end})
NoticeTab:Button({Title="脚本是让AI写的",Callback=function()end})
NoticeTab:Button({Title="脚本完全免费",Callback=function()end})
NoticeTab:Button({Title="注入器: "..(identifyexecutor and identifyexecutor() or "未知"),Callback=function()end})
NoticeTab:Button({Title="用户名: "..player.Name,Callback=function()end})

local GeneralTab=Window:Tab({Title="通用",Icon="user"})
GeneralTab:Button({Title="窗飞行",Callback=function()openFlyGUI()end})
GeneralTab:Toggle({Title="穿墙",Value=false,Callback=function(s)if s then enNoclip()else disNoclip()end end})
GeneralTab:Slider({Title="走路速度",Value={Min=16,Max=500,Default=16},Step=5,Callback=function(v)setWS(v)end})
GeneralTab:Toggle({Title="无限跳",Value=false,Callback=function(s)if s then enIJ()else disIJ()end end})
GeneralTab:Toggle({Title="无法移动",Value=false,Callback=function(s)if s then enFrozen()else disFrozen()end end})
GeneralTab:Toggle({Title="无敌",Value=false,Callback=function(s)if s then enGod()else disGod()end end})
GeneralTab:Toggle({Title="隐身",Value=false,Callback=function(s)if s then enInvisible()else disInvisible()end end})
GeneralTab:Toggle({Title="ESP透视",Value=false,Callback=function(s)if s then enESP()else disESP()end end})
GeneralTab:Button({Title="击杀所有人",Callback=function()killAll()end})
GeneralTab:Button({Title="自杀",Callback=function()suicide()end})
GeneralTab:Button({Title="静默甩飞所有人",Callback=function()loadstring(game:HttpGet("https://pastebin.com/raw/zqyDSUWX"))()end})
GeneralTab:Button({Title="铁拳甩飞",Callback=function()loadstring(game:HttpGet('https://raw.githubusercontent.com/0Ben1/fe/main/obf_rf6iQURzu1fqrytcnLBAvW34C9N55kS9g9G3CKz086rC47M6632sEd4ZZYB0AYgV.lua.txt'))()end})
GeneralTab:Button({Title="FPS（变流畅）",Callback=function()loadstring(game:HttpGet("https://raw.githubusercontent.com/gclich/FPS-X-GUI/main/FPS_X.lua"))()end})
GeneralTab:Button({Title="获取管理员",Callback=function()loadstring(game:HttpGet("https://pastebin.com/raw/sZpgTVas"))()end})
GeneralTab:Button({Title="死亡笔记",Callback=function()loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/tt/main/%E6%AD%BB%E4%BA%A1%E7%AC%94%E8%AE%B0%20(1).txt"))()end})
GeneralTab:Button({Title="飞车",Callback=function()loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/vb/main/%E9%A3%9E%E8%BD%A6.lua"))()end})
GeneralTab:Button({Title="r15无敌少侠飞行脚本",Callback=function()loadstring(game:HttpGet("https://raw.githubusercontent.com/396abc/Script/refs/heads/main/MobileFly.lua"))()end})
GeneralTab:Button({Title="r6无敌少侠飞行脚本",Callback=function()loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Invincible-Mark-42041"))()end})
GeneralTab:Button({Title="r6鹿管脚本",Callback=function()loadstring(game:HttpGet("https://pastefy.app/wa3v2Vgm/raw"))()end})
GeneralTab:Button({Title="r15鹿管脚本",Callback=function()loadstring(game:HttpGet("https://pastefy.app/YZoglOyJ/raw"))()end})
GeneralTab:Toggle({Title="旋转",Value=false,Callback=function(s)if s then enSpin()else disSpin()end end})
GeneralTab:Slider({Title="旋转速度",Value={Min=1,Max=50,Default=10},Step=1,Callback=function(v)setSpinSpeed(v)end})
GeneralTab:Toggle({Title="夜视",Value=false,Callback=function(s)if s then enNV()else disNV()end end})
GeneralTab:Toggle({Title="玩家进入通知",Value=false,Callback=function(s)if s then enPJN()else disPJN()end end})
GeneralTab:Slider({Title="重力设置",Value={Min=0,Max=500,Default=gravityValue},Step=10,Callback=function(v)setGravity(v)end})
GeneralTab:Slider({Title="自瞄范围",Value={Min=100,Max=1000,Default=500},Step=50,Callback=function(v)aimRange=v end})
GeneralTab:Toggle({Title="自瞄",Value=false,Callback=function(s)if s then enAimbot()else disAimbot()end end})
GeneralTab:Toggle({Title="反挂机",Value=false,Callback=function(s)if s then enAFK()else disAFK()end end})
GeneralTab:Button({Title="重新加入",Callback=function()rejoin()end})
GeneralTab:Button({Title="离开游戏",Callback=function()leave()end})
GeneralTab:Button({Title="关闭脚本",Callback=function()closeScript()end})

local FlingTab=Window:Tab({Title="甩飞",Icon="zap"})
local flingDropdown=FlingTab:Dropdown({Title="选择玩家",Values=getPlayerList(),Value="",Callback=function(v)end})
FlingTab:Button({Title="甩飞一次",Callback=function()local v=flingDropdown.Value;if v and v~=""and v~="无其他玩家"then flingOne(v)end end})
FlingTab:Button({Title="刷新列表",Callback=function()flingDropdown:Refresh(getPlayerList())end})

local TrackingTab=Window:Tab({Title="追踪类",Icon="crosshair"})
local trackDropdown=TrackingTab:Dropdown({Title="追踪玩家",Values=getPlayerList(),Value="",Callback=function(v)if v~=""then startTrack(v)end end})
TrackingTab:Button({Title="停止追踪",Callback=function()stopTrack()end})
TrackingTab:Button({Title="刷新列表",Callback=function()trackDropdown:Refresh(getPlayerList())end})
local circling=false
TrackingTab:Toggle({Title="转圈",Value=false,Callback=function(s)circling=s;if s then spawn(function()local a=0;while circling and player.Character and player.Character:FindFirstChild("HumanoidRootPart")do a=a+0.1;player.Character.HumanoidRootPart.CFrame=player.Character.HumanoidRootPart.CFrame*CFrame.Angles(0,0.1,0)+Vector3.new(math.cos(a)*0.5,0,math.sin(a)*0.5);wait()end end)end end})

local InjectorTab=Window:Tab({Title="注入器",Icon="download"})
InjectorTab:Button({Title="阿尔宙斯注入器3.0",Callback=function()loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/chillz-workshop/main/Arceus%20X%20V3"))()end})

local OtherTab=Window:Tab({Title="其他脚本",Icon="code"})
OtherTab:Button({Title="皮脚本",Callback=function()loadstring(game:HttpGet("https://raw.githubusercontent.com/xiaopi77/xiaopi77/main/QQ1002100032-Roblox-Pi-script.lua"))()end})
OtherTab:Button({Title="tsb脚本",Callback=function()local k="YPVdAosoAvaXrtZAdEYxCQRBEwbphCXq";pcall(function()setclipboard(k)end);loadstring(game:HttpGet("https://raw.githubusercontent.com/DiosDi/VexonHub/refs/heads/main/VexonHub"))()end})
OtherTab:Button({Title="叶脚本",Callback=function()loadstring(game:HttpGet("https://raw.githubusercontent.com/roblox-ye/QQ515966991/refs/heads/main/ROBLOX-CNVIP-XIAOYE.lua"))()end})
OtherTab:Button({Title="动作脚本",Callback=function()loadstring(game:HttpGet("https://raw.githubusercontent.com/7yd7/Hub/refs/heads/Branch/GUIS/Emotes.lua"))()end})
OtherTab:Button({Title="ROB",Callback=function()loadstring(game:HttpGet("https://raw.githubusercontent.com/Zyb150933/ROB/refs/heads/main/ROB.V2"))()end})
OtherTab:Button({Title="XK",Callback=function()loadstring(game:HttpGet(('https://github.com/devslopo/DVES/raw/main/XK%20Hub')))()end})

-- 修复后的祖国人按钮
OtherTab:Button({Title = "祖国人", Callback = function()
    local success, err = pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/kongbaNB/-/refs/heads/main/%E7%A5%96%E5%9B%BD%E4%BA%BA%E6%B1%89%E5%8C%96"))()
    end)
    if not success then
        StarterGui:SetCore("SendNotification", {
            Title = "窗脚本",
            Text = "祖国人脚本加载失败: "..tostring(err),
            Duration = 5,
            Button1 = "确定"
        })
    end
end})

-- 修复后的天下布武按钮
OtherTab:Button({Title = "天下布武", Callback = function()
    local success, err = pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/cytj777i/Deliver-through-the-wall-perspective/main/%E5%A4%A9%E4%B8%8B%E5%B8%83%E6%AD%A6"))()
    end)
    if not success then
        StarterGui:SetCore("SendNotification", {
            Title = "窗脚本",
            Text = "天下布武脚本加载失败: "..tostring(err),
            Duration = 5,
            Button1 = "确定"
        })
    end
end})

local ServerTab=Window:Tab({Title="脚本服务器",Icon="server"})
ServerTab:Button({Title="内脏与黑火药",Callback=function()loadstring(game:HttpGet("https://raw.githubusercontent.com/wzhxll/2/refs/heads/main/%E9%98%89%E5%89%B2%E7%89%88.lua"))()end})
ServerTab:Button({Title="TSB脚本",Callback=function()loadstring(game:HttpGet("https://raw.githubusercontent.com/ke9460394-dot/ugik/refs/heads/main/phantasm.lua"))()end})
ServerTab:Button({Title="监狱人生脚本",Callback=function()loadstring(game:HttpGet("https://raw.githubusercontent.com/f34p9fh3a4/.xyz/refs/heads/main/loader.lua"))()end})
ServerTab:Button({Title="破坏者谜团2脚本",Callback=function()loadstring(game:HttpGet(("https://raw.githubusercontent.com/Ethanoj1/EclipseMM2/master/Script"),true))()end})
ServerTab:Button({Title="99夜脚本",Callback=function()loadstring(game:HttpGet("https://raw.githubusercontent.com/atnew2025/Chinese-scripts/refs/heads/main/voidware-cn.txt"))()end})
ServerTab:Button({Title="doors",Callback=function()loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\54\53\84\119\84\56\106\97"))()end})
ServerTab:Button({Title="自然灾害",Callback=function()loadstring(game:HttpGet("https://pastebin.com/raw/5fKvum70"))()end})
ServerTab:Button({Title="LC",Callback=function()loadstring(game:HttpGet("https://rawscripts.net/raw/Lexington-and-Concord-LC-75016"))()end})
ServerTab:Button({Title="墨水游戏",Callback=function()loadstring(game:HttpGet("https://pastebin.com/raw/sR98CDWm"))()end})
ServerTab:Button({Title="俄亥俄州",Callback=function()loadstring(game:HttpGet("https://raw.githubusercontent.com/XingFork/Scripts/refs/heads/main/Ohio"))()end})
ServerTab:Button({Title="被遗弃",Callback=function()loadstring(game:HttpGet("https://raw.githubusercontent.com/FengYu-X/Max/refs/heads/X/fsk.lua"))()end})

local FETab=Window:Tab({Title="FE脚本",Icon="flame"})
FETab:Button({Title="coolgui",Callback=function()loadstring(game:GetObjects("rbxassetid://8127297852")[1].Source)()end})
FETab:Button({Title="1x1x1x1",Callback=function()loadstring(game:HttpGet(('https://pastebin.com/raw/JipYNCht'),true))()end})
FETab:Button({Title="变玩家（R6）",Callback=function()loadstring(game:HttpGet("https://pastebin.com/raw/XR4sGcgJ"))()end})
FETab:Button({Title="动画中心",Callback=function()loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingScripter/Animation-Hub/main/Animation%20Gui",true))()end})

local MusicTab=Window:Tab({Title="音乐",Icon="music"})
local musicInput=MusicTab:Input({Title="音乐代码",Value="",Placeholder="输入音乐ID",Callback=function(t)end})
MusicTab:Button({Title="播放",Callback=function()local code=musicInput.Value;if code and code~=""then local sound=Instance.new("Sound",workspace);sound.SoundId="rbxassetid://"..code;sound.Volume=1;sound:Play();table.insert(musicData,code);pcall(function()writefile(musicFile,HttpService:JSONEncode(musicData))end)end end})
MusicTab:Button({Title="停止",Callback=function()for _,v in ipairs(workspace:GetChildren())do if v:IsA("Sound")then v:Stop();v:Destroy()end end end})
