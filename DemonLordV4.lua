local DiscordLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt"))()
local scriptswin = DiscordLib:Window("Void X Remaster")

local TRR = scriptswin:Server("The Rake Remastered", "")
local DeepHack = scriptswin:Server("Explorer", "")
local PlayerState = scriptswin:Server("Player", "")
local Commands = scriptswin:Server("3rd HUBS", "")
local Basic = scriptswin:Server("Regular", "")
local CHAIN = scriptswin:Server("CHAIN", "")
local AntiCheat = scriptswin:Server("Anti Kick", "")
local ESP = scriptswin:Server("ESP", "")

local PhysicalAct = PlayerState:Channel("Physical")
local AdvancedAct = PlayerState:Channel("Non-Physical")
local BasicSec = Basic:Channel("Regular")
local DeepHacks = DeepHack:Channel("Core Contact")
local Commander = Commands:Channel("Commands")
local HookMeta = AntiCheat:Channel("Hookmeta Method")
local ESPs = ESP:Channel("Player ESP")
local Main = TRR:Channel("Main")
local Visual = TRR:Channel("Visual")
local ESPi = TRR:Channel("ESP")
local Tools = TRR:Channel("Tools")
local Master = TRR:Channel("Misc")
local CharacterChain = CHAIN:Channel("Character")
local TeleportChain = CHAIN:Channel("Teleport")
local VisualChain = CHAIN:Channel("Visual")
local MiscChain = CHAIN:Channel("Misc")
local TestChain = CHAIN:Channel("TEST")

PhysicalAct:Button("WalkSpeed +16", function() -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed += 16
end)

PhysicalAct:Button("JumpPower +32", function() -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower += 32
end)

AdvancedAct:Button("Fly", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/chillz-workshop/main/Arceus%20Fly.lua"))()
end)

AdvancedAct:Button("Fly Mobile", function() 
	  loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\40\39\104\116\116\112\115\58\47\47\103\105\115\116\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\109\101\111\122\111\110\101\89\84\47\98\102\48\51\55\100\102\102\57\102\48\97\55\48\48\49\55\51\48\52\100\100\100\54\55\102\100\99\100\51\55\48\47\114\97\119\47\101\49\52\101\55\52\102\52\50\53\98\48\54\48\100\102\53\50\51\51\52\51\99\102\51\48\98\55\56\55\48\55\52\101\98\51\99\53\100\50\47\97\114\99\101\117\115\37\50\53\50\48\120\37\50\53\50\48\102\108\121\37\50\53\50\48\50\37\50\53\50\48\111\98\102\108\117\99\97\116\111\114\39\41\44\116\114\117\101\41\41\40\41\10\10")()
end)

AdvancedAct:Button("Infinite Jump", function()
local InfiniteJumpEnabled = true
game:GetService("UserInputService").JumpRequest:connect(function()
	if InfiniteJumpEnabled then
		game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
	end
end)
end)

AdvancedAct:Button("NoClip", function()
    local Plr = game.Players.LocalPlayer
    while true do wait(0.1) for a, b in pairs(Workspace:GetChildren()) do if b.Name == Plr.Name then for i, v in pairs(b:GetDescendants()) do if v:IsA("BasePart") then v.CanCollide = false end end end end end
end)

AdvancedAct:Button("FE Fling Click", function()
    loadstring(game:HttpGet("https://gist.githubusercontent.com/dark-modz/dcd8a483a1ba00904cc3261a8299cfa1/raw/9a60d9c7c1f4749e6be2c27e2cdb80dec5cd8f2a/clickfling",true))()
end)

AdvancedAct:Button("FE Fling Touch", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/0Ben1/fe./main/Fling%20GUI"))()
end)


BasicSec:Button("FE Fling", function()
local lp = game:FindService("Players").LocalPlayer

local function gplr(String)
	local Found = {}
	local strl = String:lower()
	if strl == "all" then
		for i,v in pairs(game:FindService("Players"):GetPlayers()) do
			table.insert(Found,v)
		end
	elseif strl == "others" then
		for i,v in pairs(game:FindService("Players"):GetPlayers()) do
			if v.Name ~= lp.Name then
				table.insert(Found,v)
			end
		end 
	elseif strl == "me" then
		for i,v in pairs(game:FindService("Players"):GetPlayers()) do
			if v.Name == lp.Name then
				table.insert(Found,v)
			end
		end 
	else
		for i,v in pairs(game:FindService("Players"):GetPlayers()) do
			if v.Name:lower():sub(1, #String) == String:lower() then
				table.insert(Found,v)
			end
		end 
	end
	return Found 
end

local StarterGui = game:GetService("StarterGui")

function StarterGui:notif(str, dur)
  self:SetCore("SendNotification", {
    Title = "yeet gui",
    Text = str,
    Icon = "rbxassetid://2005276185",
    Duration = dur or 3
  })
end


--// sds

local h = Instance.new("ScreenGui")
local Main = Instance.new("ImageLabel")
local Top = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local TextBox = Instance.new("TextBox")
local TextButton = Instance.new("TextButton")

h.Name = "h"
h.Parent = game:GetService("CoreGui")
h.ResetOnSpawn = false

Main.Name = "Main"
Main.Parent = h
Main.Active = true
Main.Draggable = true
Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.174545452, 0, 0.459574461, 0)
Main.Size = UDim2.new(0, 454, 0, 218)
Main.Image = "rbxassetid://2005276185"

Top.Name = "Top"
Top.Parent = Main
Top.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
Top.BorderSizePixel = 0
Top.Size = UDim2.new(0, 454, 0, 44)

Title.Name = "Title"
Title.Parent = Top
Title.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0, 0, 0.295454562, 0)
Title.Size = UDim2.new(0, 454, 0, 30)
Title.Font = Enum.Font.SourceSans
Title.Text = "FE Yeet Gui (trollface edition)"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextScaled = true
Title.TextSize = 14.000
Title.TextWrapped = true

