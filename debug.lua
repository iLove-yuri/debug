local Players          = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local RunService       = game:GetService("RunService")
local TweenService     = game:GetService("TweenService")
local player = Players.LocalPlayer
local pGui   = player:WaitForChild("PlayerGui")
local old = pGui:FindFirstChild("__DebugGUI")
if old then old:Destroy() end
local IsOnMobile = table.find(
    {Enum.Platform.IOS, Enum.Platform.Android},
    UserInputService:GetPlatform()
) ~= nil
local viewport  = workspace.CurrentCamera.ViewportSize
local W         = IsOnMobile and math.floor(viewport.X * 0.92)  or math.min(660, math.floor(viewport.X * 0.52))
local H         = IsOnMobile and math.floor(viewport.Y * 0.56)  or math.min(420, math.floor(viewport.Y * 0.60))
local HEADER_H  = IsOnMobile and 64  or 80
local SIDEBAR_W = IsOnMobile and 48  or 54
local CORNER    = 13
local PAD       = 10
local MAX_LINES = 500
local FONT      = Enum.Font.Code
local FONT_SIZE = IsOnMobile and 12 or 14
local BG       = Color3.fromRGB(10,  10,  10)
local PANEL    = Color3.fromRGB(18,  18,  18)
local BORDER   = Color3.fromRGB(45,  45,  45)
local TEXT_COL = Color3.fromRGB(200, 200, 200)
local DIM_COL  = Color3.fromRGB(80,  80,  80)
local ACCENT   = Color3.fromRGB(220, 220, 220)
local BTN_BG   = Color3.fromRGB(28,  28,  28)
local BTN_HOV  = Color3.fromRGB(42,  42,  42)
local screenGui             = Instance.new("ScreenGui")
screenGui.Name              = "__DebugGUI"
screenGui.ResetOnSpawn      = false
screenGui.ZIndexBehavior    = Enum.ZIndexBehavior.Sibling
screenGui.IgnoreGuiInset    = true
screenGui.Parent            = pGui
local wrapper                  = Instance.new("Frame")
wrapper.Name                   = "Wrapper"
wrapper.BackgroundTransparency = 1
wrapper.BorderSizePixel        = 0
wrapper.Size                   = UDim2.fromOffset(W, H)
wrapper.Position               = UDim2.fromOffset(
    math.floor((viewport.X - W) / 2),
    math.floor((viewport.Y - H) / 4)
)
wrapper.Parent                 = screenGui
local root                 = Instance.new("Frame")
root.Name                  = "Root"
root.Size                  = UDim2.fromScale(1, 1)
root.BackgroundColor3      = BG
root.BorderSizePixel       = 0
root.ClipsDescendants      = true
root.Parent                = wrapper
Instance.new("UICorner", root).CornerRadius = UDim.new(0, 4)
local rootStroke           = Instance.new("UIStroke")
rootStroke.Color           = BORDER
rootStroke.Thickness       = 1
rootStroke.Parent          = root
local function makeChamfer(anchorX, posXScale)
    local c                = Instance.new("Frame")
    c.Size                 = UDim2.fromOffset(CORNER * 2, CORNER * 2)
    c.AnchorPoint          = Vector2.new(anchorX, 1)
    c.Position             = UDim2.new(posXScale, 0, 1, 0)
    c.Rotation             = 45
    c.BackgroundColor3     = BORDER
    c.BorderSizePixel      = 0
    c.ZIndex               = 0
    c.Parent               = wrapper
