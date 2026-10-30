if getgenv().yuririri then
	pcall(function()
		getgenv().yuririri:Unload()
	end)
end
Services = setmetatable({}, {
	__index = function(self, name)
		local success, cache = pcall(function()
			return cloneref(game:GetService(name))
		end)
		if success then
			rawset(self, name, cache)
			return cache
		else
			error("Invalid Service: " .. tostring(name))
		end
	end
})
local Players = Services.Players
local RunService = Services.RunService
local UserInputService = Services.UserInputService
local HttpService = Services.HttpService
local CoreGui = Services.CoreGui
local LocalPlayer = Players.LocalPlayer
local Const = {
	HasDrawing = typeof(Drawing) == "table" and typeof(Drawing.new) == "function",
	Removed = -1,
	Hidden = 0,
	Shown = 1,
	NearPlane = 0.1,
	CornerRatio = 0.2,
	HumanoidRecheck = 1,
	BonesRecheck = 1,
	NameHeight = 0.55,
	StrokeAlpha = 0.4,
	BarGap = 7,
	BarWidth = 4,
	BarPad = 1,
	TextGapBar = 24,
	TextGap = 10,
	OutlineAlpha = 0.6,
}
local Store = {
	Enabled = true,
	Chams = true,
	Name = true,
	Distance = true,
	Box = false,
	BoxStyle = "Corner",
	BoxThickness = 1,
	Tracer = false,
	TracerOrigin = "Bottom",
	TracerThickness = 1,
	Health = false,
	HealthStyle = "Bar",
	HealthTextSuffix = "HP",
	Skeleton = false,
	SkeletonThickness = 1.5,
	TextSize = 14,
	TextFont = 2,
	FillTransparency = 0.4,
	OutlineTransparency = 0,
	BillboardSize = UDim2.fromOffset(100, 28),
	BillboardOffset = Vector3.new(0, 3, 0),
	DistanceUnit = "studs",
	MaxDistance = math.huge,
	MaxChams = 31,
	UpdateInterval = 0.1,
	PoolLimit = 128,
	Rainbow = false,
	RainbowSpeed = 1,
	TeamCheck = false,
	ShowTeam = false,
	DefaultColor = Color3.fromRGB(255, 255, 255),
	EnemyColor = Color3.fromRGB(255, 25, 25),
	AllyColor = Color3.fromRGB(25, 255, 25),
}
local ESP = {
	Store = Store,
	Entries = {},
	GroupSettings = {},
	Active = {},
	VisualPool = {},
	DrawPool = {},
	Gen = 0,
	Unloaded = false,
	AllHidden = false,
	DrawNeeded = false,
	WarnedDrawing = false,
	Settings = setmetatable({}, {
		__index = Store,
		__newindex = function(_, key, value)
			Store[key] = value
		end,
	}),
}
local Container = Instance.new("Folder")
Container.Name = HttpService:GenerateGUID(false)
Container.Parent = CoreGui
local STYLE_KEYS = { "Chams", "Name", "Distance", "Box", "Tracer", "Health", "Skeleton" }
local OPTION_FIELDS = {
	Color = "Color",
	OutlineColor = "OutlineColor",
	TextColor = "TextColor",
	MaxDistance = "MaxDistance",
	Humanoid = "Humanoid",
	Highlight = "UseHighlight",
	Billboard = "UseBillboard",
}
local BOX_EDGES = {
	{ 1, 2 }, { 3, 4 }, { 5, 6 }, { 7, 8 },
	{ 1, 3 }, { 2, 4 }, { 5, 7 }, { 6, 8 },
	{ 1, 5 }, { 2, 6 }, { 3, 7 }, { 4, 8 },
}
local CORNER_SIGNS = {}
for bits = 0, 7 do
	CORNER_SIGNS[bits + 1] = Vector3.new(
		bits % 2 == 0 and -1 or 1,
		math.floor(bits / 2) % 2 == 0 and -1 or 1,
		bits >= 4 and 1 or -1
	)
