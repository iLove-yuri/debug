local Yuri = {}
function Yuri.new(Opts)
    local Ts    = Opts.TweenService
    local Txs   = Opts.TextService
    local Uis   = Opts.UserInputService
    local Cg    = Opts.CoreGui
    local Cfg   = Opts.config
    local OnChkKey = Opts.onCheckKey
    local OnCls    = Opts.onClose
    local SKey     = Opts.scriptKey
    local ADir  = Opts.AssetDir  or "yuri/Assets"
    local ABase = Opts.AssetBase or "https://raw.githubusercontent.com/iLove-yuri/debug/main/NewUI/"
    local function MkFldr(P)
        if not isfolder(P) then makefolder(P) end
    end
    local function GetAsset(N)
        local P = ADir .. "/" .. N
        if not isfile(P) then
            local Ok, Rs = pcall(request, { Url = ABase .. N, Method = "GET" })
            if Ok and Rs and Rs.Body and #Rs.Body > 0 then
                writefile(P, Rs.Body)
            end
        end
        if not isfile(P) then
            return ""
        end
        local Ok, Res = pcall(getcustomasset, P)
        if Ok and Res then
            return Res
        end
        return ""
    end
    MkFldr("yuri")
    MkFldr(ADir)
    local Pnl = GetAsset("UI.png")
    local Cnc = GetAsset("Cancel.png")
    local Hmu = GetAsset("Homu.png")
    local Mdo = GetAsset("Mado.png")
    local Mob      = Uis.TouchEnabled and not Uis.KeyboardEnabled
    local Fnt      = Enum.Font.Code
    local Fsz      = Mob and 14 or 16
    local WGrid    = Mob and 333 or 453
    local Pad      = 8
    local WPill    = WGrid - Pad * 2
    local HKey     = Mob and 20 or 26
    local Gap      = 6
    local WCheck   = Mob and 115 or 135
    local HCheck   = Mob and 15 or 18
    local GapCheck = Mob and 60 or 80
    local HTab     = Mob and 23 or 29
    local BotPad   = 8
    local HGrid = Pad + HKey + Gap
                 + HCheck + GapCheck
                 + HTab + BotPad
    local Black   = Color3.fromRGB(0, 0, 0)
    local Dim     = Color3.fromRGB(120, 95, 60)
    local Pink    = Color3.fromRGB(255, 105, 180)
    local Thm = {
        Text        = Black,
        Dim         = Dim,
        Accent      = Color3.fromRGB(235, 205, 150),
    }
    if Cg:FindFirstChild("iLoveyuri") then
        Cg.iLoveyuri:Destroy()
    end
    local Sg = Instance.new("ScreenGui")
    Sg.Name             = "iLoveyuri"
    Sg.ResetOnSpawn     = false
    Sg.ZIndexBehavior   = Enum.ZIndexBehavior.Global
    Sg.DisplayOrder     = 1
    Sg.IgnoreGuiInset   = true
    Sg.Parent           = Cg
    local Wr = Instance.new("Frame")
    Wr.BackgroundTransparency = 1
    Wr.AnchorPoint            = Vector2.new(0.5, 0.5)
    Wr.Size                   = UDim2.fromOffset(WGrid, HGrid)
    Wr.Position               = UDim2.fromScale(0.5, 0.5)
    Wr.Parent                 = Sg
    local Rt = Instance.new("Frame")
    Rt.Name               = "Root"
    Rt.BackgroundTransparency = 1
    Rt.BorderSizePixel    = 0
    Rt.Size               = UDim2.fromOffset(WGrid, HGrid)
    Rt.Position           = UDim2.fromOffset(0, 0)
    Rt.ClipsDescendants   = true
    Rt.ZIndex             = 1
    Rt.Parent             = Wr
    local Rbg = Instance.new("ImageLabel")
    Rbg.Name               = "Background"
    Rbg.Image              = Pnl
    Rbg.ImageRectOffset    = Vector2.new(23, 22)
    Rbg.ImageRectSize      = Vector2.new(1530, 1241)
    Rbg.ScaleType          = Enum.ScaleType.Stretch
    Rbg.BackgroundTransparency = 1
    Rbg.BorderSizePixel    = 0
    Rbg.Size               = UDim2.fromScale(1, 1)
    Rbg.ZIndex             = 1
    Rbg.Parent             = Rt
    local Cb = Instance.new("ImageButton")
    Cb.Image                = Cnc
    Cb.ScaleType            = Enum.ScaleType.Fit
    Cb.ImageColor3          = Dim
    Cb.BackgroundTransparency = 1
    Cb.AutoButtonColor      = false
    Cb.AnchorPoint          = Vector2.new(1, 0)
    Cb.Size                 = UDim2.fromOffset(20, 20)
    Cb.Position             = UDim2.new(1, 0, 0, 0)
    Cb.ZIndex               = 5
    Cb.Parent               = Rt
    local function MakePill(Prnt, YOff, W, H, XOff)
        local Pl = Instance.new("Frame")
        Pl.BackgroundColor3   = Color3.fromRGB(210, 210, 210)
        Pl.BorderColor3       = Color3.fromRGB(170, 170, 170)
        Pl.BorderSizePixel    = 1
        Pl.Size               = UDim2.fromOffset(W, H)
        Pl.Position           = UDim2.fromOffset(XOff or Pad, YOff)
        Pl.ClipsDescendants   = true
        Pl.ZIndex             = 6
        Pl.Parent             = Prnt
        return Pl
    end
    local function WrapText(TObj, MaxTSz, MinTSz)
        TObj.TextWrapped = false
        TObj.TextScaled  = true
        local Cn = Instance.new("UITextSizeConstraint")
        Cn.MaxTextSize = MaxTSz
        Cn.MinTextSize = MinTSz or 8
        Cn.Parent      = TObj
        return Cn
    end
    local YKey = Pad
    local Kc = MakePill(Rt, YKey, WPill, HKey)
    local Ktb = Instance.new("TextBox")
    local YTop  = YKey + HKey + Gap
    local YTabs     = YTop + HCheck + GapCheck
    Ktb.PlaceholderText  = "Paste your key here..."
    Ktb.Text             = ""
    Ktb.Font             = Fnt
    Ktb.TextSize         = Fsz - 1
    Ktb.TextColor3       = Black
    Ktb.PlaceholderColor3 = Black
    Ktb.BackgroundTransparency = 1
    Ktb.Size             = UDim2.fromScale(1, 1)
    Ktb.Position         = UDim2.fromOffset(0, 0)
    Ktb.ClearTextOnFocus = false
    Ktb.TextXAlignment   = Enum.TextXAlignment.Center
    Ktb.ZIndex           = 7
    Ktb.Parent           = Kc
    WrapText(Ktb, Fsz - 1)
    Ktb.Focused:Connect(function()
        Ts:Create(Kc, TweenInfo.new(0.15), { BorderColor3 = Color3.fromRGB(100, 100, 100) }):Play()
    end)
    Ktb.FocusLost:Connect(function()
        Ts:Create(Kc, TweenInfo.new(0.15), { BorderColor3 = Color3.fromRGB(170, 170, 170) }):Play()
    end)

    local function MakeButton(Bopts)
        local Txt      = Bopts.text
        local XOff     = Bopts.xOff or Pad
        local YOff     = Bopts.yOff
        local W        = Bopts.w
        local H        = Bopts.h
        local TClr     = Bopts.textColor or Black
        local MaxTSz   = Bopts.maxTextSize or Fsz
        local TSz      = Bopts.textSize or Fsz
        local Pl = MakePill(Rt, YOff, W, H, XOff)
        local B = Instance.new("TextButton")
        B.Text             = Txt
        B.Font             = Fnt
        B.TextSize         = TSz
        B.TextColor3       = TClr
        B.BackgroundTransparency = 1
        B.AutoButtonColor  = false
        B.Size             = UDim2.fromScale(1, 1)
        B.TextXAlignment   = Enum.TextXAlignment.Center
        B.TextYAlignment   = Enum.TextYAlignment.Center
        B.ZIndex           = 7
        B.Parent           = Pl
        WrapText(B, MaxTSz)
        local Bp = Instance.new("UIPadding")
        Bp.PaddingLeft   = UDim.new(0, 6)
        Bp.PaddingRight  = UDim.new(0, 6)
        Bp.PaddingTop    = UDim.new(0, 3)
        Bp.PaddingBottom = UDim.new(0, 3)
        Bp.Parent        = B
        B.MouseEnter:Connect(function()
            Ts:Create(B, TweenInfo.new(0.15), { TextColor3 = Color3.new(1, 1, 1) }):Play()
        end)
        B.MouseLeave:Connect(function()
            Ts:Create(B, TweenInfo.new(0.15), { TextColor3 = TClr }):Play()
        end)
        return B, Pl
    end
    local Kb = MakeButton({
        text      = "Check Key",
        xOff      = Pad + math.floor((WPill - WCheck) / 2),
        textSize  = 99,
        yOff      = YTop,
        w         = WCheck,
        h         = HCheck,
    })
    local TabIdle   = Color3.fromRGB(195, 195, 195)
    local TabActive = Color3.fromRGB(225, 225, 225)
    local TabText   = Color3.fromRGB(40,  40,  40)
    local TabBorder = Color3.fromRGB(155, 155, 155)
    local Tr = Instance.new("Frame")
    Tr.BackgroundColor3  = Color3.fromRGB(180, 180, 180)
    Tr.BorderColor3      = TabBorder
    Tr.BorderSizePixel   = 1
    Tr.Size              = UDim2.fromOffset(WPill, HTab)
    Tr.Position          = UDim2.fromOffset(Pad, YTabs)
    Tr.ClipsDescendants  = false
    Tr.ZIndex            = 6
    Tr.Parent            = Rt
    local CharH = GapCheck - 4
    local CharW = CharH
    local CharY = YTabs - CharH - 2
    local Hi = Instance.new("ImageLabel")
    Hi.Image                = Hmu
    Hi.ScaleType            = Enum.ScaleType.Fit
    Hi.BackgroundTransparency = 1
    Hi.Size                 = UDim2.fromOffset(CharW, CharH)
    Hi.Position             = UDim2.fromOffset(Pad, CharY)
    Hi.ZIndex               = 6
    Hi.Parent               = Rt
    local Hsp = Hi.Position
    local function Jump(Chr, Sp)
        return function()
            local JH = 20
            local JD = 0.6
            Ts:Create(
                Chr,
                TweenInfo.new(JD / 2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                { Position = UDim2.new(Sp.X.Scale, Sp.X.Offset, Sp.Y.Scale, Sp.Y.Offset - JH) }
            ):Play()
            task.wait(JD / 2)
            Ts:Create(
                Chr,
                TweenInfo.new(JD / 2, Enum.EasingStyle.Quad, Enum.EasingDirection.In),
                { Position = Sp }
            ):Play()
        end
    end
    Hi.InputBegan:Connect(function(Inp)
        if Inp.UserInputType == Enum.UserInputType.MouseButton1
        or Inp.UserInputType == Enum.UserInputType.Touch then
            Jump(Hi, Hsp)()
        end
    end)
    local Mi = Instance.new("ImageLabel")
    Mi.Image                = Mdo
    Mi.ScaleType            = Enum.ScaleType.Fit
    Mi.BackgroundTransparency = 1
    Mi.Size                 = UDim2.fromOffset(CharW, CharH)
    Mi.Position             = UDim2.fromOffset(Pad + CharW - 15, CharY + 3)
    Mi.ZIndex               = 6
    Mi.Parent               = Rt
    local Msp = Mi.Position
    Mi.InputBegan:Connect(function(Inp)
        if Inp.UserInputType == Enum.UserInputType.MouseButton1
        or Inp.UserInputType == Enum.UserInputType.Touch then
            Jump(Mi, Msp)()
        end
    end)
    local Tl = Instance.new("UIListLayout")
    Tl.FillDirection     = Enum.FillDirection.Horizontal
    Tl.HorizontalAlignment = Enum.HorizontalAlignment.Left
    Tl.VerticalAlignment = Enum.VerticalAlignment.Center
    Tl.Padding           = UDim.new(0, 0)
    Tl.SortOrder         = Enum.SortOrder.LayoutOrder
    Tl.Parent            = Tr
    local Tp = Instance.new("UIPadding")
    Tp.PaddingLeft   = UDim.new(0, 0)
    Tp.PaddingRight  = UDim.new(0, 0)
    Tp.PaddingTop    = UDim.new(0, 2)
    Tp.PaddingBottom = UDim.new(0, 2)
    Tp.Parent        = Tr
    local TAB_W = math.floor((WPill - 6 - 3) / 4)
    local function MakeTab(N, Clr, LOrd)
        local Tb = Instance.new("TextButton")
        Tb.Text             = N
        Tb.Font             = Fnt
        Tb.TextSize         = Fsz
        Tb.TextScaled       = false
        Tb.TextColor3       = Clr or TabText
        Tb.BackgroundColor3 = TabIdle
        Tb.AutoButtonColor  = false
        Tb.BorderSizePixel  = 0
        Tb.Size             = UDim2.new(0.25, -1, 1, 0)
        Tb.LayoutOrder      = LOrd
        Tb.ZIndex           = 7
        Tb.ClipsDescendants = true
        Tb.Parent           = Tr
        Tb.MouseEnter:Connect(function()
            if Tb.BackgroundColor3 ~= TabActive then
                Ts:Create(Tb, TweenInfo.new(0.1), { BackgroundColor3 = Color3.fromRGB(210, 210, 210) }):Play()
            end
        end)
        Tb.MouseLeave:Connect(function()
            if Tb.BackgroundColor3 ~= TabActive then
                Ts:Create(Tb, TweenInfo.new(0.1), { BackgroundColor3 = TabIdle }):Play()
            end
        end)
        return Tb
    end
    local Db = MakeTab("Discord",     TabText, 1)
    local Ab = MakeTab("AAC", Pink,     2)
    local Lb = MakeTab("Linkvertise", TabText, 3)
    local Wb = MakeTab("Workink",    TabText, 4)
    local Ta = Instance.new("Frame")
    Ta.Name                  = "ToastArea"
    Ta.BackgroundTransparency = 1
    Ta.AnchorPoint           = Vector2.new(1, 1)
    Ta.Position              = UDim2.new(1, -16, 1, -16)
    Ta.Size                  = UDim2.fromOffset(260, 200)
    Ta.Parent                = Sg
    local Tla = Instance.new("UIListLayout")
    Tla.FillDirection       = Enum.FillDirection.Vertical
    Tla.VerticalAlignment   = Enum.VerticalAlignment.Bottom
    Tla.HorizontalAlignment = Enum.HorizontalAlignment.Right
    Tla.Padding             = UDim.new(0, 6)
    Tla.SortOrder           = Enum.SortOrder.LayoutOrder
    Tla.Parent              = Ta
    local function Toast(Txt, Clr)
        Clr = Clr or Thm.Text
        local H = 26
        local O = Instance.new("Frame")
        O.BackgroundColor3  = Color3.fromRGB(20, 20, 20)
        O.BorderColor3      = Color3.fromRGB(50, 50, 50)
        O.BorderSizePixel   = 1
        O.Size              = UDim2.fromOffset(0, H)
        O.ClipsDescendants  = true
        O.Parent            = Ta
        local Sd = Instance.new("Frame")
        Sd.BackgroundColor3 = Pink
        Sd.BorderSizePixel  = 0
        Sd.Size             = UDim2.new(0, 3, 1, 0)
        Sd.Parent           = O
        local RHue   = 0
        local RAlive = true
        task.spawn(function()
            while RAlive and O and O.Parent do
                RHue = (RHue + 0.01) % 1
                O.BackgroundColor3 = Color3.fromHSV(RHue, 0.85, 0.25)
                task.wait(0.03)
            end
        end)
        task.delay(3.25, function() RAlive = false end)
        local Lbl = Instance.new("TextLabel")
        Lbl.BackgroundTransparency = 1
        Lbl.Font             = Fnt
        Lbl.TextSize         = 13
        Lbl.TextColor3       = Pink
        Lbl.TextXAlignment   = Enum.TextXAlignment.Left
        Lbl.Position         = UDim2.fromOffset(10, 0)
        Lbl.Size             = UDim2.new(1, -14, 1, 0)
        Lbl.Text             = Txt
        Lbl.Parent           = O
        local TsOk, TsRes = pcall(function()
            return Txs:GetTextSize(Txt, 13, Fnt, Vector2.new(1000, H))
        end)
        local TxtW = (TsOk and TsRes and TsRes.X) or (#Txt * 8)
        local TgtW    = math.min(260, TxtW + 24)
        Ts:Create(O, TweenInfo.new(0.25, Enum.EasingStyle.Quad), {
            Size = UDim2.fromOffset(TgtW, H)
        }):Play()
        task.delay(3, function()
            if O and O.Parent then
                Ts:Create(O, TweenInfo.new(0.25, Enum.EasingStyle.Quad), {
                    Size = UDim2.fromOffset(0, H)
                }):Play()
                task.delay(0.25, function()
                    if O then O:Destroy() end
                end)
            end
        end)
    end
    local Chk = false
    local function SetCheck(IsChk)
        Chk              = IsChk
        Kb.Text      = IsChk and "Checking..." or "Check Key"
        Kb.Active    = not IsChk
        local Tgt = IsChk and Thm.Dim or Black
        Ts:Create(Kb, TweenInfo.new(0.15), { TextColor3 = Tgt }):Play()
    end
    local function RunCheck(Key)
        if Chk then return end
        Key = Key and Key:gsub("^%s+", ""):gsub("%s+$", "") or ""
        if Key == "" then
            Toast("Enter your key", Pink)
            return
        end
        SetCheck(true)
        local Ok, Err = pcall(OnChkKey, Key, function(Txt, Clr)
            SetCheck(false)
            Toast(Txt, Clr)
        end, Sg)
        if not Ok then
            SetCheck(false)
            Toast("Key check failed: " .. tostring(Err), Pink)
        end
    end
    local Dr = false
    local Ds, Sp
    Rt.InputBegan:Connect(function(Inp)
        if Inp.UserInputType == Enum.UserInputType.MouseButton1
        or Inp.UserInputType == Enum.UserInputType.Touch then
            Dr  = true
            Ds = Inp.Position
            Sp  = Wr.Position
            Inp.Changed:Connect(function()
                if Inp.UserInputState == Enum.UserInputState.End then
                    Dr = false
                end
            end)
        end
    end)
    Rt.InputChanged:Connect(function(Inp)
        if (Inp.UserInputType == Enum.UserInputType.MouseMovement
        or  Inp.UserInputType == Enum.UserInputType.Touch) and Dr then
            local Dlt = Inp.Position - Ds
            Ts:Create(Wr, TweenInfo.new(0.08), {
                Position = UDim2.new(
                    Sp.X.Scale, Sp.X.Offset + Dlt.X,
                    Sp.Y.Scale, Sp.Y.Offset + Dlt.Y
                )
            }):Play()
        end
    end)
    Lb.MouseButton1Click:Connect(function()
        setclipboard(Cfg.LinkvertiseURL)
        Toast("Linkvertise link copied", Pink)
    end)
    Wb.MouseButton1Click:Connect(function()
        setclipboard(Cfg.WorkinkURL)
        Toast("Workink link copied", Pink)
    end)
    Ab.MouseButton1Click:Connect(function()
        setclipboard(Cfg.AAC)
        Toast("AAC link copied", Pink)
    end)
    Db.MouseButton1Click:Connect(function()
        setclipboard(Cfg.DiscordURL)
        Toast("Discord link copied", Pink)
    end)
    Kb.MouseButton1Click:Connect(function()
        RunCheck(Ktb.Text)
    end)
    Ktb.FocusLost:Connect(function(EnterPressed)
        if EnterPressed and Ktb.Text ~= "" then
            RunCheck(Ktb.Text)
        end
    end)
    Cb.MouseButton1Click:Connect(function()
        Sg:Destroy()
        if OnCls then OnCls() end
    end)
    Cb.MouseEnter:Connect(function()
        Ts:Create(Cb, TweenInfo.new(0.15), { ImageColor3 = Pink }):Play()
    end)
    Cb.MouseLeave:Connect(function()
        Ts:Create(Cb, TweenInfo.new(0.15), { ImageColor3 = Thm.Dim }):Play()
    end)
    task.spawn(function()
        if SKey and SKey ~= "" then
            Ktb.Text = SKey
            Toast("Filling key...", Thm.Accent)
            RunCheck(SKey)
        end
    end)
    return {
        ScreenGui  = Sg,
        Toast      = Toast,
        Ktb        = Ktb,
    }
end
return Yuri
