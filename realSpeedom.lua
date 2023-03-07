local gui = Instance.new("ScreenGui")
local main = Instance.new("Frame")

            --main--

local label = Instance.new("TextLabel")
local km = Instance.new("TextLabel")
local maxu = Instance.new("TextLabel")
local kts = Instance.new("TextLabel")
local kr1 = Instance.new("Frame")
local kr2 = Instance.new("Frame")

_G.speedom = true

gui.Parent = game.CoreGui
gui.Name = "gui"

main.Name = "main"
main.Parent = gui
main.Position = UDim2.new(0.85,-450,0.1,-15)
main.BackgroundTransparency = 0.3
main.BackgroundColor3 = Color3.fromRGB(45,45,45)
main.BorderColor3 = Color3.fromRGB(27,42,53)
main.Size = UDim2.new(0,200,0,60)
main.Draggable = false
main.Active = true

            --main--

label.Name = "text"
label.Parent = main
label.BackgroundTransparency = 1
label.Text = "   Km/h         Mach         kts"
label.Position = UDim2.new(0.45,0,0.2,0)
label.TextColor3 = Color3.fromRGB(0,105,255)
label.Font = Enum.Font.SourceSans
label.TextStrokeColor3 = Color3.fromRGB(30, 15, 160)
label.TextStrokeTransparency = 0
label.TextSize = 20

km.Parent = main
km.Name = "kilom"
km.Position = UDim2.new(0.027,0,0.5,0)
km.TextSize = 20
km.Font = Enum.Font.SourceSans
km.TextStrokeColor3 = Color3.fromRGB(30,160,15)
km.TextColor3 = Color3.fromRGB(0,255,102)
km.TextStrokeTransparency = 0
km.Text = "1234"
km.BackgroundTransparency = 1
km.Size = UDim2.new(0,55,0,25)

maxu.Parent = main
maxu.Name = "max"
maxu.Position = UDim2.new(0.355,0,0.5,0)
maxu.TextSize = 20
maxu.Font = Enum.Font.SourceSans
maxu.TextStrokeColor3 = Color3.fromRGB(200,230,5)
maxu.TextColor3 = Color3.fromRGB(230,255,0)
maxu.TextStrokeTransparency = 0
maxu.Text = "1234"
maxu.BackgroundTransparency = 1
maxu.Size = UDim2.new(0,55,0,25)

kts.Parent = main
kts.Name = "kts"
kts.BackgroundTransparency = 1
kts.Position = UDim2.new(0.66,0,0.5,0)
kts.TextSize = 20
kts.Text = "1234"
kts.Font = Enum.Font.SourceSans
kts.TextStrokeColor3 = Color3.fromRGB(255,40,25)
kts.TextColor3 = Color3.fromRGB(255,40,45)
kts.TextStrokeTransparency = 0
kts.Size = UDim2.new(0,55,0,25)

kr1.Parent = main
kr1.Position = UDim2.new(0.34,0,0,0)
kr1.Size = UDim2.new(0,2,0,60)
kr1.BackgroundColor3 = Color3.fromRGB(200,20,60)
kr1.BorderColor3 = Color3.fromRGB(30,60,220)

kr2.Parent = main
kr2.Position = UDim2.new(0.63,0,0,0)
kr2.Size = UDim2.new(0,2,0,60)
kr2.BackgroundColor3 = Color3.fromRGB(200,20,60)
kr2.BorderColor3 = Color3.fromRGB(30,60,220)

while _G.speedom do
        task.wait()
    if (game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")) then
    km.Text = string.format("%.1f",((game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity.Magnitude*0.305)*3.6))
    maxu.Text = string.format("%.2f",(game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity.Magnitude*0.305)/340.29)
    kts.Text = string.format("%.1f",game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity.Magnitude*0.305*(1.852))
    end
end