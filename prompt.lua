-- Create a ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Create a Frame to hold the text
local frame = Instance.new("Frame")
frame.Size = UDim2.new(1, 0, 1, 0) -- Full screen size
frame.BackgroundColor3 = Color3.new(0, 0, 0) -- Black color
frame.Parent = screenGui

-- Create a TextLabel to display the message
local textLabel = Instance.new("TextLabel")
textLabel.Size = UDim2.new(1, 0, 1, 0) 
textLabel.BackgroundTransparency = 1 
textLabel.Text = "Thanks! Please press the button to disconnect"
textLabel.TextColor3 = Color3.new(1, 1, 1) 
textLabel.TextScaled = true 
textLabel.Parent = frame


local leaveButton = Instance.new("TextButton")
leaveButton.Size = UDim2.new(0.2, 0, 0.1, 0) 
leaveButton.Position = UDim2.new(0.4, 0, 0.7, 0) 
leaveButton.BackgroundColor3 = Color3.new(1, 0, 0) 
leaveButton.Text = "Leave"
leaveButton.TextColor3 = Color3.new(1, 1, 1) 
leaveButton.TextScaled = true 
leaveButton.Parent = frame


leaveButton.MouseButton1Click:Connect(function()
    game.Players.LocalPlayer:Kick("Custom message here.")
end)


local cancelButton = Instance.new("TextButton")
cancelButton.Size = UDim2.new(0.2, 0, 0.1, 0) 
cancelButton.Position = UDim2.new(0.4, 0, 0.85, 0) 
cancelButton.BackgroundColor3 = Color3.new(0, 1, 0) 
cancelButton.Text = "Cancel"
cancelButton.TextColor3 = Color3.new(1, 1, 1) 
cancelButton.TextScaled = true 
cancelButton.Parent = frame


cancelButton.MouseButton1Click:Connect(function()
    screenGui:Destroy()
end)
