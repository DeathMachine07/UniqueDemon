local PlayerPermission = {"heoconchien", "moochoo555555", "Leongodmode55", "DeliveryCreator"} 
  
 local player = game.Players.LocalPlayer 
 --if table.find(PlayerPermission, player.Name) then 
 local Gui = Instance.new("ScreenGui") 
 Gui.Parent = game.Players.LocalPlayer.PlayerGui 
 local Yoke = false 
 local Tries = 3 
 -- Create a Frame and set its properties 
 local MainFrame = Instance.new("Frame") 
 MainFrame.Name = "MainFrame" 
 MainFrame.Position = UDim2.new(0.85, 0, 0.8, 0) -- Center of the screen 
 MainFrame.Size = UDim2.new(0.2, 0, 0.2, 0) -- Half of the screen size 
 MainFrame.AnchorPoint = Vector2.new(0.5, 0.5) -- Anchor at the center 
 MainFrame.BackgroundColor3 = Color3.new(0, 0, 0)-- Black color 
 MainFrame.BackgroundTransparency = 0.7 
 MainFrame.BorderSizePixel = 2 
 MainFrame.BorderColor3 = Color3.new(0,0,0) 
 MainFrame.Parent = Gui 
  
 -- Create a TextLabel for the title and set its properties 
 local TitleLabel = Instance.new("TextLabel") 
 TitleLabel.Name = "TitleLabel" 
 TitleLabel.Position = UDim2.new(0.5, 0, 0.1, 0) -- Near the top of the frame 
 TitleLabel.Size = UDim2.new(0.8, 0, 0.3, 0) -- Relative to the frame size 
 TitleLabel.AnchorPoint = Vector2.new(0.5, 0.5) -- Anchor at the center 
 TitleLabel.BackgroundTransparency = 1 -- White color 
 TitleLabel.TextColor3 = Color3.new(1,1,1) -- Black color 
 TitleLabel.Text = "Instant-Kill" -- The text to display 
 TitleLabel.Font = Enum.Font.Oswald -- The font to use 
 TitleLabel.TextSize = 27 -- The text size 
 TitleLabel.Parent = MainFrame 
  
 -- Create a TextButton and set its properties 
local HiButton = Instance.new("TextButton")
 HiButton.Name = "HiButton" 
 HiButton.Position = UDim2.new(0.5, 0, 0.5, 0) -- Center of the frame 
 HiButton.Size = UDim2.new(0.9, 0, 0.4, 0) -- Relative to the frame size 
 HiButton.AnchorPoint = Vector2.new(0.5, 0.5) -- Anchor at the center 
 HiButton.BackgroundColor3 = Color3.fromRGB(153,153,153) -- White color 
 HiButton.TextColor3 = Color3.new(0, 0, 0) -- Black color 
 HiButton.BackgroundTransparency = 0.5
 HiButton.Text = "600 SLICES TO VOID" -- The text to display 
 HiButton.Font = Enum.Font.SourceSans -- The font to use 
 HiButton.TextScaled = true -- The text size 
 HiButton.Parent = MainFrame 
  
 -- Create a TextLabel for the credits and set its properties 
 local CreditLabel = Instance.new("TextLabel") 
 CreditLabel.Name = "CreditLabel" 
 CreditLabel.Position = UDim2.new(0.5, 0, 0.9, 0) -- Near the bottom of the frame 
 CreditLabel.Size = UDim2.new(0.8, 0, 0.1, 0) -- Relative to the frame size 
 CreditLabel.AnchorPoint = Vector2.new(0.5, 0.5) -- Anchor at the center 
 CreditLabel.BackgroundTransparency = 1 -- White color 
 CreditLabel.TextColor3 = Color3.fromRGB(255,0,0) -- Black color 
 CreditLabel.Text = "VOID-X NIGHT WAVES" -- The text to display 
 CreditLabel.Font = Enum.Font.Arial -- The font to use 
 CreditLabel.TextScaled = true -- The text size 
 CreditLabel.Parent = MainFrame 
  
 -- Create a TextButton for toggling the frame and set its properties 