TextBox.Parent = Main
TextBox.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(0.0704845786, 0, 0.270642221, 0)
TextBox.Size = UDim2.new(0, 388, 0, 62)
TextBox.Font = Enum.Font.SourceSans
TextBox.PlaceholderText = "Who do i destroy(can be shortened)"
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextScaled = true
TextBox.TextSize = 14.000
TextBox.TextWrapped = true

TextButton.Parent = Main
TextButton.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.10352423, 0, 0.596330225, 0)
TextButton.Size = UDim2.new(0, 359, 0, 50)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Fling'"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

TextButton.MouseButton1Click:Connect(function()
local lp = game:FindService("Players").LocalPlayer

local function gplr(String)
	local Found = {}
	local strl = String:lower()
	if strl == "all" then
		for i,v in pairs(game:FindService("Players"):GetPlayers()) do
			table.insert(Found,v)
		end
	elseif strl == "others" then
		for i,v in pairs(game:FindService("Players"):GetPlayers()) do
			if v.Name ~= lp.Name then
				table.insert(Found,v)
			end
		end 
	elseif strl == "me" then
		for i,v in pairs(game:FindService("Players"):GetPlayers()) do
			if v.Name == lp.Name then
				table.insert(Found,v)
			end
		end 
	else
		for i,v in pairs(game:FindService("Players"):GetPlayers()) do
			if v.Name:lower():sub(1, #String) == String:lower() then
				table.insert(Found,v)
			end
		end 
	end
	return Found 
end

local function notif(str,dur)
	game:FindService("StarterGui"):SetCore("SendNotification", {
		Title = "yeet gui",
		Text = str,
		Icon = "rbxassetid://2005276185",
		Duration = dur or 3
	})
end

--// sds

local h = Instance.new("ScreenGui")
local Main = Instance.new("ImageLabel")
local Top = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local TextBox = Instance.new("TextBox")
local TextButton = Instance.new("TextButton")

h.Name = "h"
h.Parent = game:GetService("CoreGui")
h.ResetOnSpawn = false

Main.Name = "Main"
Main.Parent = h
Main.Active = true
Main.Draggable = true
Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.174545452, 0, 0.459574461, 0)
Main.Size = UDim2.new(0, 454, 0, 218)
Main.Image = "rbxassetid://2005276185"

Top.Name = "Top"
Top.Parent = Main
Top.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
Top.BorderSizePixel = 0
Top.Size = UDim2.new(0, 454, 0, 44)

Title.Name = "Title"
Title.Parent = Top
Title.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0, 0, 0.295454562, 0)
Title.Size = UDim2.new(0, 454, 0, 30)
Title.Font = Enum.Font.SourceSans
Title.Text = "FE Yeet Gui (trollface edition)"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextScaled = true
Title.TextSize = 14.000
Title.TextWrapped = true

TextBox.Parent = Main
TextBox.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(0.0704845786, 0, 0.270642221, 0)
TextBox.Size = UDim2.new(0, 388, 0, 62)
TextBox.Font = Enum.Font.SourceSans
TextBox.PlaceholderText = "Who do i destroy(can be shortened)"
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextScaled = true
TextBox.TextSize = 14.000
TextBox.TextWrapped = true

TextButton.Parent = Main
TextButton.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.10352423, 0, 0.596330225, 0)
TextButton.Size = UDim2.new(0, 359, 0, 50)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Cheese em'"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

TextButton.MouseButton1Click:Connect(function()
	local Target = gplr(TextBox.Text)
	if Target[1] then
		Target = Target[1]
		
		local Thrust = Instance.new('BodyThrust', lp.Character.HumanoidRootPart)
		Thrust.Force = Vector3.new(9999,9999,9999)
		Thrust.Name = "YeetForce"
		repeat
			lp.Character.HumanoidRootPart.CFrame = Target.Character.HumanoidRootPart.CFrame
			Thrust.Location = Target.Character.HumanoidRootPart.Position
			game:FindService("RunService").Heartbeat:wait()
		until not Target.Character:FindFirstChild("Head")
	else
		notif("Invalid player")
	end
end)
end)
end)

BasicSec:Button("Mobile Keyboard", "Toggle MK", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
end)

BasicSec:Button("AntiAFK", function()
    local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
end)

BasicSec:Button("Server Crash", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/HGBJqVMu",true))()
end)

BasicSec:Button("FullBright", function()
    game.Lighting.FogEnd = 100000000000
    game.Lighting.FogStart = 10000000000
    game.Lighting.ClockTime = 12
    game.Lighting.Brightness = 5
    game.Lighting.GlobalShadows = false
end)

DeepHacks:Button("RemoteSpy", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Hosvile/Refinement/main/Forked/M%3ASimpleSpy%20V3",true))()
end)

DeepHacks:Button("RemoteSpy V1", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/78n/SimpleSpy/main/SimpleSpyBeta.lua"))()
end)

DeepHacks:Button("Dark Dex", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua", true))()
end)

DeepHacks:Button("Dark Dex V4", function()
getgenv().Key = "Bash"
loadstring(game:HttpGet("https://raw.githubusercontent.com/Hosvile/Refinement/main/MC%3AIY%20Dex",true))()
end)


DeepHacks:Button("BackDoor", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/iK4oS/backdoor.exe/master/source.lua", true))()
end)

