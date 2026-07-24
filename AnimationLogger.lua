local Closed = false
local Connections = {}

local AnimationLogger = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local MainCorner = Instance.new("UICorner")
local MainStroke = Instance.new("UIStroke")
local GlowFrame = Instance.new("Frame")
local GlowCorner = Instance.new("UICorner")
local InnerGlow = Instance.new("Frame")
local InnerGlowCorner = Instance.new("UICorner")
local TopBar = Instance.new("Frame")
local TopBarCorner = Instance.new("UICorner")
local TopBarStroke = Instance.new("UIStroke")
local TitleLabel = Instance.new("TextLabel")
local CloseButton = Instance.new("TextButton")
local CloseButtonCorner = Instance.new("UICorner")
local CloseLabel = Instance.new("TextLabel")
local MinButton = Instance.new("TextButton")
local MinButtonCorner = Instance.new("UICorner")
local MinLabel = Instance.new("TextLabel")
local Content = Instance.new("Frame")
local LeftPanel = Instance.new("Frame")
local LeftPanelCorner = Instance.new("UICorner")
local LeftPanelStroke = Instance.new("UIStroke")
local PanelTitle = Instance.new("TextLabel")
local PanelCount = Instance.new("TextLabel")
local ListContainer = Instance.new("Frame")
local ListScroller = Instance.new("ScrollingFrame")
local ListLayout = Instance.new("UIListLayout")
local ListPadding = Instance.new("UIPadding")
local RightPanel = Instance.new("Frame")
local RightPanelPadding = Instance.new("UIPadding")
local LogsScroller = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local LogsLayout = Instance.new("UIListLayout")
local LogsPadding = Instance.new("UIPadding")
local EmptyState = Instance.new("Frame")
local EmptyLabel = Instance.new("TextLabel")

AnimationLogger.Name = "AnimationLogger"
AnimationLogger.Parent = game:GetService("CoreGui")
AnimationLogger.ResetOnSpawn = false

MainFrame.Parent = AnimationLogger
MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
MainFrame.BackgroundColor3 = Color3.fromRGB(10, 10, 12)
MainFrame.ClipsDescendants = true
MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
MainFrame.Size = UDim2.new(0, 960, 0, 640)
MainCorner.CornerRadius = UDim.new(0, 14)
MainCorner.Parent = MainFrame
MainStroke.Color = Color3.fromRGB(55, 55, 70)
MainStroke.Thickness = 3
MainStroke.Parent = MainFrame

GlowFrame.Parent = MainFrame
GlowFrame.AnchorPoint = Vector2.new(0.5, 0.5)
GlowFrame.BackgroundColor3 = Color3.fromRGB(139, 92, 246)
GlowFrame.BackgroundTransparency = 0.920
GlowFrame.BorderSizePixel = 0
GlowFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
GlowFrame.Size = UDim2.new(1.01999998, 0, 1.01999998, 0)
GlowFrame.ZIndex = -1
GlowCorner.CornerRadius = UDim.new(0, 20)
GlowCorner.Parent = GlowFrame

InnerGlow.Parent = MainFrame
InnerGlow.AnchorPoint = Vector2.new(0.5, 0.5)
InnerGlow.BackgroundColor3 = Color3.fromRGB(139, 92, 246)
InnerGlow.BackgroundTransparency = 0.970
InnerGlow.BorderSizePixel = 0
InnerGlow.Position = UDim2.new(0.5, 0, 0.5, 0)
InnerGlow.Size = UDim2.new(0.949999988, 0, 0.949999988, 0)
InnerGlow.ZIndex = 0
InnerGlowCorner.CornerRadius = UDim.new(0, 100)
InnerGlowCorner.Parent = InnerGlow

TopBar.Parent = MainFrame
TopBar.BackgroundColor3 = Color3.fromRGB(18, 18, 22)
TopBar.ClipsDescendants = true
TopBar.Size = UDim2.new(1, 0, -0.00499999989, 52)
TopBarCorner.CornerRadius = UDim.new(0, 14)
TopBarCorner.Parent = TopBar
TopBarStroke.Color = Color3.fromRGB(55, 55, 70)
TopBarStroke.Thickness = 2
TopBarStroke.Parent = TopBar

TitleLabel.Parent = TopBar
TitleLabel.BackgroundTransparency = 1.000
TitleLabel.Position = UDim2.new(0, 20, 0, 0)
TitleLabel.Size = UDim2.new(0, 220, 1, 0)
TitleLabel.Font = Enum.Font.GothamBold
TitleLabel.Text = "Animation Logger"
TitleLabel.TextColor3 = Color3.fromRGB(237, 237, 245)
TitleLabel.TextSize = 19.000
TitleLabel.TextXAlignment = Enum.TextXAlignment.Left