end
local R15_BONES = {
	{ "Head", "UpperTorso" },
	{ "UpperTorso", "LowerTorso" },
	{ "UpperTorso", "LeftUpperArm" },
	{ "LeftUpperArm", "LeftLowerArm" },
	{ "LeftLowerArm", "LeftHand" },
	{ "UpperTorso", "RightUpperArm" },
	{ "RightUpperArm", "RightLowerArm" },
	{ "RightLowerArm", "RightHand" },
	{ "LowerTorso", "LeftUpperLeg" },
	{ "LeftUpperLeg", "LeftLowerLeg" },
	{ "LeftLowerLeg", "LeftFoot" },
	{ "LowerTorso", "RightUpperLeg" },
	{ "RightUpperLeg", "RightLowerLeg" },
	{ "RightLowerLeg", "RightFoot" },
}
local R6_BONES = {
	{ "Head", "Torso" },
	{ "Torso", "Left Arm" },
	{ "Torso", "Right Arm" },
	{ "Torso", "Left Leg" },
	{ "Torso", "Right Leg" },
}
local cornerWorld = {}
local cornerDepth = {}
local cornerScreen = {}
local edgeFrom = {}
local edgeTo = {}
local screenBounds = { minX = 0, minY = 0, maxX = 0, maxY = 0 }
local function Set(object, property, value)
	if object[property] ~= value then
		object[property] = value
	end
end
local function SetProp(visual, instance, property, value)
	local applied = visual.Applied[instance]
	if applied[property] == value then
		return
	end
	applied[property] = value
	instance[property] = value
end
local function MakeLabel(heightScale, positionScale, font)
	local label = Instance.new("TextLabel")
	label.Size = UDim2.fromScale(1, heightScale)
	label.Position = UDim2.fromScale(0, positionScale)
	label.BackgroundTransparency = 1
	label.TextStrokeTransparency = Const.StrokeAlpha
	label.TextScaled = true
	label.Font = font
	label.Text = ""
	return label
end
local function FreeVisual(self, entry)
	local visual = entry.Visual
	if not visual then
		return
	end
	entry.Visual = nil
	SetProp(visual, visual.Highlight, "Enabled", false)
	SetProp(visual, visual.Highlight, "Adornee", nil)
	SetProp(visual, visual.Billboard, "Enabled", false)
	SetProp(visual, visual.Billboard, "Adornee", nil)
	if #self.VisualPool >= self.Store.PoolLimit then
		visual.Highlight:Destroy()
		visual.Billboard:Destroy()
		return
	end
	table.insert(self.VisualPool, visual)
end
local function MakeDrawing(set, className, properties)
	local drawing = Drawing.new(className)
	drawing.Visible = false
	for property, value in pairs(properties) do
		drawing[property] = value
	end
	table.insert(set.All, drawing)
	return drawing
end
local function HideSet(set)
	for _, drawing in ipairs(set.All) do
		Set(drawing, "Visible", false)
	end
end
local function RemoveSet(set)
	for _, drawing in ipairs(set.All) do
		drawing:Remove()
	end
end
local function FreeDraw(self, entry)
	local set = entry.Draw
	if not set then
		return
	end
	entry.Draw = nil
	HideSet(set)
	if #self.DrawPool >= self.Store.PoolLimit then
		RemoveSet(set)
		return
	end
	table.insert(self.DrawPool, set)
end
local function SetSegment(index, from, to)
	edgeFrom[index] = from
	edgeTo[index] = to
end
local function DrawLines(set, lines, count, color, thickness)
	for index = 1, count do
		local line = lines[index]
		if not line then
			line = MakeDrawing(set, "Line", {})
			lines[index] = line
		end
		line.From = edgeFrom[index]
		line.To = edgeTo[index]
		Set(line, "Color", color)
		Set(line, "Thickness", thickness)
		Set(line, "Visible", true)
	end
	for index = count + 1, #lines do
		Set(lines[index], "Visible", false)
	end
end
local function Project(camera, worldPoint)
	local projected = camera:WorldToViewportPoint(worldPoint)
	return Vector2.new(projected.X, projected.Y)