Commander:Button("LynX", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ScriptsLynX/LynX/main/KeySystem/Loader.lua"))()
end)

Commander:Button("Arcexus", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/chillz-workshop/main/Arceus%20X%20V3"))()
end)

Commander:Button("Break In 2", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/RScriptz/RobloxScripts/main/BreakIn2.lua"))()
end)

ESPs:Button("ESP", function()
    local FillColor = Color3.fromRGB(139, 0, 0) local DepthMode = "AlwaysOnTop" local FillTransparency = 0.3 local OutlineColor = Color3.fromRGB(255,255,255) local OutlineTransparency = 0 local CoreGui = game:FindService("CoreGui") local Players = game:FindService("Players") local lp = Players.LocalPlayer local connections = {} local Storage = Instance.new("Folder") Storage.Parent = CoreGui Storage.Name = "Highlight_Storage" local function Highlight(plr) local Highlight = Instance.new("Highlight") Highlight.Name = plr.Name Highlight.FillColor = FillColor Highlight.DepthMode = DepthMode Highlight.FillTransparency = FillTransparency Highlight.OutlineColor = OutlineColor Highlight.OutlineTransparency = 0 Highlight.Parent = Storage local plrchar = plr.Character if plrchar then Highlight.Adornee = plrchar end connections[plr] = plr.CharacterAdded:Connect(function(char) Highlight.Adornee = char end) end Players.PlayerAdded:Connect(Highlight) for i,v in next, Players:GetPlayers() do Highlight(v) end Players.PlayerRemoving:Connect(function(plr) local plrname = plr.Name if Storage[plrname] then Storage[plrname]:Destroy() end if connections[plr] then connections[plr]:Disconnect() end end)
end)

ESPs:Button("ESP Name Display", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/DeathMachine07/ProjectDark/main/PlayerESP"))()
end)

HookMeta:Button("Client Anti-Kick", function()
local player = game:GetService("Players").LocalPlayer
local old

old = hookmetamethod(game,"___namecall", function(self ,...)
local method = getnamecallmethod()
if method == "Kick" or method == 'kick' then
return warn'blockthekick!'
end
return old(self ,...)
end)
end)

HookMeta:Button("Set WalkSpeed to X", function()
    local old
local humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid
old = hookmetamethod(game,"__index",function(self,key)
if self == humanoid and key == "WalkSpeed" then
return 90
end
return old(self,key)

end)
end)

HookMeta:Button("Anti-Kick Extend", function()
    local registry = getreg()
for i,v in next, registry do if type(v) == 'function' then local funcinfo = getinfo(v)
if funcinfo.name == 'kick' then
hookfunction(funcinfo.func,function(...) return nil end)
end
end
end
end)

Main:Button("Collect Best Item", function()
    local args = {
    [1] = "Collect",
    [2] = "StunStick"
}

game:GetService("ReplicatedStorage"):WaitForChild("SupplyClientEvent"):FireServer(unpack(args))

local args = {
    [1] = "Collect",
    [2] = "UV_Lamp"
}

game:GetService("ReplicatedStorage"):WaitForChild("SupplyClientEvent"):FireServer(unpack(args))


local args = {
    [1] = "Collect",
    [2] = "Vest"
}

game:GetService("ReplicatedStorage"):WaitForChild("SupplyClientEvent"):FireServer(unpack(args))

local args = {
    [1] = "Collect",
    [2] = "Vitamins"
}

game:GetService("ReplicatedStorage"):WaitForChild("SupplyClientEvent"):FireServer(unpack(args))

local args = {
    [1] = "Collect",
    [2] = "Tracker"
}

game:GetService("ReplicatedStorage"):WaitForChild("SupplyClientEvent"):FireServer(unpack(args))

end)