CloseButton.Parent = TopBar
CloseButton.AnchorPoint = Vector2.new(1, 0.5)
CloseButton.BackgroundColor3 = Color3.fromRGB(18, 18, 22)
CloseButton.BackgroundTransparency = 1.000
CloseButton.Position = UDim2.new(1, -12, 0.5, 0)
CloseButton.Size = UDim2.new(0, 38, 0, 38)
CloseButton.Text = ""
CloseButtonCorner.Parent = CloseButton

CloseLabel.Parent = CloseButton
CloseLabel.BackgroundTransparency = 1.000
CloseLabel.Size = UDim2.new(1, 0, 1, 0)
CloseLabel.Font = Enum.Font.GothamMedium
CloseLabel.Text = "X"
CloseLabel.TextColor3 = Color3.fromRGB(161, 161, 180)
CloseLabel.TextSize = 20.000

MinButton.Parent = TopBar
MinButton.AnchorPoint = Vector2.new(1, 0.5)
MinButton.BackgroundColor3 = Color3.fromRGB(18, 18, 22)
MinButton.BackgroundTransparency = 1.000
MinButton.Position = UDim2.new(1, -54, 0.5, 0)
MinButton.Size = UDim2.new(0, 38, 0, 38)
MinButton.Text = ""
MinButtonCorner.Parent = MinButton

MinLabel.Parent = MinButton
MinLabel.BackgroundTransparency = 1.000
MinLabel.Size = UDim2.new(1, 0, 1, 0)
MinLabel.Font = Enum.Font.GothamMedium
MinLabel.Text = "−"
MinLabel.TextColor3 = Color3.fromRGB(161, 161, 180)
MinLabel.TextSize = 20.000

Content.Parent = MainFrame
Content.BackgroundTransparency = 1.000
Content.Position = UDim2.new(0, 0, 0, 52)
Content.Size = UDim2.new(1, 0, 1, -52)

LeftPanel.Parent = Content
LeftPanel.BackgroundColor3 = Color3.fromRGB(18, 18, 22)
LeftPanel.ClipsDescendants = true
LeftPanel.Size = UDim2.new(0, 290, 1, 0)
LeftPanelCorner.CornerRadius = UDim.new(0, 10)
LeftPanelCorner.Parent = LeftPanel
LeftPanelStroke.Color = Color3.fromRGB(55, 55, 70)
LeftPanelStroke.Thickness = 2
LeftPanelStroke.Parent = LeftPanel

PanelTitle.Parent = LeftPanel
PanelTitle.BackgroundTransparency = 1.000
PanelTitle.Position = UDim2.new(0, 16, 0, 0)
PanelTitle.Size = UDim2.new(1, 0, 0, 44)
PanelTitle.Font = Enum.Font.GothamBold
PanelTitle.Text = "Animations"
PanelTitle.TextColor3 = Color3.fromRGB(237, 237, 245)
PanelTitle.TextSize = 17.000
PanelTitle.TextXAlignment = Enum.TextXAlignment.Left

PanelCount.Parent = LeftPanel
PanelCount.AnchorPoint = Vector2.new(1, 0.5)
PanelCount.BackgroundTransparency = 1.000
PanelCount.Position = UDim2.new(1, -16, 22, 0)
PanelCount.Font = Enum.Font.GothamMedium
PanelCount.Text = "0"
PanelCount.TextColor3 = Color3.fromRGB(161, 161, 180)
PanelCount.TextSize = 13.000
PanelCount.TextXAlignment = Enum.TextXAlignment.Right

ListContainer.Parent = LeftPanel
ListContainer.BackgroundTransparency = 1.000
ListContainer.Position = UDim2.new(0, 0, 0, 44)
ListContainer.Size = UDim2.new(1, 0, 1, -44)

ListScroller.Parent = ListContainer
ListScroller.BackgroundTransparency = 1.000
ListScroller.Size = UDim2.new(1, 0, 1, 0)
ListScroller.CanvasSize = UDim2.new(0, 0, 0, 0)
ListScroller.ScrollBarThickness = 3
ListScroller.AutomaticCanvasSize = Enum.AutomaticSize.Y
ListLayout.Parent = ListScroller
ListLayout.Padding = UDim.new(0, 4)
ListPadding.Parent = ListScroller
ListPadding.PaddingBottom = UDim.new(0, 8)
ListPadding.PaddingLeft = UDim.new(0, 8)
ListPadding.PaddingRight = UDim.new(0, 8)
ListPadding.PaddingTop = UDim.new(0, 8)

RightPanel.Parent = Content
RightPanel.BackgroundTransparency = 1.000
RightPanel.Position = UDim2.new(0, 298, 0, 0)
RightPanel.Size = UDim2.new(1, -306, 1, 0)