end
makeChamfer(0, 0)   
makeChamfer(1, 1)   
local header               = Instance.new("Frame")
header.Name                = "Header"
header.Active              = true   
header.Size                = UDim2.new(1, 0, 0, HEADER_H)
header.BackgroundColor3    = PANEL
header.BorderSizePixel     = 0
header.ZIndex              = 2
header.Parent              = root
local headerStroke             = Instance.new("UIStroke")
headerStroke.Color             = BORDER
headerStroke.Thickness         = 1
headerStroke.ApplyStrokeMode   = Enum.ApplyStrokeMode.Border
headerStroke.Parent            = header
local debugLabel               = Instance.new("TextLabel")
debugLabel.Text                = "DEBUG"
debugLabel.Font                = FONT
debugLabel.TextSize            = 10
debugLabel.TextColor3          = DIM_COL
debugLabel.BackgroundTransparency = 1
debugLabel.Size                = UDim2.fromOffset(50, 16)
debugLabel.Position            = UDim2.fromOffset(SIDEBAR_W + PAD, 8)
debugLabel.TextXAlignment      = Enum.TextXAlignment.Left
debugLabel.ZIndex              = 3
debugLabel.Parent              = header
local titleLabel               = Instance.new("TextLabel")
titleLabel.Text                = "Title"
titleLabel.Font                = FONT
titleLabel.TextSize            = IsOnMobile and 20 or 28
titleLabel.TextColor3          = ACCENT
titleLabel.BackgroundTransparency = 1
titleLabel.Size                = UDim2.new(1, -(SIDEBAR_W + PAD + 50), 1, 0)
titleLabel.Position            = UDim2.fromOffset(SIDEBAR_W + PAD, 0)
titleLabel.TextXAlignment      = Enum.TextXAlignment.Center
titleLabel.ZIndex              = 3
titleLabel.Parent              = header
local MIN_W = IsOnMobile and 38 or 28
local MIN_H = IsOnMobile and 22 or 15
local minBtn                   = Instance.new("TextButton")
minBtn.Text                    = "─"
minBtn.Font                    = FONT
minBtn.TextSize                = 11
minBtn.TextColor3              = Color3.fromRGB(60, 60, 60)
minBtn.BackgroundColor3        = Color3.fromRGB(218, 218, 218)
minBtn.BorderSizePixel         = 0
minBtn.AutoButtonColor         = false
minBtn.Size                    = UDim2.fromOffset(MIN_W, MIN_H)
minBtn.Position                = UDim2.new(1, -PAD - MIN_W, 0, 8)
minBtn.ZIndex                  = 5
minBtn.Parent                  = header
Instance.new("UICorner", minBtn).CornerRadius = UDim.new(0, 2)
local divider              = Instance.new("Frame")
divider.Size               = UDim2.new(1, 0, 0, 1)
divider.Position           = UDim2.fromOffset(0, HEADER_H)
divider.BackgroundColor3   = BORDER
divider.BorderSizePixel    = 0
divider.ZIndex             = 2
divider.Parent             = root
local sidebar              = Instance.new("Frame")
sidebar.Name               = "Sidebar"
sidebar.Size               = UDim2.new(0, SIDEBAR_W, 1, -HEADER_H - 1)
sidebar.Position           = UDim2.fromOffset(0, HEADER_H + 1)
sidebar.BackgroundColor3   = PANEL
sidebar.BorderSizePixel    = 0
sidebar.ZIndex             = 2
sidebar.Parent             = root
local sidebarStroke            = Instance.new("UIStroke")
sidebarStroke.Color            = BORDER
sidebarStroke.Thickness        = 1
sidebarStroke.ApplyStrokeMode  = Enum.ApplyStrokeMode.Border
sidebarStroke.Parent           = sidebar
local sideLayout               = Instance.new("UIListLayout")
sideLayout.FillDirection       = Enum.FillDirection.Vertical
sideLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
sideLayout.VerticalAlignment   = Enum.VerticalAlignment.Center
sideLayout.Padding             = UDim.new(0, 10)
sideLayout.Parent              = sidebar
local function makeSideBtn(txt)
    local btn              = Instance.new("TextButton")
    btn.Text               = txt
    btn.Font               = FONT
    btn.TextSize           = 10
    btn.TextColor3         = DIM_COL
    btn.BackgroundColor3   = BTN_BG
    btn.BorderSizePixel    = 0
    btn.AutoButtonColor    = false
    btn.Size               = UDim2.fromOffset(38, IsOnMobile and 30 or 24)
    btn.ZIndex             = 3
    btn.Parent             = sidebar
    Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 3)
    btn.MouseEnter:Connect(function()
        TweenService:Create(btn, TweenInfo.new(0.12), {
            BackgroundColor3 = BTN_HOV, TextColor3 = ACCENT
        }):Play()
    end)
    btn.MouseLeave:Connect(function()
        TweenService:Create(btn, TweenInfo.new(0.12), {
            BackgroundColor3 = BTN_BG, TextColor3 = DIM_COL
        }):Play()
    end)
    return btn
