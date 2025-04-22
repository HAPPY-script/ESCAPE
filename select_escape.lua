--// SETTINGS
local questionText = "Do you want to choose Escape mode?\nIt will help you escape when you are about to die."
local url1 = "loadstring(game:HttpGet("https://raw.githubusercontent.com/HAPPY-script/ESCAPE/refs/heads/main/ESCAPE"))()" -- Thay bằng URL của bạn
local url2 = "loadstring(game:HttpGet("https://raw.githubusercontent.com/HAPPY-script/NONE/refs/heads/main/NONE"))()" -- Thay bằng URL của bạn

--// SERVICES
local TweenService = game:GetService("TweenService")
local StarterGui = game:GetService("StarterGui")

--// UI CREATION
local screenGui = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"))
screenGui.Name = "MenuPrompt"
screenGui.ResetOnSpawn = false
screenGui.IgnoreGuiInset = true

-- Container chính
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0.9, 0, 0.4, 0)
frame.Position = UDim2.new(0.05, 0, -0.5, 0)
frame.AnchorPoint = Vector2.new(0.5, 0)
frame.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
frame.BorderSizePixel = 0
frame.BackgroundTransparency = 0.1
frame.ClipsDescendants = true
frame.Parent = screenGui
frame.AnchorPoint = Vector2.new(0, 0)
frame.Position = UDim2.new(0.05, 0, -0.5, 0)
frame:TweenPosition(UDim2.new(0.05, 0, 0.2, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.6, true)

-- UICorner
local corner = Instance.new("UICorner", frame)
corner.CornerRadius = UDim.new(0.05, 0)

-- Câu hỏi
local label = Instance.new("TextLabel")
label.Size = UDim2.new(1, -40, 0.3, 0)
label.Position = UDim2.new(0, 20, 0.05, 0)
label.BackgroundTransparency = 1
label.Text = questionText
label.TextColor3 = Color3.fromRGB(255, 255, 255)
label.Font = Enum.Font.GothamBold
label.TextScaled = true
label.TextWrapped = true
label.Parent = frame

-- Nút 1 (cam đỏ)
local button1 = Instance.new("TextButton")
button1.Size = UDim2.new(0.4, 0, 0.25, 0)
button1.Position = UDim2.new(0.05, 0, 0.65, 0)
button1.BackgroundColor3 = Color3.fromRGB(255, 90, 60)
button1.Text = "ESCAPE !"
button1.Font = Enum.Font.GothamBold
button1.TextColor3 = Color3.fromRGB(255, 255, 255)
button1.TextScaled = true
button1.Parent = frame
Instance.new("UICorner", button1)

-- Nút 2 (xanh biển nhạt)
local button2 = Instance.new("TextButton")
button2.Size = UDim2.new(0.4, 0, 0.25, 0)
button2.Position = UDim2.new(0.55, 0, 0.65, 0)
button2.BackgroundColor3 = Color3.fromRGB(100, 180, 255)
button2.Text = "None"
button2.Font = Enum.Font.GothamBold
button2.TextColor3 = Color3.fromRGB(255, 255, 255)
button2.TextScaled = true
button2.Parent = frame
Instance.new("UICorner", button2)

-- Xử lý click nút
local function openUrl(url)
    if not url then return end
    local success, msg = pcall(function()
        StarterGui:SetCore("OpenUrl", url)
    end)
    if not success then
        warn("Không thể mở URL: ", msg)
    end
end

button1.MouseButton1Click:Connect(function()
    openUrl(url1)
end)

button2.MouseButton1Click:Connect(function()
    openUrl(url2)
end)