LogsScroller.Parent = RightPanel
LogsScroller.BackgroundTransparency = 1.000
LogsScroller.Size = UDim2.new(1, 0, 1, 0)
LogsScroller.CanvasSize = UDim2.new(0, 0, 0, 0)
LogsScroller.ScrollBarThickness = 3
LogsScroller.HorizontalScrollBarInset = Enum.ScrollBarInset.None
LogsScroller.VerticalScrollBarInset = Enum.ScrollBarInset.None

LogsLayout.Name = "LogsLayout"
LogsLayout.Padding = UDim.new(0, 10)
LogsLayout.FillDirection = Enum.FillDirection.Vertical
LogsLayout.SortOrder = Enum.SortOrder.LayoutOrder
LogsLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
LogsLayout.VerticalAlignment = Enum.VerticalAlignment.Top
LogsLayout.HorizontalFlex = Enum.UIFlexAlignment.None
LogsLayout.VerticalFlex = Enum.UIFlexAlignment.None
LogsLayout.ItemLineAlignment = Enum.ItemLineAlignment.Center
LogsLayout.Parent = LogsScroller

LogsPadding.Parent = LogsScroller
LogsPadding.PaddingBottom = UDim.new(0, 0)
LogsPadding.PaddingLeft = UDim.new(0, 0)
LogsPadding.PaddingRight = UDim.new(0, 0)
LogsPadding.PaddingTop = UDim.new(0, 0)

EmptyState.Parent = LogsScroller
EmptyState.BackgroundTransparency = 1.000
EmptyState.Size = UDim2.new(1, 0, 0, 200)

EmptyLabel.Parent = EmptyState
EmptyLabel.AnchorPoint = Vector2.new(0.5, 0.5)
EmptyLabel.BackgroundTransparency = 1.000
EmptyLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
EmptyLabel.Size = UDim2.new(1, 0, 0, 0)
EmptyLabel.Font = Enum.Font.GothamMedium
EmptyLabel.Text = "+ No animations logged yet"
EmptyLabel.TextColor3 = Color3.fromRGB(161, 161, 180)
EmptyLabel.TextSize = 17.000

local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")

local Colors = {
	Bg = Color3.fromRGB(10,10,12),
	Surface = Color3.fromRGB(18,18,22),
	SurfaceHover = Color3.fromRGB(28,28,34),
	Border = Color3.fromRGB(55,55,70),
	BorderLight = Color3.fromRGB(65,65,80),
	Accent = Color3.fromRGB(139,92,246),
	Text = Color3.fromRGB(237,237,245),
	TextDim = Color3.fromRGB(161,161,180),
	TextDark = Color3.fromRGB(113,113,130),
}

local function AddConnection(Event, Callback)
	local Connection = Event:Connect(Callback)
	table.insert(Connections, Connection)
	return Connection
end

AddConnection(CloseButton.MouseEnter, function()
	TweenService:Create(CloseButton, TweenInfo.new(0.15), {BackgroundTransparency = 0.9}):Play()
	TweenService:Create(CloseLabel, TweenInfo.new(0.15), {TextColor3 = Colors.Text}):Play()
end)

AddConnection(CloseButton.MouseLeave, function()
	TweenService:Create(CloseButton, TweenInfo.new(0.15), {BackgroundTransparency = 1}):Play()
	TweenService:Create(CloseLabel, TweenInfo.new(0.15), {TextColor3 = Colors.TextDim}):Play()
end)

AddConnection(CloseButton.MouseButton1Click, function()
	AnimationLogger.Enabled = false
end)

AddConnection(MinButton.MouseEnter, function()
	TweenService:Create(MinButton, TweenInfo.new(0.15), {BackgroundTransparency = 0.9}):Play()
	TweenService:Create(MinLabel, TweenInfo.new(0.15), {TextColor3 = Colors.Text}):Play()
end)

AddConnection(MinButton.MouseLeave, function()
	TweenService:Create(MinButton, TweenInfo.new(0.15), {BackgroundTransparency = 1}):Play()
	TweenService:Create(MinLabel, TweenInfo.new(0.15), {TextColor3 = Colors.TextDim}):Play()
end)

AddConnection(MinButton.MouseButton1Click, function()
	MainFrame.Visible = not MainFrame.Visible
end)

