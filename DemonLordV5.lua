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
 MainFrame.Position = UDim2.new(0.7, 0, 0.3, 0) -- Center of the screen 
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
 TitleLabel.Text = "Warp Menu" -- The text to display 
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
 HiButton.Text = "300 SLICES" -- The text to display 
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
 CreditLabel.Text = "Credits: Void X" -- The text to display 
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
   local player = game.Players.LocalPlayer 
   local Character = player.Character or player.CharacterAdded:Wait() 

end
  
  
 -- Define a function to print "hi" when the hi button is clicked 
  

 -- Connect the functions to the button events 
 HiButton.MouseButton1Click:Connect(ToggleButtonbru) 
 --ToggleButton.MouseButton1Click:Connect(ToggleFrame) 
  
 
-- end