end
local function KillEntry(self, entry)
	entry.Dead = true
	entry.Visible = false
	FreeVisual(self, entry)
	FreeDraw(self, entry)
end
local function HasChams(entry)
	return entry.Style.Chams and entry.UseHighlight ~= false
end
local function Upsert(self, group, key, name, opts)
	local entries = self.Entries[group]
	if not entries then
		entries = {}
		self.Entries[group] = entries
	end
	local entry = entries[key]
	if not entry then
		entry = {
			Distance = 0,
			Visible = false,
			Style = {},
			NextHumanoidCheck = 0,
			NextBonesCheck = 0,
		}
		if opts and opts.Player then
			entry.Player = opts.Player
		elseif opts and opts.Adornee then
			entry.Model = opts.Adornee
		elseif typeof(key) == "Instance" then
			entry.Model = key
		end
		entries[key] = entry
	end
	entry.Gen = self.Gen
	if name ~= nil then
		entry.Name = tostring(name)
	end
	if opts then
		if opts.SubText ~= nil then
			entry.SubText = tostring(opts.SubText)
		end
		for option, field in pairs(OPTION_FIELDS) do
			if opts[option] ~= nil then
				entry[field] = opts[option]
			end
		end
		if opts.Adornee ~= nil and not entry.Player and entry.Model ~= opts.Adornee then
			entry.Model = opts.Adornee
			entry.Part = nil
			entry.Humanoid = nil
			entry.NextHumanoidCheck = 0
		end
	end
	return entry