local function SetupDrag()
	local Dragging, StartPos, StartMouse
	AddConnection(MainFrame.InputBegan, function(Input)
		if Input.UserInputType == Enum.UserInputType.MouseButton1 then
			Dragging = true
			StartPos = MainFrame.Position
			StartMouse = Input.Position
		end
	end)
	AddConnection(MainFrame.InputEnded, function(Input)
		if Input.UserInputType == Enum.UserInputType.MouseButton1 then
			Dragging = false
		end
	end)
	AddConnection(UserInputService.InputChanged, function(Input)
		if Dragging and Input.UserInputType == Enum.UserInputType.MouseMovement then
			local Delta = Input.Position - StartMouse
			MainFrame.Position = UDim2.new(StartPos.X.Scale, StartPos.X.Offset + Delta.X, StartPos.Y.Scale, StartPos.Y.Offset + Delta.Y)
		end
	end)
end
SetupDrag()

AddConnection(UserInputService.InputBegan, function(Input)
	if Input.KeyCode == Enum.KeyCode.F1 then
		AnimationLogger.Enabled = not AnimationLogger.Enabled
	elseif Input.KeyCode == Enum.KeyCode.F2 then
		for _, conn in pairs(Connections) do
			conn:Disconnect()
		end
		AnimationLogger:Destroy()
		Closed = true
	end
end)

local AnimationLogs = {}
local SelectedLog = nil
local ListItems = {}

function UpdateCanvas()
	local TotalHeight = 0
	for _, child in pairs(LogsScroller:GetChildren()) do
		if child:IsA("Frame") and child ~= EmptyState and child ~= LogsLayout and child ~= LogsPadding then
			TotalHeight = TotalHeight + child.AbsoluteSize.Y + 8
		end
	end
	LogsScroller.CanvasSize = UDim2.new(0, 0, 0, TotalHeight + 20)
end

function CreateListItem(Id, Log)
	local Btn = Instance.new("TextButton")
	Btn.Parent = ListScroller
	Btn.Size = UDim2.new(1,0,0,44)
	Btn.BackgroundColor3 = Colors.Surface
	Btn.BackgroundTransparency = 1
	Btn.Text = ""
	Btn.ClipsDescendants = true
	local Corner = Instance.new("UICorner")
	Corner.CornerRadius = UDim.new(0,8)
	Corner.Parent = Btn

	local HoverBg = Instance.new("Frame")
	HoverBg.Parent = Btn
	HoverBg.Size = UDim2.new(1,0,1,0)
	HoverBg.BackgroundColor3 = Colors.SurfaceHover
	HoverBg.BackgroundTransparency = 1
	local HCorner = Instance.new("UICorner")
	HCorner.CornerRadius = UDim.new(0,8)
	HCorner.Parent = HoverBg

	local Name = Instance.new("TextLabel")
	Name.Parent = Btn
	Name.Position = UDim2.new(0,16,0,0)
	Name.Size = UDim2.new(1,-80,1,0)
	Name.Text = Id
	Name.TextColor3 = Colors.Text
	Name.TextSize = 14
	Name.TextXAlignment = Enum.TextXAlignment.Left
	Name.Font = Enum.Font.GothamMedium
	Name.BackgroundTransparency = 1

	local Count = Instance.new("TextLabel")
	Count.Parent = Btn
	Count.AnchorPoint = Vector2.new(1,0.5)
	Count.Position = UDim2.new(1,-12,0.5,0)
	Count.Size = UDim2.new(0,36,0,24)
	Count.Text = "0"
	Count.TextColor3 = Colors.TextDim
	Count.TextSize = 12
	Count.TextXAlignment = Enum.TextXAlignment.Center
	Count.Font = Enum.Font.GothamBold
	Count.BackgroundColor3 = Colors.Bg
	Count.BackgroundTransparency = 0.5
	local CCorner = Instance.new("UICorner")
	CCorner.CornerRadius = UDim.new(0,12)
	CCorner.Parent = Count

	local AccentBar = Instance.new("Frame")
	AccentBar.Parent = Btn
	AccentBar.AnchorPoint = Vector2.new(0,0.5)
	AccentBar.Position = UDim2.new(0,0,0.5,0)
	AccentBar.Size = UDim2.new(0,3,0,0.6)
	AccentBar.BackgroundColor3 = Colors.Accent
	AccentBar.BackgroundTransparency = 1
	AccentBar.BorderSizePixel = 0
	local ABarCorner = Instance.new("UICorner")
	ABarCorner.CornerRadius = UDim.new(0,2)
	ABarCorner.Parent = AccentBar

	AddConnection(Btn.MouseEnter, function()
		TweenService:Create(HoverBg, TweenInfo.new(0.15), {BackgroundTransparency = 0}):Play()
	end)

	AddConnection(Btn.MouseLeave, function()
		TweenService:Create(HoverBg, TweenInfo.new(0.15), {BackgroundTransparency = 1}):Play()
	end)

	AddConnection(Btn.MouseButton1Click, function()
		SelectLog(Id)
	end)

	local CopyButton = Instance.new("TextButton")
	CopyButton.Parent = Btn
	CopyButton.AnchorPoint = Vector2.new(1, 0.5)
	CopyButton.Position = UDim2.new(1, -50, 0.5, 0)
	CopyButton.Size = UDim2.new(0, 30, 0, 24)
	CopyButton.BackgroundColor3 = Colors.SurfaceHover
	CopyButton.BackgroundTransparency = 0.5
	CopyButton.Text = "📋"
	CopyButton.TextSize = 14
	CopyButton.Font = Enum.Font.GothamMedium
	CopyButton.TextColor3 = Colors.TextDim
	local CopyCorner = Instance.new("UICorner")
	CopyCorner.CornerRadius = UDim.new(0, 4)
	CopyCorner.Parent = CopyButton

	CopyButton.MouseEnter:Connect(function()
		TweenService:Create(CopyButton, TweenInfo.new(0.15), {BackgroundTransparency = 0}):Play()
		TweenService:Create(CopyButton, TweenInfo.new(0.15), {TextColor3 = Colors.Text}):Play()
	end)

	CopyButton.MouseLeave:Connect(function()
		TweenService:Create(CopyButton, TweenInfo.new(0.15), {BackgroundTransparency = 0.5}):Play()
		TweenService:Create(CopyButton, TweenInfo.new(0.15), {TextColor3 = Colors.TextDim}):Play()
	end)

	CopyButton.MouseButton1Click:Connect(function()
		local LogData = AnimationLogs[Id]
		if LogData and #LogData.Data > 0 then
			local CopyText = ""
			for i, data in pairs(LogData.Data) do
				CopyText = CopyText .. string.format("Animation: %s\n", Id)
				for k, v in pairs(data) do
					CopyText = CopyText .. string.format("  %s: %s\n", k, tostring(v))
				end
				CopyText = CopyText .. "\n"
			end
			local success, err = pcall(setclipboard, CopyText)
			if success then
				local oldText = CopyButton.Text
				CopyButton.Text = "✓"
				task.wait(0.5)
				CopyButton.Text = oldText
			end
		end
	end)

	return {
		Button = Btn,
		Name = Name,
		Count = Count,
		AccentBar = AccentBar,
		CopyButton = CopyButton,
		Update = function(NewCount) Count.Text = tostring(NewCount) end,
		Select = function(Selected)
			local Alpha = Selected and 0 or 1
			TweenService:Create(AccentBar, TweenInfo.new(0.2), {BackgroundTransparency = Alpha}):Play()
			TweenService:Create(Btn, TweenInfo.new(0.2), {BackgroundTransparency = Selected and 0.9 or 1}):Play()
		end
	}