Main:Button("Fix Power", function()
    local args = {
    [1] = "StationStart"
}

workspace:WaitForChild("Map"):WaitForChild("PowerStation"):WaitForChild("StationFolder"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
end)

Main:Button("Open SH Door", function()
    local args = {
    [1] = "Door"
}

workspace:WaitForChild("Map"):WaitForChild("SafeHouse"):WaitForChild("Door"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
end)

Main:Button("Spam SH Door", function()
 while true do wait(0.2)   
local args = {
    [1] = "Door"
}

workspace:WaitForChild("Map"):WaitForChild("SafeHouse"):WaitForChild("Door"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
end
end)

Main:Button("Knock SH Door", function()
    local args = {
    [1] = "Knock"
}

workspace:WaitForChild("Map"):WaitForChild("SafeHouse"):WaitForChild("Door"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
end)

Main:Button("Open Supply Drop", function()
    local args = {
    [1] = "Open",
    [2] = true
}

game:GetService("ReplicatedStorage"):WaitForChild("SupplyClientEvent"):FireServer(unpack(args))
end)

Main:Button("Spam Fixing Power", function()
  while true do wait()  
  local args = {
    [1] = "StationStart"
}

workspace:WaitForChild("Map"):WaitForChild("PowerStation"):WaitForChild("StationFolder"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
end
end)

ESPi:Button("Rake ESP", function()
  local FillColor = Color3.fromRGB(81, 65, 79) 
local Delocal FillColor = Color3.fromRGB(81, 65, 79)
local DepthMode = "AlwaysOnTop"
local FillTransparency = 0.3
local OutlineColor = Color3.fromRGB(255, 0, 0)
local OutlineTransparency = 0
local CoreGui = game:FindService("CoreGui")

local Storage = Instance.new("Folder")
Storage.Parent = CoreGui
Storage.Name = "Highlight_Storage"

local Highlight = Instance.new("Highlight")
Highlight.Name = "yoomama"
Highlight.FillColor = FillColor
Highlight.DepthMode = DepthMode
Highlight.FillTransparency = FillTransparency
Highlight.OutlineColor = OutlineColor
Highlight.OutlineTransparency = 0
Highlight.Parent = Storage

local billboardGui = Instance.new("BillboardGui")
billboardGui.Name = "TadachiisESPTags" -- Use the correct name for the BillboardGui
billboardGui.Size = UDim2.new(0, 100, 0, 50) -- fixed size for the BillboardGui
billboardGui.StudsOffset = Vector3.new(0, 2, 0) -- adjust the vertical offset as needed
billboardGui.AlwaysOnTop = true
billboardGui.LightInfluence = 1
billboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
local textLabel = Instance.new("TextLabel")
textLabel.Name = "NameLabel" -- Use the correct name for the label
textLabel.Size = UDim2.new(1, 0, 1, 0)
textLabel.BackgroundTransparency = 1 -- transparent background
textLabel.TextColor3 = Color3.new(1, 0, 0) -- red text for the player's name
textLabel.TextScaled = true
textLabel.TextStrokeColor3 = Color3.new(0, 0, 0) -- black text stroke
textLabel.TextStrokeTransparency = 0 -- fully opaque text stroke (visible through walls)
textLabel.Visible = true -- ESP is always visible without a GUI
textLabel.Parent = billboardGui

local v
if game:GetService("Workspace"):FindFirstChild("Rake") then
  v = game:GetService("Workspace").Rake
end

if v then
  Highlight.Adornee = v
  billboardGui.Parent = v.Head
  for i = 1, 4800 do
    wait(0.1)
    textLabel.Text = math.floor(v.Monster.Health)
  end
end

game:GetService("Workspace").ChildAdded:Connect(function(Child)
  if Child.Name == "Rake" then
wait(5)
    Highlight.Adornee = Child
billboardGui.Parent = Child.Head
    for i = 1, 960 do
      wait(0.5)
      textLabel.Text = math.floor(Child.Monster.Health)
    end
  end
end)
end)

Tools:Toggle("StunStick Aura", function(state)
       while state and game.Players.LocalPlayer.Character.StunStick do
           wait(0.6)
           game.Players.LocalPlayer.Character.StunStick:Activate()
           local args = {
              [1] = "H",
              [2] = workspace:WaitForChild("Rake"):WaitForChild("Head")
           }

           game:GetService("Players").LocalPlayer.Character.StunStick.Event:FireServer(unpack(args))
       end
end)

Tools:Button("Increase Stun Distance", function()
    game.Players.LocalPlayer.Backpack.StunStick.HitPart.Size = Vector3.new(45,45,45)
end)

Tools:Button("Place Trap Offline", function()
    local args = {
    [1] = "YourselfStart"
}

game:GetService("Players").LocalPlayer.Character.RakeTrap:WaitForChild("RemoteEvent"):FireServer(unpack(args))
end)

Visual:Button("Load Data", function()
    local args = {
    [1] = "LoadData"
}

game:GetService("ReplicatedStorage"):WaitForChild("StartRemote"):InvokeServer(unpack(args))
end)

Visual:Button("FullBright", function()
    local mt = getrawmetatable(game.ReplicatedStorage);
make_writeable(mt); 
local old_index = mt.__index;

mt.__index = function(a, b) 
if tostring(a) == "FogEnd" then 
if tostring(b) == "Value" then return 100000; 
end 
end 
return old_index(a, b);
end

local mt = getrawmetatable(game.ReplicatedStorage.CurrentLightingProperties);
make_writeable(mt); 
local old_index = mt.__index;

mt.__index = function(a, b) 
if tostring(a) == "Brightness" then 
if tostring(b) == "Value" then return 7; 
end 
end 
return old_index(a, b);
end
end)

Master:Button("Delete Borders", function()
    game.Workspace.Filter.InvisibleWalls:ClearAllChildren()
    game.Workspace.Filter.ServerInvisibleWalls:ClearAllChildren()
    game.Workspace.Map.PowerStation.StationFolder.INVIS:Destroy()
    game.Workspace.Map.PowerStation.StationFolder.INVIS_COLLIDE:Destroy()
end)

Master:Button("Remove Jump Delay", function()
  
end)

Master:Button("Points Dupe", function()
    local args = {
    [1] = "SellScraps",
    [2] = "Scraps",
    [3] = "100000"
}

for i = 1,2000 do
	game:GetService("ReplicatedStorage"):WaitForChild("ShopEvent"):FireServer(unpack(args))
end
end)

Master:Button("Instant Kill", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/DeathMachine07/UniqueDemon/main/DemonLordV00"))()
end)

Master:Button("Rejoin Server", function()
    local ts = game:GetService("TeleportService")
local p = game:GetService("Players").LocalPlayer
ts:Teleport(game.PlaceId, p)
end)

ESPi:Button("Game Info", function()
    local PowerValue = game:GetService("ReplicatedStorage").PowerValues.PowerLevel
    local Timer = game.ReplicatedStorage.Timer
    local RakeHealth
    local UI = Instance.new("ScreenGui",game:GetService("CoreGui"))
    local Text = Instance.new("TextLabel", UI)
   local Text2 = Instance.new("TextLabel", UI)
local Text3 = Instance.new("TextLabel", UI)
Text1.Position = UDIM2.new(0.5,0,0.7,0)
Text1.Size = UDIM2.new(0.5,0,0.2,0)
Text2.Size = UDIM2.new(0.5,0,0.2,0)
Text3.Size = UDIM2.new(0.5,0,0.2,0)
Text2.Position = UDIM2.new(0.5,0,0.5,0)
Text3.Position = UDIM2.new(0.5,0,0.9,0)
Text1.TextScale = true
Text2.TextScale = true
Text3.TextScale = true
Text1.BackgroundTransparency = 1
Text2.BackgroundTransparency = 1
Text3.BackgroundTransparency = 1

Timer.Changed:Connect(function()
Text3.Text = Timer.Value
end)

PowerValue.Changed:Connect(function()
Text1.Text = PowerValue.Value
end)

while true do wait(0.2)
if workspace.Rake then
Text2.Text = workspace.Rake.Monster.Health
else
Text2.Text = "0"
end
end
end)

ESPi:Button("Trap ESP", function()
    local FillColor = Color3.fromRGB(255, 255, 255) 
local DepthMode = "AlwaysOnTop"
local FillTransparency = 0.3
local OutlineColor = Color3.fromRGB(255, 0, 0)
local OutlineTransparency = 0
local CoreGui = game:FindService("CoreGui")

local Storage = Instance.new("Folder")
Storage.Parent = CoreGui
Storage.Name = "Highlight_Storage"

local Highlight = Instance.new("Highlight")
Highlight.Name = "yoomama"
Highlight.FillColor = FillColor
Highlight.DepthMode = DepthMode
Highlight.FillTransparency = FillTransparency
Highlight.OutlineColor = OutlineColor
Highlight.OutlineTransparency = 0
Highlight.Parent = Storage

local billboardGui = Instance.new("BillboardGui")
billboardGui.Name = "TadachiisESPTags" -- Use the correct name for the BillboardGui
billboardGui.Size = UDim2.new(0, 100, 0, 50) -- fixed size for the BillboardGui
billboardGui.StudsOffset = Vector3.new(0, 2, 0) -- adjust the vertical offset as needed
billboardGui.AlwaysOnTop = true
billboardGui.LightInfluence = 1
billboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
local textLabel = Instance.new("TextLabel")
textLabel.Name = "NameLabel" -- Use the correct name for the label
textLabel.Size = UDim2.new(1, 0, 1, 0)
textLabel.BackgroundTransparency = 1 -- transparent background
textLabel.TextColor3 = Color3.new(1, 0, 0) -- red text for the player's name
textLabel.TextScaled = true
textLabel.TextStrokeColor3 = Color3.new(0, 0, 0) -- black text stroke
textLabel.TextStrokeTransparency = 0 -- fully opaque text stroke (visible through walls)
textLabel.Visible = true -- ESP is always visible without a GUI
textLabel.Text = "O"
textLabel.Parent = billboardGui

for i,v in pairs(workspace.Debris.Traps:GetChildren()) do
if v.Name == "RakeTrapModel" then
   local a = Highlight:Clone()
a.Adornee = v
local b = billboardGui:Clone()
b.Parent = v.Open
end
end

workspace.Debris.Traps.ChildAdded:Connect(function(child)
if child.Name == "RakeTrapModel" then
wait(5)
local a = Highlight:Clone()
a.Adornee = child
local b = billboardGui:Clone()
b.Parent = child.Open
end
end)
end)

ESPi:Button("Scrap ESP", function()
    local FillColor = Color3.fromRGB(0,281,0) 
local DepthMode = "AlwaysOnTop"
local FillTransparency = 0.3
local OutlineColor = Color3.fromRGB(255, 0, 0)
local OutlineTransparency = 0
local CoreGui = game:FindService("CoreGui")

local Storage = Instance.new("Folder")
Storage.Parent = CoreGui
Storage.Name = "Highlight_Storage"

local Highlight = Instance.new("Highlight")
Highlight.Name = "yoomama"
Highlight.FillColor = FillColor
Highlight.DepthMode = DepthMode
Highlight.FillTransparency = FillTransparency
Highlight.OutlineColor = OutlineColor
Highlight.OutlineTransparency = 0
Highlight.Parent = Storage

local billboardGui = Instance.new("BillboardGui")
billboardGui.Name = "TadachiisESPTags" -- Use the correct name for the BillboardGui
billboardGui.Size = UDim2.new(0, 100, 0, 50) -- fixed size for the BillboardGui
billboardGui.StudsOffset = Vector3.new(0, 2, 0) -- adjust the vertical offset as needed
billboardGui.AlwaysOnTop = true
billboardGui.LightInfluence = 1
billboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
local textLabel = Instance.new("TextLabel")
textLabel.Name = "NameLabel" -- Use the correct name for the label
textLabel.Size = UDim2.new(1, 0, 1, 0)
textLabel.BackgroundTransparency = 1 -- transparent background
textLabel.TextColor3 = Color3.new(1, 0, 0) -- red text for the player's name
textLabel.TextScaled = true
textLabel.TextStrokeColor3 = Color3.new(0, 0, 0) -- black text stroke
textLabel.TextStrokeTransparency = 0 -- fully opaque text stroke (visible through walls)
textLabel.Visible = true -- ESP is always visible without a GUI
textLabel.Text = "O"
textLabel.Parent = billboardGui

workspace.Filter.ScrapSpawns.ChildAdded:Connect(function()
for i,v in pairs(workspace.Filter.ScrapSpawns:GetDescendants()) do
if v.Name == "Clank" and not v:FindFirstChild("yoomama") then
   local a = Highlight:Clone()
a.Adornee = v
local b = billboardGui:Clone()
b.Parent = v
end
end
end)
end)

CharacterChain:Button("Infinite Stamina", function()
    local mt = getrawmetatable(game.Players.LocalPlayer.Character);
make_writeable(mt); 
local old_index = mt.__index;

mt.__index = function(a, b) 
if tostring(a) == "Stamina" then 
if tostring(b) == "Value" then return 999; 
end 
end 
return old_index(a, b);
end
end)

CharacterChain:Button("Infinite Combat", function()
    local mt = getrawmetatable(game.Players.LocalPlayer.Character);
make_writeable(mt); 
local old_index = mt.__index;

mt.__index = function(a, b) 
if tostring(a) == "CombatStamina" then 
if tostring(b) == "Value" then return 100; 
end 
end 
return old_index(a, b);
end
end)


CharacterChain:Button("Super Stamina Regen", function()
    local mt = getrawmetatable(game.Players.LocalPlayer.Character);
make_writeable(mt); 
local old_index = mt.__index;

mt.__index = function(a, b) 
if tostring(a) == "StaminaRegen" then 
if tostring(b) == "Value" then return 100; 
end 
end 
return old_index(a, b);
end
end)

CharacterChain:Button("Infinite Dodge", function()
    local mt = getrawmetatable(game.Players.LocalPlayer.Character);
make_writeable(mt); 
local old_index = mt.__index;

mt.__index = function(a, b) 
if tostring(a) == "Dodging" then 
if tostring(b) == "Value" then return true; 
end 
end 
return old_index(a, b);
end
end)


CharacterChain:Button("Always Dodging (Lag)", function()
    while true do wait(0.2)
local args = {
    [1] = "Dodge"
}

game:GetService("Players").LocalPlayer.Character.CharacterMobility.CTS:FireServer(unpack(args))
end
end)

CharacterChain:Button("Always Block with Machete (Lag)", function()
   while true do wait(0.1)
local args = {
    [1] = "ParryBegin"
}

game:GetService("Players").LocalPlayer.Character.CharacterHandler.Contents.Remotes.Interact:FireServer(unpack(args))
end
end)

CharacterChain:Button("Always Swing Machete (Lag)", function()
   while true do wait(0.1)
local args = {
    [1] = "MacheteSwing2"
}

game:GetService("Players").LocalPlayer.Character.CharacterHandler.Contents.Remotes.Interact:FireServer(unpack(args))
end
end)

MiscChain:Button("Warp Chain to Location", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/DeathMachine07/UniqueDemon/main/DemonLordV2"))()
end)

MiscChain:Button("Dupe Points Power", function()
   for i = 1,2000 do
fireproximityprompt(game.Workspace.GameStuff.GameSections.POWERSTATION.Hitbox.ProximityPrompt)
end
end)

-- MiscChain:Button("Insta Kill Chain", function()
  --  loadstring(game:HttpGet("https://raw.githubusercontent.com/DeathMachine07/ProjectDark/main/CHAINS"))()
--end)

MiscChain:Button("Chain ESP", function()
local FillColor = Color3.fromRGB(81, 65, 79)
local DepthMode = "AlwaysOnTop"
local FillTransparency = 0.3
local OutlineColor = Color3.fromRGB(255, 0, 0)
local OutlineTransparency = 0
local CoreGui = game:FindService("CoreGui")

local Storage = Instance.new("Folder")
Storage.Parent = CoreGui
Storage.Name = "Highlight_Storage"

local Highlight = Instance.new("Highlight")
Highlight.Name = "yoomama"
Highlight.FillColor = FillColor
Highlight.DepthMode = DepthMode
Highlight.FillTransparency = FillTransparency
Highlight.OutlineColor = OutlineColor
Highlight.OutlineTransparency = 0
Highlight.Parent = Storage

local billboardGui = Instance.new("BillboardGui")
billboardGui.Name = "TadachiisESPTags" -- Use the correct name for the BillboardGui
billboardGui.Size = UDim2.new(0, 100, 0, 50) -- fixed size for the BillboardGui
billboardGui.StudsOffset = Vector3.new(0, 2, 0) -- adjust the vertical offset as needed
billboardGui.AlwaysOnTop = true
billboardGui.LightInfluence = 1
billboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
local textLabel = Instance.new("TextLabel")
textLabel.Name = "NameLabel" -- Use the correct name for the label
textLabel.Size = UDim2.new(1, 0, 1, 0)
textLabel.BackgroundTransparency = 1 -- transparent background
textLabel.TextColor3 = Color3.new(1, 0, 0) -- red text for the player's name
textLabel.TextScaled = true
textLabel.TextStrokeColor3 = Color3.new(0, 0, 0) -- black text stroke
textLabel.TextStrokeTransparency = 0 -- fully opaque text stroke (visible through walls)
textLabel.Visible = true -- ESP is always visible without a GUI
textLabel.Parent = billboardGui

local v
if game:GetService("Workspace").Misc.AI:FindFirstChild("CHAIN") and workspace.Misc.AI.CHAIN:FindFirstChild("Humanoid") then
  v = game:GetService("Workspace").Misc.AI.CHAIN
end

if v then
  Highlight.Adornee = v
  billboardGui.Parent = v.Head
  for i = 1, 4800 do
    wait(0.1)
    textLabel.Text = math.floor(v.Humanoid.Health)
  end
end

game:GetService("Workspace").Misc.AI.ChildAdded:Connect(function(Child)
  if Child.Name == "CHAIN" and Child:FindFirstChild("Humanoid") then
wait(5)
    Highlight.Adornee = Child
billboardGui.Parent = Child.Head
    for i = 1, 960 do
      wait(0.5)
      textLabel.Text = math.floor(Child.Humanoid.Health)
    end
  end
end)
end)

MiscChain:Button("Open Supply & Shop & Doors", function()
    local Player = game.Players.LocalPlayer
local Character = Player.Character

for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
  if v.ClassName == "ProximityPrompt" then
    Character.HumanoidRootPart.CFrame = v.Parent.CFrame
   
      fireproximityprompt(v)
    local args = {
      [1] = "Looting34534534534534345345"
      }

    game:GetService("Players").LocalPlayer.Character.CharacterHandler.Contents.Remotes.Interact:FireServer(unpack(args))
    wait(0.2)
  end
end
end)

MiscChain:Button("Delete Borders", function()
    workspace.Misc.Barriers:ClearAllChildren()
end)


--MiscChain:Button("Extend Machete Hitbox (Need to Hold)", function()
 --   game.Players.LocalPlayer.Character.Machete.Handle.Size = Vector3.new(15,15,15)
--end)

TeleportChain:Button("PowerStation", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-208, 60, -130)
end)

TeleportChain:Button("Small Cabin", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(161, 60, 231)
end)

TeleportChain:Button("Warehouse", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(325, 60, -229)
end)

TeleportChain:Button("Car Cabin", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(149, 60, 2)
end)

TeleportChain:Button("Safehouse", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(179, 60, -36)
end)

TeleportChain:Button("Campfire", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(297, 60, 167)
end)

TeleportChain:Button("Shop", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-210, 20, -242)
end)

TeleportChain:Button("CHAIN Spawn", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-18, 20, -226)
end)

VisualChain:Button("Fullbright", function()
    game.Lighting.FogEnd = 100000000000
    game.Lighting.FogStart = 10000000000
    game.Lighting.ClockTime = 12
    game.Lighting.Brightness = 5
    game.Lighting.GlobalShadows = false
for i,v in pairs(game.Lighting:GetChildren()) do
      if v.Name ~= "Misc" then
v:Destroy()
end
end
end)

VisualChain:Button("Game Sections", function()
    local Player = game.Players.LocalPlayer
local Character = Player.Character

for i,v in pairs(game:GetService("Workspace").Misc:GetDescendants()) do
  if v.ClassName == "ProximityPrompt" then
    Character.HumanoidRootPart.CFrame = v.Parent.CFrame
    fireproximityprompt(v)
    wait(1)
  end
end
end)

TestChain:Button("150 Slices", function()
    for i = 1,150 do 
local args = {
    [1] = "MacheteSwing1"
}

game:GetService("Players").LocalPlayer.Character.CharacterHandler.Contents.Remotes.Interact:FireServer(unpack(args))
end
end)


TestChain:Button("1000 Slices", function()
    for i = 1,1000 do 
local args = {
    [1] = "MacheteSwing2"
}

game:GetService("Players").LocalPlayer.Character.CharacterHandler.Contents.Remotes.Interact:FireServer(unpack(args))
end
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-18, 20, -226)
end)local DiscordLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt"))()
local scriptswin = DiscordLib:Window("Void X Remaster")

local CHAIN = scriptswin:Server("CHAIN", "")

local CharacterChain = CHAIN:Channel("Character")
local TeleportChain = CHAIN:Channel("Teleport")
local VisualChain = CHAIN:Channel("Visual")
local MiscChain = CHAIN:Channel("Misc")


CharacterChain:Button("Infinite Stamina", function()
    local mt = getrawmetatable(game.Players.LocalPlayer.Character);
make_writeable(mt); 
local old_index = mt.__index;

mt.__index = function(a, b) 
if tostring(a) == "Stamina" then 
if tostring(b) == "Value" then return 999; 
end 
end 
return old_index(a, b);
end
end)

CharacterChain:Button("Infinite Combat", function()
    local mt = getrawmetatable(game.Players.LocalPlayer.Character);
make_writeable(mt); 
local old_index = mt.__index;

mt.__index = function(a, b) 
if tostring(a) == "CombatStamina" then 
if tostring(b) == "Value" then return 100; 
end 
end 
return old_index(a, b);
end
end)


CharacterChain:Button("Super Stamina Regen", function()
    local mt = getrawmetatable(game.Players.LocalPlayer.Character);
make_writeable(mt); 
local old_index = mt.__index;

mt.__index = function(a, b) 
if tostring(a) == "StaminaRegen" then 
if tostring(b) == "Value" then return 100; 
end 
end 
return old_index(a, b);
end
end)

CharacterChain:Button("Infinite Dodge", function()
    local mt = getrawmetatable(game.Players.LocalPlayer.Character);
make_writeable(mt); 
local old_index = mt.__index;

mt.__index = function(a, b) 
if tostring(a) == "Dodging" then 
if tostring(b) == "Value" then return true; 
end 
end 
return old_index(a, b);
end
end)


CharacterChain:Button("Always Dodging (Lag)", function()
    while true do wait(0.2)
local args = {
    [1] = "Dodge"
}

game:GetService("Players").LocalPlayer.Character.CharacterMobility.CTS:FireServer(unpack(args))
end
end)

CharacterChain:Button("Always Block with Machete (Lag)", function()
   while true do wait(0.1)
local args = {
    [1] = "ParryBegin"
}

game:GetService("Players").LocalPlayer.Character.CharacterHandler.Contents.Remotes.Interact:FireServer(unpack(args))
end
end)

CharacterChain:Button("Always Swing Machete (Lag)", function()
   while true do wait(0.1)
local args = {
    [1] = "MacheteSwing2"
}

game:GetService("Players").LocalPlayer.Character.CharacterHandler.Contents.Remotes.Interact:FireServer(unpack(args))
end
end)

MiscChain:Button("Warp Chain to Location", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/DeathMachine07/UniqueDemon/main/DemonLordV2"))()
end)

MiscChain:Button("Dupe Points Power", function()
   for i = 1,2000 do
fireproximityprompt(game.Workspace.GameStuff.GameSections.POWERSTATION.Hitbox.ProximityPrompt)
end
end)

-- MiscChain:Button("Insta Kill Chain", function()
  --  loadstring(game:HttpGet("https://raw.githubusercontent.com/DeathMachine07/ProjectDark/main/CHAINS"))()
--end)

MiscChain:Button("Chain ESP", function()
local FillColor = Color3.fromRGB(81, 65, 79)
local DepthMode = "AlwaysOnTop"
local FillTransparency = 0.3
local OutlineColor = Color3.fromRGB(255, 0, 0)
local OutlineTransparency = 0
local CoreGui = game:FindService("CoreGui")

local Storage = Instance.new("Folder")
Storage.Parent = CoreGui
Storage.Name = "Highlight_Storage"

local Highlight = Instance.new("Highlight")
Highlight.Name = "yoomama"
Highlight.FillColor = FillColor
Highlight.DepthMode = DepthMode
Highlight.FillTransparency = FillTransparency
Highlight.OutlineColor = OutlineColor
Highlight.OutlineTransparency = 0
Highlight.Parent = Storage

local billboardGui = Instance.new("BillboardGui")
billboardGui.Name = "TadachiisESPTags" -- Use the correct name for the BillboardGui
billboardGui.Size = UDim2.new(0, 100, 0, 50) -- fixed size for the BillboardGui
billboardGui.StudsOffset = Vector3.new(0, 2, 0) -- adjust the vertical offset as needed
billboardGui.AlwaysOnTop = true
billboardGui.LightInfluence = 1
billboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
local textLabel = Instance.new("TextLabel")
textLabel.Name = "NameLabel" -- Use the correct name for the label
textLabel.Size = UDim2.new(1, 0, 1, 0)
textLabel.BackgroundTransparency = 1 -- transparent background
textLabel.TextColor3 = Color3.new(1, 0, 0) -- red text for the player's name
textLabel.TextScaled = true
textLabel.TextStrokeColor3 = Color3.new(0, 0, 0) -- black text stroke
textLabel.TextStrokeTransparency = 0 -- fully opaque text stroke (visible through walls)
textLabel.Visible = true -- ESP is always visible without a GUI
textLabel.Parent = billboardGui

local v
if game:GetService("Workspace").Misc.AI:FindFirstChild("CHAIN") and workspace.Misc.AI.CHAIN:FindFirstChild("Humanoid") then
  v = game:GetService("Workspace").Misc.AI.CHAIN
end

if v then
  Highlight.Adornee = v
  billboardGui.Parent = v.Head
  for i = 1, 4800 do
    wait(0.1)
    textLabel.Text = math.floor(v.Humanoid.Health)
  end
end

game:GetService("Workspace").Misc.AI.ChildAdded:Connect(function(Child)
  if Child.Name == "CHAIN" and Child:FindFirstChild("Humanoid") then
wait(5)
    Highlight.Adornee = Child
billboardGui.Parent = Child.Head
    for i = 1, 960 do
      wait(0.5)
      textLabel.Text = math.floor(Child.Humanoid.Health)
    end
  end
end)
end)

MiscChain:Button("Open Supply & Shop & Doors", function()
    local Player = game.Players.LocalPlayer
local Character = Player.Character

for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
  if v.ClassName == "ProximityPrompt" then
    Character.HumanoidRootPart.CFrame = v.Parent.CFrame
   
      fireproximityprompt(v)
    local args = {
      [1] = "Looting34534534534534345345"
      }

    game:GetService("Players").LocalPlayer.Character.CharacterHandler.Contents.Remotes.Interact:FireServer(unpack(args))
    wait(0.2)
  end
end
end)

MiscChain:Button("Delete Borders", function()
    workspace.Misc.Barriers:ClearAllChildren()
end)


--MiscChain:Button("Extend Machete Hitbox (Need to Hold)", function()
 --   game.Players.LocalPlayer.Character.Machete.Handle.Size = Vector3.new(15,15,15)
--end)

TeleportChain:Button("PowerStation", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-208, 60, -130)
end)