end
local function Refresh(self)
	local ok, err = pcall(function()
		local settings = self.Store
		if not settings.Enabled then
			self:HideAll()
			return
		end
		local character = LocalPlayer.Character
		local root = character and character:FindFirstChild("HumanoidRootPart")
		local origin = root and root.Position
		if not origin then
			self:HideAll()
			return
		end
		self.AllHidden = false
		local now = os.clock()
		local rainbow = settings.Rainbow and Color3.fromHSV(now * settings.RainbowSpeed % 1, 1, 1) or nil
		local active = self.Active
		table.clear(active)
		local drawNeeded = false
		for groupName, entries in pairs(self.Entries) do
			local group = self.GroupSettings[groupName]
			local groupEnabled = not group or group.Enabled ~= false
			for key, entry in pairs(entries) do
				local state = Const.Hidden
				if groupEnabled then
					repeat
						local player = entry.Player
						local model
						if player then
							model = player.Character
							if model ~= entry.Model then
								entry.Model = model
								entry.Part = nil
								entry.Humanoid = nil
								entry.NextHumanoidCheck = 0
							end
							if not model then
								break
							end
							local hiddenTeammate = false
							if settings.TeamCheck and not settings.ShowTeam then
								local team = player.Team
								hiddenTeammate = team ~= nil and team == LocalPlayer.Team
							end
							if hiddenTeammate then
								break
							end
						else
							model = entry.Model
							if not model then
								break
							end
							if not model.Parent then
								state = Const.Removed
								break
							end
						end
						local part = entry.Part
						if not part or not part.Parent then
							if model:IsA("BasePart") then
								part = model
							elseif model:IsA("Model") then
								part = model.PrimaryPart
									or model:FindFirstChild("HumanoidRootPart")
									or model:FindFirstChildWhichIsA("BasePart", true)
							else
								part = nil
							end
							entry.Part = part
							if not part then
								break
							end
						end
						local distance = (part.Position - origin).Magnitude
						if distance > (entry.MaxDistance or (group and group.MaxDistance) or settings.MaxDistance) then
							break
						end
						entry.Distance = distance
						local style = entry.Style
						for _, styleKey in ipairs(STYLE_KEYS) do
							local override = group and group[styleKey]
							if type(override) ~= "boolean" then
								override = settings[styleKey]
							end
							style[styleKey] = override
						end
						local wantsDraw = style.Box or style.Tracer or style.Health or style.Skeleton
						if wantsDraw and not Const.HasDrawing then
							if not ESP.WarnedDrawing then
								ESP.WarnedDrawing = true
								warn("Drawing API is unavailable, Box/Tracer/Health/Skeleton are disabled")
							end
							style.Box, style.Tracer, style.Health, style.Skeleton = false, false, false, false
							wantsDraw = false
						end
						style.Draw = wantsDraw
						if player or entry.Humanoid or style.Health then
							local humanoid = entry.Humanoid
							if not (humanoid and humanoid.Parent) then
								humanoid = nil
								if now >= entry.NextHumanoidCheck then
									entry.NextHumanoidCheck = now + Const.HumanoidRecheck
									humanoid = model:IsA("Model") and model:FindFirstChildOfClass("Humanoid") or nil
									entry.Humanoid = humanoid
								end
							end
							if humanoid and humanoid.Health <= 0 then
								break
							end
						end
						state = Const.Shown
					until true
				end
				if state == Const.Removed then
					KillEntry(self, entry)
					entries[key] = nil
				elseif state == Const.Shown then
					entry.Visible = true
					if rainbow then
						entry.Fill, entry.ResolvedOutline, entry.ResolvedText = rainbow, rainbow, rainbow
					else
						local fill = entry.Color or (group and group.Color)
						if not fill then
							local player = entry.Player
							if player then
								local team = player.Team
								local isTeammate = team ~= nil and team == LocalPlayer.Team
								fill = isTeammate and settings.AllyColor or settings.EnemyColor
							else
								fill = settings.DefaultColor
							end
						end
						entry.Fill = fill
						entry.ResolvedOutline = entry.OutlineColor or (group and group.OutlineColor) or fill
						entry.ResolvedText = entry.TextColor or (group and group.TextColor) or fill
					end
					if entry.Style.Draw then
						drawNeeded = true
					else
						FreeDraw(self, entry)
					end
					table.insert(active, entry)
				else
					entry.Visible = false
					FreeVisual(self, entry)
					FreeDraw(self, entry)
				end
			end
		end
		self.DrawNeeded = drawNeeded
		local cap = settings.MaxChams
		local chamsCount = 0
		for _, entry in ipairs(active) do
			if HasChams(entry) then
				chamsCount = chamsCount + 1
			end
		end
		if chamsCount > cap then
			table.sort(active, function(a, b)
				return a.Distance < b.Distance
			end)
		end
		local used = 0
		for _, entry in ipairs(active) do
			local chams = HasChams(entry)
			if chams then
				used = used + 1
				chams = used <= cap
			end
			local style = entry.Style
			local showBillboard = entry.UseBillboard ~= false and (style.Name or style.Distance or entry.SubText ~= nil)
			if not chams and not showBillboard then
				FreeVisual(self, entry)
			else
				local visual = entry.Visual
				if not visual then
					visual = table.remove(self.VisualPool)
					if not visual then
						local highlight = Instance.new("Highlight")
						highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
						highlight.Enabled = false
						highlight.Parent = Container
						local billboard = Instance.new("BillboardGui")
						billboard.AlwaysOnTop = true
						billboard.ResetOnSpawn = false
						billboard.LightInfluence = 0
						billboard.Enabled = false
						billboard.Parent = Container
						local nameLabel = MakeLabel(Const.NameHeight, 0, Enum.Font.GothamBold)
						nameLabel.Parent = billboard
						local subLabel = MakeLabel(1 - Const.NameHeight, Const.NameHeight, Enum.Font.Gotham)
						subLabel.Parent = billboard
						visual = {
							Highlight = highlight,
							Billboard = billboard,
							NameLabel = nameLabel,
							SubLabel = subLabel,
							Applied = {
								[highlight] = { Enabled = false },
								[billboard] = { Enabled = false },
								[nameLabel] = {},
								[subLabel] = {},
							},
						}
					end
					entry.Visual = visual
				end
				local highlight = visual.Highlight
				if not chams then
					SetProp(visual, highlight, "Enabled", false)
					SetProp(visual, highlight, "Adornee", nil)
				else
					SetProp(visual, highlight, "Adornee", entry.Model)
					SetProp(visual, highlight, "FillColor", entry.Fill)
					SetProp(visual, highlight, "OutlineColor", entry.ResolvedOutline)
					SetProp(visual, highlight, "FillTransparency", settings.FillTransparency)
					SetProp(visual, highlight, "OutlineTransparency", settings.OutlineTransparency)
					SetProp(visual, highlight, "Enabled", true)
				end
				local billboard = visual.Billboard
				if not showBillboard then
					SetProp(visual, billboard, "Enabled", false)
					SetProp(visual, billboard, "Adornee", nil)
				else
					local subText = ""
					if entry.SubText ~= nil then
						subText = entry.SubText
					elseif style.Distance then
						local rounded = math.floor(entry.Distance)
						if visual.DistanceValue ~= rounded or visual.DistanceUnit ~= settings.DistanceUnit then
							visual.DistanceValue = rounded
							visual.DistanceUnit = settings.DistanceUnit
							visual.DistanceText = rounded .. " " .. settings.DistanceUnit
						end
						subText = visual.DistanceText
					end
					SetProp(visual, billboard, "Adornee", entry.Part)
					SetProp(visual, billboard, "Size", settings.BillboardSize)
					SetProp(visual, billboard, "StudsOffset", settings.BillboardOffset)
					SetProp(
						visual,
						visual.NameLabel,
						"Text",
						style.Name and (entry.Name or (entry.Player and entry.Player.DisplayName) or entry.Model.Name) or ""
					)
					SetProp(visual, visual.SubLabel, "Text", subText)
					SetProp(visual, visual.NameLabel, "TextColor3", entry.ResolvedText)
					SetProp(visual, visual.SubLabel, "TextColor3", entry.ResolvedText)
					SetProp(visual, billboard, "Enabled", true)
				end
			end
		end
	end)
	if not ok and err ~= self.LastError then
		self.LastError = err
		warn(tostring(err))
	end