end
local clearBtn = makeSideBtn("CLEAR")
local diamondLbl               = Instance.new("ImageLabel")
diamondLbl.Image               = "rbxassetid://6034509993"
diamondLbl.Size                = UDim2.fromOffset(18, 18)
diamondLbl.BackgroundTransparency = 1
diamondLbl.ImageColor3         = Color3.fromRGB(60, 60, 60)
diamondLbl.ZIndex              = 3
diamondLbl.Parent              = sidebar
local logBtn = makeSideBtn("LOG")
local logFrame                     = Instance.new("ScrollingFrame")
logFrame.Name                      = "LogFrame"
logFrame.Size                      = UDim2.new(1, -SIDEBAR_W, 1, -HEADER_H - 1)
logFrame.Position                  = UDim2.fromOffset(SIDEBAR_W, HEADER_H + 1)
logFrame.BackgroundColor3          = BG
logFrame.BorderSizePixel           = 0
logFrame.ScrollBarThickness        = IsOnMobile and 6 or 4
logFrame.ScrollBarImageColor3      = BORDER
logFrame.CanvasSize                = UDim2.fromOffset(0, 0)
logFrame.ScrollingDirection        = Enum.ScrollingDirection.Y
logFrame.ZIndex                    = 2
logFrame.Parent                    = root
local logLayout                    = Instance.new("UIListLayout")
logLayout.FillDirection            = Enum.FillDirection.Vertical
logLayout.HorizontalAlignment      = Enum.HorizontalAlignment.Left
logLayout.SortOrder                = Enum.SortOrder.LayoutOrder
logLayout.Padding                  = UDim.new(0, 1)
logLayout.Parent                   = logFrame
logLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    logFrame.CanvasSize = UDim2.fromOffset(0, logLayout.AbsoluteContentSize.Y + 12)
end)
local logPad                       = Instance.new("UIPadding")
logPad.PaddingLeft                 = UDim.new(0, PAD)
logPad.PaddingTop                  = UDim.new(0, 6)
logPad.PaddingBottom               = UDim.new(0, 6)
logPad.PaddingRight                = UDim.new(0, 6)
logPad.Parent                      = logFrame
local placeholder                  = Instance.new("TextLabel")
placeholder.Text                   = "Debug text here"
placeholder.Font                   = FONT
placeholder.TextSize               = FONT_SIZE
placeholder.TextColor3             = DIM_COL
placeholder.BackgroundTransparency = 1
placeholder.Size                   = UDim2.new(1, 0, 0, FONT_SIZE + 6)
placeholder.TextXAlignment         = Enum.TextXAlignment.Left
placeholder.LayoutOrder            = 0
placeholder.ZIndex                 = 3
placeholder.Parent                 = logFrame
local lines     = {}
local lineCount = 0
local minimized = false
local fullH     = H
local function formatArgs(...)
    local parts = {}
    for i = 1, select("#", ...) do
        parts[i] = tostring(select(i, ...))
    end
    return table.concat(parts, "\t")
end
local function scrollToBottom()
    logFrame.CanvasPosition = Vector2.new(0, math.huge)