TeleportChain:Button("Small Cabin", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(161, 60, 231)
end)

TeleportChain:Button("Warehouse", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(325, 60, -229)
end)

TeleportChain:Button("Car Cabin", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(149, 60, 2)
end)

TeleportChain:Button("Safehouse", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(179, 60, -36)
end)

TeleportChain:Button("Campfire", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(297, 60, 167)
end)

TeleportChain:Button("Shop", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-210, 20, -242)
end)


TeleportChain:Button("CHAIN Spawn", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-18, 20, -226)
end)

VisualChain:Button("Fullbright", function()
    game.Lighting.FogEnd = 100000000000
    game.Lighting.FogStart = 10000000000
    game.Lighting.ClockTime = 12
    game.Lighting.Brightness = 5
    game.Lighting.GlobalShadows = false
for i,v in pairs(game.Lighting:GetChildren()) do
      if v.Name ~= "Misc" then
v:Destroy()
end
end
end)

MiscChain:Button("Interact Things", function()
    local Player = game.Players.LocalPlayer
local Character = Player.Character

for i,v in pairs(game:GetService("Workspace").Misc:GetDescendants()) do
  if v.ClassName == "ProximityPrompt" then
    Character.HumanoidRootPart.CFrame = v.Parent.CFrame
    fireproximityprompt(v)
    wait(1)
  end
end
end)