end
function ESP:HideAll()
	if self.AllHidden then
		return
	end
	self.AllHidden = true
	self.DrawNeeded = false
	table.clear(self.Active)
	for _, entries in pairs(self.Entries) do
		for _, entry in pairs(entries) do
			entry.Visible = false
			FreeVisual(self, entry)
			FreeDraw(self, entry)
		end
	end
end
function ESP:SyncDraw()
	Refresh(self)
end
function ESP:SetGroup(name, props)
	local group = self.GroupSettings[name]
	if not group then
		group = {}
		self.GroupSettings[name] = group
	end
	for key, value in pairs(props) do
		group[key] = value
	end
	return group
end
function ESP:Add(key, opts)
	opts = opts or {}
	return Upsert(self, opts.Group or "Default", key, opts.Name, opts)
end
function ESP:Sync(group, map)
	self.Gen = self.Gen + 1
	local gen = self.Gen
	for key, value in pairs(map) do
		if type(value) == "table" then
			Upsert(self, group, key, value.Name, value)
		else
			Upsert(self, group, key, value, nil)
		end
	end
	local entries = self.Entries[group]
	if not entries then
		return
	end
	for key, entry in pairs(entries) do
		if entry.Gen ~= gen then
			KillEntry(self, entry)
			entries[key] = nil
		end
	end
end
function ESP:Has(key, group)
	local entries = self.Entries[group or "Default"]
	return entries ~= nil and entries[key] ~= nil
end
function ESP:Get(key, group)
	local entries = self.Entries[group or "Default"]
	return entries and entries[key]
end
function ESP:Remove(key, group)
	local entries = self.Entries[group or "Default"]
	local entry = entries and entries[key]
	if entry then
		KillEntry(self, entry)
		entries[key] = nil
	end
end
function ESP:Clear(group)
	if not group then
		for name in pairs(self.Entries) do
			self:Clear(name)
		end
		return
	end
	local entries = self.Entries[group]
	if not entries then
		return
	end
	for key, entry in pairs(entries) do
		KillEntry(self, entry)
		entries[key] = nil
	end