end

function CreateLogEntry(Data, Index)
	local FrameLog = Instance.new("Frame")
	FrameLog.Parent = LogsScroller
	FrameLog.Size = UDim2.new(1, -4, 0, 0)
	FrameLog.AutomaticSize = Enum.AutomaticSize.Y
	FrameLog.BackgroundColor3 = Colors.Surface
	FrameLog.ClipsDescendants = false
	FrameLog.Position = UDim2.new(0, 2, 0, 4)

	local Corner = Instance.new("UICorner")
	Corner.CornerRadius = UDim.new(0, 8)
	Corner.Parent = FrameLog

	local Stroke = Instance.new("UIStroke")
	Stroke.Color = Color3.fromRGB(55, 55, 70)
	Stroke.Thickness = 2
	Stroke.Parent = FrameLog
	Stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

	local ContentArea = Instance.new("Frame")
	ContentArea.Parent = FrameLog
	ContentArea.Size = UDim2.new(1, 0, 0, 0)
	ContentArea.AutomaticSize = Enum.AutomaticSize.Y
	ContentArea.BackgroundTransparency = 1

	local CPad = Instance.new("UIPadding")
	CPad.Parent = ContentArea
	CPad.PaddingLeft = UDim.new(0, 12)
	CPad.PaddingRight = UDim.new(0, 12)
	CPad.PaddingTop = UDim.new(0, 10)
	CPad.PaddingBottom = UDim.new(0, 10)

	local CLayout = Instance.new("UIListLayout")
	CLayout.Parent = ContentArea
	CLayout.Padding = UDim.new(0, 4)
	CLayout.FillDirection = Enum.FillDirection.Vertical
	CLayout.HorizontalAlignment = Enum.HorizontalAlignment.Left

	local TopRow = Instance.new("Frame")
	TopRow.Parent = ContentArea
	TopRow.Size = UDim2.new(1, 0, 0, 0)
	TopRow.AutomaticSize = Enum.AutomaticSize.Y
	TopRow.BackgroundTransparency = 1

	local TLayout = Instance.new("UIListLayout")
	TLayout.Parent = TopRow
	TLayout.FillDirection = Enum.FillDirection.Horizontal
	TLayout.HorizontalAlignment = Enum.HorizontalAlignment.Left
	TLayout.VerticalAlignment = Enum.VerticalAlignment.Center
	TLayout.Padding = UDim.new(0, 8)

	local IndexLabel = Instance.new("TextLabel")
	IndexLabel.Parent = TopRow
	IndexLabel.Size = UDim2.new(0, 0, 0, 0)
	IndexLabel.AutomaticSize = Enum.AutomaticSize.XY
	IndexLabel.Text = "#" .. tostring(Index)
	IndexLabel.TextColor3 = Colors.Accent
	IndexLabel.TextSize = 13
	IndexLabel.TextXAlignment = Enum.TextXAlignment.Left
	IndexLabel.Font = Enum.Font.GothamBold
	IndexLabel.BackgroundTransparency = 1

	local Time = Instance.new("TextLabel")
	Time.Parent = TopRow
	Time.Size = UDim2.new(0, 0, 0, 0)
	Time.AutomaticSize = Enum.AutomaticSize.XY
	Time.Text = os.date("%H:%M:%S", Data.Time or os.time())
	Time.TextColor3 = Colors.TextDim
	Time.TextSize = 12
	Time.TextXAlignment = Enum.TextXAlignment.Left
	Time.Font = Enum.Font.GothamMedium
	Time.BackgroundTransparency = 1

	local CopyLogButton = Instance.new("TextButton")
	CopyLogButton.Parent = TopRow
	CopyLogButton.AnchorPoint = Vector2.new(1, 0.5)
	CopyLogButton.Position = UDim2.new(1, 0, 0.5, 0)
	CopyLogButton.Size = UDim2.new(0, 28, 0, 24)
	CopyLogButton.BackgroundColor3 = Colors.SurfaceHover
	CopyLogButton.BackgroundTransparency = 0.5
	CopyLogButton.Text = "📋"
	CopyLogButton.TextSize = 12
	CopyLogButton.Font = Enum.Font.GothamMedium
	CopyLogButton.TextColor3 = Colors.TextDim
	local CopyLogCorner = Instance.new("UICorner")
	CopyLogCorner.CornerRadius = UDim.new(0, 4)
	CopyLogCorner.Parent = CopyLogButton

	CopyLogButton.MouseEnter:Connect(function()
		TweenService:Create(CopyLogButton, TweenInfo.new(0.15), {BackgroundTransparency = 0}):Play()
		TweenService:Create(CopyLogButton, TweenInfo.new(0.15), {TextColor3 = Colors.Text}):Play()
	end)

	CopyLogButton.MouseLeave:Connect(function()
		TweenService:Create(CopyLogButton, TweenInfo.new(0.15), {BackgroundTransparency = 0.5}):Play()
		TweenService:Create(CopyLogButton, TweenInfo.new(0.15), {TextColor3 = Colors.TextDim}):Play()
	end)

	CopyLogButton.MouseButton1Click:Connect(function()
		local CopyText = string.format("Animation #%d\nTime: %s\nSource: %s\n", Index, os.date("%H:%M:%S", Data.Time or os.time()), Data.Source or "Unknown")
		for k, v in pairs(Data) do
			if k ~= "Time" and k ~= "Source" then
				CopyText = CopyText .. string.format("  %s: %s\n", k, tostring(v))
			end
		end
		local success, err = pcall(setclipboard, CopyText)
		if success then
			local oldText = CopyLogButton.Text
			CopyLogButton.Text = "✓"
			task.wait(0.5)
			CopyLogButton.Text = oldText
		end
	end)

	local ParamsRow = Instance.new("Frame")
	ParamsRow.Parent = ContentArea
	ParamsRow.Size = UDim2.new(1, 0, 0, 0)
	ParamsRow.AutomaticSize = Enum.AutomaticSize.Y
	ParamsRow.BackgroundTransparency = 1

	local PLayout = Instance.new("UIListLayout")
	PLayout.Parent = ParamsRow
	PLayout.Padding = UDim.new(0, 4)
	PLayout.FillDirection = Enum.FillDirection.Vertical
	PLayout.HorizontalAlignment = Enum.HorizontalAlignment.Left

	local Pairs = {}
	for k, v in pairs(Data) do
		if k ~= "Time" and k ~= "Source" then
			table.insert(Pairs, {Key = k, Value = v})
		end
	end

	table.sort(Pairs, function(a, b) return a.Key < b.Key end)

	for _, pair in pairs(Pairs) do
		local Item = Instance.new("Frame")
		Item.Parent = ParamsRow
		Item.Size = UDim2.new(1, 0, 0, 0)
		Item.AutomaticSize = Enum.AutomaticSize.Y
		Item.BackgroundColor3 = Colors.Bg
		Item.BackgroundTransparency = 0.4
		Item.ClipsDescendants = true

		local ICorner = Instance.new("UICorner")
		ICorner.CornerRadius = UDim.new(0, 6)
		ICorner.Parent = Item

		local IStroke = Instance.new("UIStroke")
		IStroke.Color = Colors.BorderLight
		IStroke.Thickness = 1
		IStroke.Parent = Item

		local IPad = Instance.new("UIPadding")
		IPad.Parent = Item
		IPad.PaddingLeft = UDim.new(0, 10)
		IPad.PaddingRight = UDim.new(0, 10)
		IPad.PaddingTop = UDim.new(0, 4)
		IPad.PaddingBottom = UDim.new(0, 4)

		local ILayout = Instance.new("UIListLayout")
		ILayout.Parent = Item
		ILayout.FillDirection = Enum.FillDirection.Horizontal
		ILayout.HorizontalAlignment = Enum.HorizontalAlignment.Left
		ILayout.VerticalAlignment = Enum.VerticalAlignment.Center
		ILayout.Padding = UDim.new(0, 8)

		local KeyLabel = Instance.new("TextLabel")
		KeyLabel.Parent = Item
		KeyLabel.Size = UDim2.new(0, 0, 0, 0)
		KeyLabel.AutomaticSize = Enum.AutomaticSize.XY
		KeyLabel.Text = tostring(pair.Key) .. ":"
		KeyLabel.TextColor3 = Colors.TextDark
		KeyLabel.TextSize = 11
		KeyLabel.TextXAlignment = Enum.TextXAlignment.Left
		KeyLabel.Font = Enum.Font.GothamMedium
		KeyLabel.BackgroundTransparency = 1

		local ValueLabel = Instance.new("TextLabel")
		ValueLabel.Parent = Item
		ValueLabel.Size = UDim2.new(0, 0, 0, 0)
		ValueLabel.AutomaticSize = Enum.AutomaticSize.XY
		ValueLabel.Text = tostring(pair.Value)
		ValueLabel.TextColor3 = Colors.Text
		ValueLabel.TextSize = 12
		ValueLabel.TextXAlignment = Enum.TextXAlignment.Left
		ValueLabel.Font = Enum.Font.GothamBold
		ValueLabel.BackgroundTransparency = 1
	end

	-- Добавляем Source как отдельный блок сверху
	local SourceItem = Instance.new("Frame")
	SourceItem.Parent = ParamsRow
	SourceItem.Size = UDim2.new(1, 0, 0, 0)
	SourceItem.AutomaticSize = Enum.AutomaticSize.Y
	SourceItem.BackgroundColor3 = Colors.Bg
	SourceItem.BackgroundTransparency = 0.4
	SourceItem.ClipsDescendants = true
	SourceItem.LayoutOrder = -1

	local SourceCorner = Instance.new("UICorner")
	SourceCorner.CornerRadius = UDim.new(0, 6)
	SourceCorner.Parent = SourceItem

	local SourceStroke = Instance.new("UIStroke")
	SourceStroke.Color = Colors.Accent
	SourceStroke.Thickness = 1
	SourceStroke.Parent = SourceItem

	local SourcePad = Instance.new("UIPadding")
	SourcePad.Parent = SourceItem
	SourcePad.PaddingLeft = UDim.new(0, 10)
	SourcePad.PaddingRight = UDim.new(0, 10)
	SourcePad.PaddingTop = UDim.new(0, 4)
	SourcePad.PaddingBottom = UDim.new(0, 4)

	local SourceLayout = Instance.new("UIListLayout")
	SourceLayout.Parent = SourceItem
	SourceLayout.FillDirection = Enum.FillDirection.Horizontal
	SourceLayout.HorizontalAlignment = Enum.HorizontalAlignment.Left
	SourceLayout.VerticalAlignment = Enum.VerticalAlignment.Center
	SourceLayout.Padding = UDim.new(0, 8)

	local SourceKey = Instance.new("TextLabel")
	SourceKey.Parent = SourceItem
	SourceKey.Size = UDim2.new(0, 0, 0, 0)
	SourceKey.AutomaticSize = Enum.AutomaticSize.XY
	SourceKey.Text = "Source:"
	SourceKey.TextColor3 = Colors.Accent
	SourceKey.TextSize = 11
	SourceKey.TextXAlignment = Enum.TextXAlignment.Left
	SourceKey.Font = Enum.Font.GothamBold
	SourceKey.BackgroundTransparency = 1

	local SourceValue = Instance.new("TextLabel")
	SourceValue.Parent = SourceItem
	SourceValue.Size = UDim2.new(0, 0, 0, 0)
	SourceValue.AutomaticSize = Enum.AutomaticSize.XY
	SourceValue.Text = Data.Source or "Unknown"
	SourceValue.TextColor3 = Colors.Text
	SourceValue.TextSize = 12
	SourceValue.TextXAlignment = Enum.TextXAlignment.Left
	SourceValue.Font = Enum.Font.GothamMedium
	SourceValue.BackgroundTransparency = 1

	task.defer(UpdateCanvas)
	return FrameLog