--[[ local ToggleButton = Instance.new("TextButton") 
 ToggleButton.Name = "ToggleButton" 
 ToggleButton.Position = UDim2.new(0, 10, 1, -10) -- Near the bottom left of the screen 
 ToggleButton.Size = UDim2.new(0.05, 0, 0.05, 0) -- Relative to the screen size 
 ToggleButton.AnchorPoint = Vector2.new(0, 1) -- Anchor at the bottom left 
 ToggleButton.BackgroundColor3 = Color3.fromRGB(153,153,153) -- White color 
 ToggleButton.TextColor3 = Color3.new(0, 0, 0) -- Black color 
 ToggleButton.Text = "X" -- The text to display 
 ToggleButton.Font = Enum.Font.SourceSans -- The font to use 
 ToggleButton.TextScaled = true -- The text size 
 ToggleButton.Parent = Gui 
  --]]
 -- Create a LocalScript for handling the button events and set its Parent to Gui 
  
 -- Get the button objects from the Gui 
 local HiButton = Gui.MainFrame.HiButton 
-- local ToggleButton = Gui.ToggleButton 
  
 -- Define a variable to store the state of the frame 
 local FrameVisible = true 
  
 -- Define a function to toggle the frame visibility and update the button text 

  
local function ToggleButtonbru() -- Set the frame visibility to the state 
local Player = game.Players.LocalPlayer
local Character = Player.Character

--[[local ChoirA = Instance.new("Sound")
ChoirA.Parent = workspace
ChoirA.Volume = 10
ChoirA.SoundId = "rbxassetid://16555186322"
ChoirA:Play()
wait(3.5) --]]

local Death = Instance.new("TextLabel")
Death.Size = UDim2.new(1,0,1,0)
Death.Text = "魂"
Death.TextSize = 80
Death.BackgroundTransparency = 1 -- White color
Death.TextColor3 = Color3.new(1,0,0)
Death.Font = Enum.Font.Creepster
Death.Parent = Gui

local TimesUp = Instance.new("Sound")
TimesUp.Parent = workspace
TimesUp.Volume = 3
TimesUp.SoundId = "rbxassetid://9114792002"
TimesUp:Play()

wait(2)
Death.TextTransparency = 0.6
  TimesUp:Destroy()
Character.HumanoidRootPart.CFrame = workspace.Misc.AI.CHAIN.PrimaryPart.CFrame * CFrame.new(0,-5,0)

wait(1.5)

local Clash = Instance.new("Sound")
Clash.Parent = workspace
Clash.Volume = 10
Clash.SoundId = "rbxassetid://7223765833"
Clash:Play()

  for i = 1,25 do
  wait(0.01)
  Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Head.CFrame * CFrame.new(i,0,0)
end
  
  for i = 1,600 do 
local args = {
    [1] = "MacheteSwing1"
}

game:GetService("Players").LocalPlayer.Character.CharacterHandler.Contents.Remotes.Interact:FireServer(unpack(args))
end




wait(0.05)
local Color = Instance.new("ColorCorrectionEffect")
Color.Parent = game.Lighting
--  Color.Transparency = 0.5
--Color.Brightness = -0.1
Color.TintColor = Color3.fromRGB(255,0,0)
--Color.Saturation = 0.3

local ColorA = Instance.new("ColorCorrectionEffect")
ColorA.Parent = game.Lighting
--  ColorA.Transparency = 0.7
--ColorA.Brightness = -0.1
ColorA.TintColor = Color3.fromRGB(0,0,0)
--ColorA.Saturation = 0.3

  local Choir = Instance.new("Sound")
Choir.Parent = workspace
Choir.Volume = 5
Choir.SoundId = "rbxassetid://7889522233"
Choir:Play()

  wait(0.4)
  Color:Destroy()
ColorA:Destroy()


wait(4.3)
Choir:Destroy()
Death:Destroy()
--TimesUp:Destroy()
end
  
  
 -- Define a function to print "hi" when the hi button is clicked 
  local UIS = game:GetService("UserInputService")
    UIS.InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.X then
ToggleButtonbru()
    end
  end)

 -- Connect the functions to the button events 
 HiButton.MouseButton1Click:Connect(ToggleButtonbru) 
 --ToggleButton.MouseButton1Click:Connect(ToggleFrame) 
  
 
-- end