end
function ESP:TrackPlayers(state)
	if not state then
		if self.PlayerConnections then
			for _, connection in ipairs(self.PlayerConnections) do
				connection:Disconnect()
			end
			self.PlayerConnections = nil
		end
		self:Clear("Players")
		return
	end
	if self.PlayerConnections then
		return
	end
	local function Track(player)
		if player ~= LocalPlayer then
			Upsert(self, "Players", player, nil, { Player = player })
		end
	end
	self.PlayerConnections = {
		Players.PlayerAdded:Connect(Track),
		Players.PlayerRemoving:Connect(function(player)
			self:Remove(player, "Players")
		end),
	}
	for _, player in ipairs(Players:GetPlayers()) do
		Track(player)
	end
end
function ESP:Unload()
	if self.Unloaded then
		return
	end
	self.Unloaded = true
	if self.DrawConnection then
		self.DrawConnection:Disconnect()
		self.DrawConnection = nil
	end
	self:TrackPlayers(false)
	self:Clear()
	for _, set in ipairs(self.DrawPool) do
		RemoveSet(set)
	end
	table.clear(self.DrawPool)
	table.clear(self.VisualPool)
	table.clear(self.Active)
	Container:Destroy()
	if getgenv().yuririri == self then
		getgenv().yuririri = nil
	end
