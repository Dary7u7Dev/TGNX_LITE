local NotificationMessage = "TGN se ha inyectado correctamente"
local NotificationDuration = 15

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game.Players.LocalPlayer.PlayerGui

local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(0, 300, 0, 120)
Frame.Position = UDim2.new(0.5, -150, 1, -150)
Frame.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
Frame.BackgroundTransparency = 0.5
Frame.BorderSizePixel = 0
Frame.Parent = ScreenGui
Frame.ClipsDescendants = true 


local Message = Instance.new("TextLabel")
Message.Size = UDim2.new(1, 0, 1, -40)
Message.Position = UDim2.new(0, 0, 0, 0)
Message.Text = NotificationMessage
Message.Font = Enum.Font.SourceSansBold
Message.TextColor3 = Color3.new(1, 1, 1)
Message.TextSize = 20
Message.BackgroundTransparency = 1
Message.Parent = Frame


local CloseButton = Instance.new("TextButton")
CloseButton.Size = UDim2.new(0, 100, 0, 40)
CloseButton.Position = UDim2.new(0.5, -50, 1, -40)
CloseButton.Text = "Cerrar"
CloseButton.Font = Enum.Font.SourceSans
CloseButton.TextColor3 = Color3.new(1, 1, 1)
CloseButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
CloseButton.BackgroundTransparency = 0.5
CloseButton.TextSize = 18
CloseButton.Parent = Frame

local function CloseNotification()
    ScreenGui:Destroy()
end

CloseButton.MouseButton1Click:Connect(CloseNotification)

wait(NotificationDuration)
CloseNotification()