end

function SelectLog(Id)
	local Log = AnimationLogs[Id]
	if not Log then return end
	SelectedLog = Id
	for _, item in pairs(ListItems) do
		item.Select(item.Id == Id)
	end
	for _, child in pairs(LogsScroller:GetChildren()) do
		if child ~= EmptyState and child ~= LogsLayout and child ~= LogsPadding then
			child:Destroy()
		end
	end
	if #Log.Data == 0 then
		EmptyState.Visible = true
		UpdateCanvas()
		return
	end
	EmptyState.Visible = false
	for i = #Log.Data, 1, -1 do
		CreateLogEntry(Log.Data[i], i)
	end
	task.wait(0.05)
	UpdateCanvas()
end

function LogAnimation(Id, Data)
	if not AnimationLogs[Id] then
		AnimationLogs[Id] = { Data = {}, Item = nil }
		local Item = CreateListItem(Id, AnimationLogs[Id])
		Item.Id = Id
		AnimationLogs[Id].Item = Item
	end
	local Log = AnimationLogs[Id]
	table.insert(Log.Data, Data)
	if Log.Item then
		Log.Item.Update(#Log.Data)
	end
	PanelCount.Text = tostring(#AnimationLogs)
	if SelectedLog == Id then
		SelectLog(Id)
	end
	UpdateCanvas()
end

task.spawn(function()
	local LoggedTracks = {} -- Кэш уже залогированных треков
	local TrackCache = {} -- Кэш для отслеживания изменений
	
	while not Closed do
		task.wait(0.75) -- Увеличил интервал до 1.5 секунд
		
		local plr = game.Players.LocalPlayer
		if not plr then break end
		
		local char = plr.Character
		if not char then 
			char = plr.CharacterAdded:Wait() 
		end
		
		local hum = char:FindFirstChild("Humanoid")
		if not hum then continue end
		
		local animator = hum:FindFirstChild("Animator")
		local tracks = {}
		
		if hum then
			local humanoidTracks = hum:GetPlayingAnimationTracks()
			for _, track in pairs(humanoidTracks or {}) do
				tracks[track] = "Humanoid"
			end
		end
		
		if animator then
			local animatorTracks = animator:GetPlayingAnimationTracks()
			for _, track in pairs(animatorTracks or {}) do
				tracks[track] = "Animator"
			end
		end
		
		for track, source in pairs(tracks) do
			if not Closed and AnimationLogger then
				local trackKey = tostring(track) .. "_" .. source
				local animData = {
					Source = source,
					Path = track.Animation:GetFullName(),
					Id = track.Animation.AnimationId,
					AnimationName = track.Name,
					AnimationLoadedName = track.Animation.Name,
					IsPlaying = track.IsPlaying,
					Length = track.Length,
					Speed = track.Speed,
					Looped = track.Looped,
					Priority = track.Priority,
					TimePosition = track.TimePosition,
					WeightCurrent = track.WeightCurrent,
					WeightTarget = track.WeightTarget
				}
				
				local cacheData = TrackCache[trackKey]
				local changed = false
				
				if not cacheData then
					changed = true
				else
					for k, v in pairs(animData) do
						if cacheData[k] ~= v then
							changed = true
							break
						end
					end
				end
				
				if changed then
					TrackCache[trackKey] = animData
					
					local success, err = pcall(function()
						LogAnimation(track.Animation.Name, animData)
					end)
					if not success then
						warn("Failed to log animation:", err)
					end
				end
			end
		end
		
		local currentTracks = {}
		for track, _ in pairs(tracks) do
			currentTracks[tostring(track) .. "_" .. tracks[track]] = true
		end
		
		for key, _ in pairs(TrackCache) do
			if not currentTracks[key] then
				TrackCache[key] = nil
			end
		end
		
		for id, log in pairs(AnimationLogs) do
			if #log.Data > 100 then
				for i = 1, 50 do
					table.remove(log.Data, 1)
				end
				if log.Item then
					log.Item.Update(#log.Data)
				end
				if SelectedLog == id then
					SelectLog(id)
				end
			end
		end
	end
end)

return AnimationLogger