end
task.spawn(function()
	while not ESP.Unloaded do
		Refresh(ESP)
		task.wait(ESP.Store.UpdateInterval)
	end
end)
if Const.HasDrawing then
	ESP.DrawConnection = RunService.RenderStepped:Connect(function()
		local ok, err = pcall(function()
			if not ESP.DrawNeeded then
				return
			end
			local camera = workspace.CurrentCamera
			if not camera then
				return
			end
			local settings = ESP.Store
			local now = os.clock()
			for _, entry in ipairs(ESP.Active) do
				if not entry.Dead and entry.Style.Draw then
					repeat
						local set = entry.Draw
						if not set then
							set = table.remove(ESP.DrawPool)
							if not set then
								set = { All = {}, BoxLines = {}, SkeletonLines = {} }
							end
							entry.Draw = set
						end
						local model = entry.Model
						local boundsCFrame, boundsSize
						if model and model.Parent then
							if model:IsA("Model") then
								boundsCFrame, boundsSize = model:GetBoundingBox()
							elseif model:IsA("BasePart") then
								boundsCFrame, boundsSize = model.CFrame, model.Size
							end
						end
						if not boundsCFrame then
							HideSet(set)
							break
						end
						local cameraCFrame = camera.CFrame
						local cameraPosition = cameraCFrame.Position
						local cameraLook = cameraCFrame.LookVector
						local centerDepth = (boundsCFrame.Position - cameraPosition):Dot(cameraLook)
						if centerDepth + boundsSize.Magnitude / 2 <= Const.NearPlane then
							HideSet(set)
							break
						end
						local halfSize = boundsSize / 2
						for index = 1, #CORNER_SIGNS do
							local world = boundsCFrame * (CORNER_SIGNS[index] * halfSize)
							local depth = (world - cameraPosition):Dot(cameraLook)
							cornerWorld[index] = world
							cornerDepth[index] = depth
							cornerScreen[index] = depth > Const.NearPlane and Project(camera, world) or false
						end
						local minX, minY, maxX, maxY = math.huge, math.huge, -math.huge, -math.huge
						local edgeCount = 0
						for index = 1, #BOX_EDGES do
							local edge = BOX_EDGES[index]
							local indexA, indexB = edge[1], edge[2]
							local screenA = cornerScreen[indexA]
							local screenB = cornerScreen[indexB]
							local from, to
							if screenA and screenB then
								from, to = screenA, screenB
							elseif screenA or screenB then
								local frontIndex, backIndex = indexA, indexB
								if not screenA then
									frontIndex, backIndex = indexB, indexA
								end
								local frontDepth = cornerDepth[frontIndex]
								local backDepth = cornerDepth[backIndex]
								local fraction = (frontDepth - Const.NearPlane) / (frontDepth - backDepth)
								local frontWorld = cornerWorld[frontIndex]
								local crossing = frontWorld + (cornerWorld[backIndex] - frontWorld) * fraction
								from, to = cornerScreen[frontIndex], Project(camera, crossing)
							end
							if from then
								edgeCount = edgeCount + 1
								edgeFrom[edgeCount] = from
								edgeTo[edgeCount] = to
								minX = math.min(minX, from.X, to.X)
								minY = math.min(minY, from.Y, to.Y)
								maxX = math.max(maxX, from.X, to.X)
								maxY = math.max(maxY, from.Y, to.Y)
							end
						end
						if edgeCount == 0 then
							HideSet(set)
							break
						end
						screenBounds.minX, screenBounds.minY = minX, minY
						screenBounds.maxX, screenBounds.maxY = maxX, maxY
						local style = entry.Style
						local color = entry.Fill or settings.DefaultColor
						local segmentCount = 0
						if style.Box then
							if settings.BoxStyle == "ThreeD" then
								segmentCount = edgeCount
							elseif settings.BoxStyle == "Corner" then
								local cornerLength = (screenBounds.maxX - screenBounds.minX) * Const.CornerRatio
								local horizontal = Vector2.new(cornerLength, 0)
								local vertical = Vector2.new(0, cornerLength)
								local topLeft = Vector2.new(screenBounds.minX, screenBounds.minY)
								local topRight = Vector2.new(screenBounds.maxX, screenBounds.minY)
								local bottomLeft = Vector2.new(screenBounds.minX, screenBounds.maxY)
								local bottomRight = Vector2.new(screenBounds.maxX, screenBounds.maxY)
								SetSegment(1, topLeft, topLeft + horizontal)
								SetSegment(2, topLeft, topLeft + vertical)
								SetSegment(3, topRight, topRight - horizontal)
								SetSegment(4, topRight, topRight + vertical)
								SetSegment(5, bottomLeft, bottomLeft + horizontal)
								SetSegment(6, bottomLeft, bottomLeft - vertical)
								SetSegment(7, bottomRight, bottomRight - horizontal)
								SetSegment(8, bottomRight, bottomRight - vertical)
								segmentCount = 8
							else
								local topLeft = Vector2.new(screenBounds.minX, screenBounds.minY)
								local topRight = Vector2.new(screenBounds.maxX, screenBounds.minY)
								local bottomLeft = Vector2.new(screenBounds.minX, screenBounds.maxY)
								local bottomRight = Vector2.new(screenBounds.maxX, screenBounds.maxY)
								SetSegment(1, topLeft, topRight)
								SetSegment(2, topRight, bottomRight)
								SetSegment(3, bottomRight, bottomLeft)
								SetSegment(4, bottomLeft, topLeft)
								segmentCount = 4
							end
						end
						DrawLines(set, set.BoxLines, segmentCount, color, settings.BoxThickness)
						if not style.Tracer then
							if set.Tracer then
								Set(set.Tracer, "Visible", false)
							end
						else
							local tracer = set.Tracer
							if not tracer then
								tracer = MakeDrawing(set, "Line", {})
								set.Tracer = tracer
							end
							local viewport = camera.ViewportSize
							if settings.TracerOrigin == "Bottom" then
								tracer.From = Vector2.new(viewport.X / 2, viewport.Y)
							elseif settings.TracerOrigin == "Top" then
								tracer.From = Vector2.new(viewport.X / 2, 0)
							elseif settings.TracerOrigin == "Mouse" then
								tracer.From = UserInputService:GetMouseLocation()
							else
								tracer.From = Vector2.new(viewport.X / 2, viewport.Y / 2)
							end
							tracer.To = Vector2.new((screenBounds.minX + screenBounds.maxX) / 2, screenBounds.maxY)
							Set(tracer, "Color", color)
							Set(tracer, "Thickness", settings.TracerThickness)
							Set(tracer, "Visible", true)
						end
						local humanoid = entry.Humanoid
						if not (style.Health and humanoid) then
							if set.HealthFill then
								Set(set.HealthOutline, "Visible", false)
								Set(set.HealthFill, "Visible", false)
								Set(set.HealthText, "Visible", false)
							end
						else
							if not set.HealthFill then
								set.HealthOutline = MakeDrawing(set, "Square", {
									Filled = true,
									Color = Color3.new(0, 0, 0),
									Transparency = Const.OutlineAlpha,
								})
								set.HealthFill = MakeDrawing(set, "Square", { Filled = true })
								set.HealthText = MakeDrawing(set, "Text", { Center = true, Outline = true })
							end
							local percent = math.clamp(humanoid.Health / math.max(humanoid.MaxHealth, 1), 0, 1)
							local healthColor = Color3.fromRGB(255 * (1 - percent), 255 * percent, 0)
							local showBar = settings.HealthStyle ~= "Text"
							local showText = settings.HealthStyle ~= "Bar"
							local height = screenBounds.maxY - screenBounds.minY
							if showBar then
								local outlineX = screenBounds.minX - Const.BarGap
								local fillHeight = height * percent
								local outline = set.HealthOutline
								outline.Position = Vector2.new(outlineX, screenBounds.minY - Const.BarPad)
								outline.Size = Vector2.new(Const.BarWidth, height + Const.BarPad * 2)
								Set(outline, "Visible", true)
								local fill = set.HealthFill
								fill.Position = Vector2.new(outlineX + Const.BarPad, screenBounds.minY + height - fillHeight)
								fill.Size = Vector2.new(Const.BarWidth - Const.BarPad * 2, fillHeight)
								Set(fill, "Color", healthColor)
								Set(fill, "Visible", true)
							else
								Set(set.HealthOutline, "Visible", false)
								Set(set.HealthFill, "Visible", false)
							end
							if showText then
								local gap = showBar and Const.TextGapBar or Const.TextGap
								local text = set.HealthText
								Set(text, "Text", math.floor(humanoid.Health) .. settings.HealthTextSuffix)
								Set(text, "Size", settings.TextSize)
								Set(text, "Font", settings.TextFont)
								Set(text, "Color", healthColor)
								text.Position = Vector2.new(
									screenBounds.minX - gap,
									screenBounds.minY + height / 2 - settings.TextSize / 2
								)
								Set(text, "Visible", true)
							else
								Set(set.HealthText, "Visible", false)
							end
						end
						local skeletonCount = 0
						if style.Skeleton then
							local bones
							if entry.BonesModel == model and (entry.BonesComplete or now < entry.NextBonesCheck) then
								bones = entry.Bones
							else
								local complete
								if not model:IsA("Model") then
									bones, complete = {}, true
								else
									local template
									if model:FindFirstChild("UpperTorso") then
										template = R15_BONES
									elseif model:FindFirstChild("Torso") then
										template = R6_BONES
									end
									if not template then
										bones, complete = {}, false
									else
										bones = {}
										for _, names in ipairs(template) do
											local first = model:FindFirstChild(names[1])
											local second = model:FindFirstChild(names[2])
											if first and second then
												table.insert(bones, { first, second })
											end
										end
										complete = #bones == #template
									end
								end
								entry.Bones, entry.BonesComplete = bones, complete
								entry.BonesModel = model
								entry.NextBonesCheck = now + Const.BonesRecheck
							end
							for _, pair in ipairs(bones) do
								local first, second = pair[1], pair[2]
								if first.Parent and second.Parent then
									local a = camera:WorldToViewportPoint(first.Position)
									local b = camera:WorldToViewportPoint(second.Position)
									if a.Z > 0 and b.Z > 0 then
										skeletonCount = skeletonCount + 1
										SetSegment(skeletonCount, Vector2.new(a.X, a.Y), Vector2.new(b.X, b.Y))
									end
								end
							end
						end
						DrawLines(
							set,
							set.SkeletonLines,
							skeletonCount,
							settings.SkeletonColor or color,
							settings.SkeletonThickness
						)
					until true
				end
			end
		end)
		if not ok and err ~= ESP.LastDrawError then
			ESP.LastDrawError = err
			warn(tostring(err))
		end
	end)
end
getgenv().yuririri = ESP
return ESP
