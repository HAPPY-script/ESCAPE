--// SETTINGS
local questionText = "Do you want to choose Escape mode?\nIt will help you escape when you are about to die."
local url1 = "https://raw.githubusercontent.com/HAPPY-script/ESCAPE/refs/heads/main/ESCAPE" -- Thay URL 1 tại đây
local url2 = "https://raw.githubusercontent.com/HAPPY-script/NONE/refs/heads/main/NONE" -- Thay URL 2 tại đây

--// SERVICES
local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

--// UI SETUP
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "FloatingMenu"
screenGui.Parent = playerGui
screenGui.ResetOnSpawn = false
screenGui.IgnoreGuiInset = true

-- Main Frame
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0.4, 0, 0.25, 0)
frame.Position = UDim2.new(0.3, 0, -0.3, 0)
frame.BackgroundColor3 = Color3.fromRGB(45, 45, 60)
frame.BorderSizePixel = 0
frame.Parent = screenGui
frame.ClipsDescendants = true

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0.05, 0)
corner.Parent = frame

-- Câu hỏi
local label = Instance.new("TextLabel")
label.Size = UDim2.new(1, -20, 0.4, 0)
label.Position = UDim2.new(0, 10, 0, 5)
label.BackgroundTransparency = 1
label.Text = questionText
label.TextColor3 = Color3.fromRGB(255, 255, 255)
label.Font = Enum.Font.GothamBold
label.TextScaled = true
label.TextWrapped = true
label.Parent = frame

-- Nút 1 - Cam đỏ
local button1 = Instance.new("TextButton")
button1.Size = UDim2.new(0.45, 0, 0.3, 0)
button1.Position = UDim2.new(0.05, 0, 0.6, 0)
button1.BackgroundColor3 = Color3.fromRGB(255, 100, 80)
button1.Text = "⚠️ESCAPE !⚠️"
button1.Font = Enum.Font.GothamBold
button1.TextScaled = true
button1.TextColor3 = Color3.fromRGB(255, 255, 255)
button1.Parent = frame
Instance.new("UICorner", button1)

-- Nút 2 - Xanh biển nhạt
local button2 = Instance.new("TextButton")
button2.Size = UDim2.new(0.45, 0, 0.3, 0)
button2.Position = UDim2.new(0.5, 0, 0.6, 0)
button2.BackgroundColor3 = Color3.fromRGB(120, 180, 255)
button2.Text = "None"
button2.Font = Enum.Font.GothamBold
button2.TextScaled = true
button2.TextColor3 = Color3.fromRGB(255, 255, 255)
button2.Parent = frame
Instance.new("UICorner", button2)

-- Tween trượt xuống
TweenService:Create(frame, TweenInfo.new(0.6, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
    Position = UDim2.new(0.3, 0, 0.35, 0)
}):Play()

-- Hàm xử lý chọn nút
local function handleChoice(url)
    screenGui:Destroy() -- Xoá giao diện ngay lập tức
    task.spawn(function()
        local success, result = pcall(function()
            loadstring(game:HttpGet(url))()
        end)
        if not success then
            warn("Lỗi khi load URL: ", result)
        end
    end)
end

-- Gắn sự kiện click
button1.MouseButton1Click:Connect(function()
    handleChoice(url1)
end)

button2.MouseButton1Click:Connect(function()
    handleChoice(url2)
end)