end
local function addLine(text)
    if placeholder.Parent then placeholder:Destroy() end
    lineCount += 1
    if lineCount > MAX_LINES then
        local oldest = lines[1]
        if oldest then oldest:Destroy() end
        table.remove(lines, 1)
        lineCount = MAX_LINES
    end
    local lbl                   = Instance.new("TextLabel")
    lbl.Text                    = text
    lbl.Font                    = FONT
    lbl.TextSize                = FONT_SIZE
    lbl.TextColor3              = TEXT_COL
    lbl.BackgroundTransparency  = 1
    lbl.Size                    = UDim2.new(1, 0, 0, FONT_SIZE + 4)
    lbl.TextXAlignment          = Enum.TextXAlignment.Left
    lbl.TextTruncate            = Enum.TextTruncate.AtEnd
    lbl.LayoutOrder             = lineCount
    lbl.ZIndex                  = 3
    lbl.TextTransparency        = 0.6
    lbl.Parent                  = logFrame
    local t = 0
    local conn
    conn = RunService.Heartbeat:Connect(function(dt)
        t += dt * 6
        lbl.TextTransparency = math.max(0, 0.6 - t * 0.6)
        if lbl.TextTransparency <= 0 then conn:Disconnect() end
    end)
    table.insert(lines, lbl)
    task.defer(scrollToBottom)
    return lbl
end
function debug(...)
    addLine(formatArgs(...))
end
clearBtn.MouseButton1Click:Connect(function()
    for _, lbl in ipairs(lines) do lbl:Destroy() end
    lines     = {}
    lineCount = 0
    local flash                 = Instance.new("Frame")
    flash.Size                  = UDim2.fromScale(1, 1)
    flash.BackgroundColor3      = Color3.fromRGB(255, 255, 255)
    flash.BackgroundTransparency = 0.85
    flash.BorderSizePixel       = 0
    flash.ZIndex                = 10
    flash.Parent                = logFrame
    local t = 0
    local conn
    conn = RunService.Heartbeat:Connect(function(dt)
        t += dt * 5
        flash.BackgroundTransparency = math.min(1, 0.85 + t * 0.15)
        if flash.BackgroundTransparency >= 1 then
            flash:Destroy()
            conn:Disconnect()
        end
    end)
end)
logBtn.MouseButton1Click:Connect(function()
    local out = {}
    for _, lbl in ipairs(lines) do
        table.insert(out, lbl.Text)
    end
    local ok, err = pcall(writefile, "_lesbian_log.txt", table.concat(out, "\n"))
    addLine(ok and "saved _lesbian_log.txt" or "writefile failed: " .. tostring(err))
end)
minBtn.MouseButton1Click:Connect(function()
    minimized     = not minimized
    local targetH = minimized and HEADER_H or fullH
    minBtn.Text   = minimized and "□" or "─"
    local t       = 0
    local startH  = root.AbsoluteSize.Y
    local conn
    conn = RunService.Heartbeat:Connect(function(dt)
        t = math.min(1, t + dt * 10)
        local ease = 1 - (1 - t) ^ 3
        local newH = startH + (targetH - startH) * ease
        root.Size    = UDim2.fromOffset(W, newH)
        wrapper.Size = UDim2.fromOffset(W, newH)
        if t >= 1 then conn:Disconnect() end
    end)
end)
task.spawn(function()
    local dragging  = false
    local dragInput
    local dragStart = Vector3.new(0, 0, 0)
    local startPos
    local function applyDrag(input)
        local delta = input.Position - dragStart
        TweenService:Create(wrapper, TweenInfo.new(0.05), {
            Position = UDim2.new(
                startPos.X.Scale, startPos.X.Offset + delta.X,
                startPos.Y.Scale, startPos.Y.Offset + delta.Y
            )
        }):Play()
    end
    header.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1
        or input.UserInputType == Enum.UserInputType.Touch then
            dragging  = true
            dragStart = input.Position
            startPos  = wrapper.Position
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)
    header.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement
        or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)
    UserInputService.InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            applyDrag(input)
        end
    end)
end)
addLine("debug ready")
