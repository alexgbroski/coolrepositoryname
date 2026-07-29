local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local UserInputService = game:GetService("UserInputService")
local TextChatService = game:GetService("TextChatService")

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "BubbleGUI"
screenGui.Parent = LocalPlayer.PlayerGui

local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 320, 0, 400)
mainFrame.Position = UDim2.new(0.5, -160, 0.5, -200)
mainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
mainFrame.BackgroundTransparency = 0.1
mainFrame.BorderSizePixel = 1
mainFrame.BorderColor3 = Color3.fromRGB(80, 80, 90)
mainFrame.Active = true
mainFrame.Draggable = true
mainFrame.Parent = screenGui
mainFrame.Visible = false

local titleBar = Instance.new("Frame")
titleBar.Size = UDim2.new(1, 0, 0, 35)
titleBar.BackgroundColor3 = Color3.fromRGB(45, 45, 50)
titleBar.BorderSizePixel = 0
titleBar.Parent = mainFrame

local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(1, -70, 1, 0)
titleLabel.Position = UDim2.new(0, 10, 0, 0)
titleLabel.BackgroundTransparency = 1
titleLabel.Text = "Bubble Sender [M]"
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
titleLabel.TextSize = 15
titleLabel.TextXAlignment = Enum.TextXAlignment.Left
titleLabel.Font = Enum.Font.GothamBold
titleLabel.Parent = titleBar

local closeBtn = Instance.new("TextButton")
closeBtn.Size = UDim2.new(0, 35, 1, 0)
closeBtn.Position = UDim2.new(1, -35, 0, 0)
closeBtn.BackgroundColor3 = Color3.fromRGB(200, 40, 40)
closeBtn.BackgroundTransparency = 0.5
closeBtn.Text = "Х"
closeBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
closeBtn.TextSize = 18
closeBtn.Font = Enum.Font.GothamBold
closeBtn.Parent = titleBar

local hideBtn = Instance.new("TextButton")
hideBtn.Size = UDim2.new(0, 35, 1, 0)
hideBtn.Position = UDim2.new(1, -70, 0, 0)
hideBtn.BackgroundColor3 = Color3.fromRGB(50, 50, 200)
hideBtn.BackgroundTransparency = 0.5
hideBtn.Text = "─"
hideBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
hideBtn.TextSize = 18
hideBtn.Font = Enum.Font.GothamBold
hideBtn.Parent = titleBar

local contentFrame = Instance.new("Frame")
contentFrame.Size = UDim2.new(1, -20, 1, -55)
contentFrame.Position = UDim2.new(0, 10, 0, 45)
contentFrame.BackgroundTransparency = 1
contentFrame.Parent = mainFrame

local playerListFrame = Instance.new("Frame")
playerListFrame.Size = UDim2.new(1, 0, 0, 140)
playerListFrame.Position = UDim2.new(0, 0, 0, 0)
playerListFrame.BackgroundColor3 = Color3.fromRGB(38, 38, 43)
playerListFrame.BorderSizePixel = 1
playerListFrame.BorderColor3 = Color3.fromRGB(65, 65, 75)
playerListFrame.Parent = contentFrame

local playerListLabel = Instance.new("TextLabel")
playerListLabel.Size = UDim2.new(1, -10, 0, 22)
playerListLabel.Position = UDim2.new(0, 5, 0, 2)
playerListLabel.BackgroundTransparency = 1
playerListLabel.Text = "👥 Players:"
playerListLabel.TextColor3 = Color3.fromRGB(200, 200, 220)
playerListLabel.TextSize = 13
playerListLabel.Font = Enum.Font.GothamBold
playerListLabel.TextXAlignment = Enum.TextXAlignment.Left
playerListLabel.Parent = playerListFrame

local playerScroll = Instance.new("ScrollingFrame")
playerScroll.Size = UDim2.new(1, -10, 1, -30)
playerScroll.Position = UDim2.new(0, 5, 0, 26)
playerScroll.BackgroundTransparency = 1
playerScroll.BorderSizePixel = 0
playerScroll.ScrollBarThickness = 5
playerScroll.CanvasSize = UDim2.new(0, 0, 0, 0)
playerScroll.AutomaticCanvasSize = Enum.AutomaticSize.Y
playerScroll.Parent = playerListFrame

local playerListLayout = Instance.new("UIListLayout")
playerListLayout.Parent = playerScroll
playerListLayout.SortOrder = Enum.SortOrder.Name
playerListLayout.Padding = UDim.new(0, 3)

local msgBox = Instance.new("TextBox")
msgBox.Size = UDim2.new(1, 0, 0, 35)
msgBox.Position = UDim2.new(0, 0, 0, 150)
msgBox.BackgroundColor3 = Color3.fromRGB(45, 45, 52)
msgBox.BorderSizePixel = 1
msgBox.BorderColor3 = Color3.fromRGB(65, 65, 75)
msgBox.Text = "Hello!"
msgBox.TextColor3 = Color3.fromRGB(255, 255, 255)
msgBox.TextSize = 14
msgBox.Font = Enum.Font.Gotham
msgBox.PlaceholderText = "Enter message..."
msgBox.ClearTextOnFocus = false
msgBox.Parent = contentFrame

local targetBox = Instance.new("TextBox")
targetBox.Size = UDim2.new(1, 0, 0, 30)
targetBox.Position = UDim2.new(0, 0, 0, 193)
targetBox.BackgroundColor3 = Color3.fromRGB(45, 45, 52)
targetBox.BorderSizePixel = 1
targetBox.BorderColor3 = Color3.fromRGB(65, 65, 75)
targetBox.Text = ""
targetBox.TextColor3 = Color3.fromRGB(255, 255, 255)
targetBox.TextSize = 13
targetBox.Font = Enum.Font.Gotham
targetBox.PlaceholderText = "✏️ Type player name..."
targetBox.ClearTextOnFocus = false
targetBox.Parent = contentFrame

local buttonFrame = Instance.new("Frame")
buttonFrame.Size = UDim2.new(1, 0, 0, 45)
buttonFrame.Position = UDim2.new(0, 0, 0, 231)
buttonFrame.BackgroundTransparency = 1
buttonFrame.Parent = contentFrame

local sendBtn = Instance.new("TextButton")
sendBtn.Size = UDim2.new(0.65, -5, 1, 0)
sendBtn.Position = UDim2.new(0, 0, 0, 0)
sendBtn.BackgroundColor3 = Color3.fromRGB(0, 180, 70)
sendBtn.BorderSizePixel = 0
sendBtn.Text = "▶ SEND [X]"
sendBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
sendBtn.TextSize = 16
sendBtn.Font = Enum.Font.GothamBold
sendBtn.Parent = buttonFrame

local refreshBtn = Instance.new("TextButton")
refreshBtn.Size = UDim2.new(0.35, -5, 1, 0)
refreshBtn.Position = UDim2.new(0.65, 5, 0, 0)
refreshBtn.BackgroundColor3 = Color3.fromRGB(60, 60, 200)
refreshBtn.BorderSizePixel = 0
refreshBtn.Text = "🔘"
refreshBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
refreshBtn.TextSize = 20
refreshBtn.Font = Enum.Font.GothamBold
refreshBtn.Parent = buttonFrame

local unloadBtn = Instance.new("TextButton")
unloadBtn.Size = UDim2.new(1, 0, 0, 32)
unloadBtn.Position = UDim2.new(0, 0, 0, 284)
unloadBtn.BackgroundColor3 = Color3.fromRGB(200, 45, 45)
unloadBtn.BorderSizePixel = 0
unloadBtn.Text = "⛔ UNLOAD"
unloadBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
unloadBtn.TextSize = 14
unloadBtn.Font = Enum.Font.GothamBold
unloadBtn.Parent = contentFrame

local statusLabel = Instance.new("TextLabel")
statusLabel.Size = UDim2.new(1, 0, 0, 25)
statusLabel.Position = UDim2.new(0, 0, 0, 324)
statusLabel.BackgroundTransparency = 1
statusLabel.Text = "● Ready - Select a player"
statusLabel.TextColor3 = Color3.fromRGB(100, 255, 100)
statusLabel.TextSize = 12
statusLabel.Font = Enum.Font.Gotham
statusLabel.TextXAlignment = Enum.TextXAlignment.Left
statusLabel.Parent = contentFrame

local selectedPlayer = nil
local playerButtons = {}
local guiVisible = false
local isHidden = false

local function updatePlayerList()
    for _, btn in pairs(playerButtons) do
        btn:Destroy()
    end
    playerButtons = {}
    
    local players = Players:GetPlayers()
    local count = 0
    for _, player in ipairs(players) do
        if player then
            count = count + 1
            local btn = Instance.new("TextButton")
            btn.Size = UDim2.new(1, 0, 0, 28)
            btn.BackgroundColor3 = Color3.fromRGB(48, 48, 55)
            btn.BorderSizePixel = 1
            btn.BorderColor3 = Color3.fromRGB(65, 65, 75)
            btn.Text = "👤 " .. player.Name
            btn.TextColor3 = Color3.fromRGB(230, 230, 255)
            btn.TextSize = 13
            btn.Font = Enum.Font.Gotham
            btn.TextXAlignment = Enum.TextXAlignment.Left
            btn.Parent = playerScroll
            
            if selectedPlayer == player.Name then
                btn.BackgroundColor3 = Color3.fromRGB(0, 140, 220)
                btn.BorderColor3 = Color3.fromRGB(0, 200, 255)
            end
            
            btn.MouseButton1Click:Connect(function()
                for _, b in pairs(playerButtons) do
                    b.BackgroundColor3 = Color3.fromRGB(48, 48, 55)
                    b.BorderColor3 = Color3.fromRGB(65, 65, 75)
                end
                btn.BackgroundColor3 = Color3.fromRGB(0, 140, 220)
                btn.BorderColor3 = Color3.fromRGB(0, 200, 255)
                selectedPlayer = player.Name
                targetBox.Text = player.Name
                statusLabel.Text = "✓ Selected: " .. player.Name
                statusLabel.TextColor3 = Color3.fromRGB(100, 255, 100)
            end)
            
            table.insert(playerButtons, btn)
        end
    end
    
    if count == 0 then
        local noPlayers = Instance.new("TextLabel")
        noPlayers.Size = UDim2.new(1, 0, 0, 28)
        noPlayers.BackgroundTransparency = 1
        noPlayers.Text = "No other players online"
        noPlayers.TextColor3 = Color3.fromRGB(150, 150, 180)
        noPlayers.TextSize = 13
        noPlayers.Font = Enum.Font.Gotham
        noPlayers.Parent = playerScroll
        table.insert(playerButtons, noPlayers)
    end
end

targetBox:GetPropertyChangedSignal("Text"):Connect(function()
    if targetBox.Text ~= "" then
        local player = Players:FindFirstChild(targetBox.Text)
        if player then
            selectedPlayer = player.Name
            for _, b in pairs(playerButtons) do
                b.BackgroundColor3 = Color3.fromRGB(48, 48, 55)
                b.BorderColor3 = Color3.fromRGB(65, 65, 75)
                if b.Text == "👤 " .. player.Name then
                    b.BackgroundColor3 = Color3.fromRGB(0, 140, 220)
                    b.BorderColor3 = Color3.fromRGB(0, 200, 255)
                end
            end
            statusLabel.Text = "✓ Selected: " .. player.Name
            statusLabel.TextColor3 = Color3.fromRGB(100, 255, 100)
        end
    end
end)

local function sendBubble()
    local target = targetBox.Text
    local msg = msgBox.Text
    
    if target == "" then
        statusLabel.Text = "⚠ Error: Select or type a player"
        statusLabel.TextColor3 = Color3.fromRGB(255, 100, 100)
        return
    end
    
    local player = Players:FindFirstChild(target)
    if not player then
        statusLabel.Text = "⚠ Player not found: " .. target
        statusLabel.TextColor3 = Color3.fromRGB(255, 100, 100)
        return
    end
    
    local character = player.Character
    if not character then
        statusLabel.Text = "⚠ Character not loaded"
        statusLabel.TextColor3 = Color3.fromRGB(255, 100, 100)
        return
    end
    
    local head = character:FindFirstChild("Head")
    if not head then
        statusLabel.Text = "⚠ Head not found"
        statusLabel.TextColor3 = Color3.fromRGB(255, 100, 100)
        return
    end
    
    local bubble = TextChatService:DisplayBubble(head, msg)
    if bubble then
        bubble.Lifetime = 5
        bubble.TextLabel.TextColor3 = Color3.new(1, 1, 1)
        bubble.StudsOffset = Vector3.new(0, 2, 0)
        statusLabel.Text = "✅ Sent to: " .. target
        statusLabel.TextColor3 = Color3.fromRGB(100, 255, 100)
    end
end

sendBtn.MouseButton1Click:Connect(sendBubble)

refreshBtn.MouseButton1Click:Connect(function()
    updatePlayerList()
    statusLabel.Text = "🔘 Players refreshed"
    statusLabel.TextColor3 = Color3.fromRGB(100, 255, 100)
end)

local inputConnection = UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    
    if input.KeyCode == Enum.KeyCode.M then
        guiVisible = not guiVisible
        mainFrame.Visible = guiVisible
        if guiVisible then
            updatePlayerList()
            statusLabel.Text = "● GUI opened"
            statusLabel.TextColor3 = Color3.fromRGB(100, 255, 100)
        else
            statusLabel.Text = "● GUI closed"
            statusLabel.TextColor3 = Color3.fromRGB(255, 200, 100)
        end
    end
    
    if input.KeyCode == Enum.KeyCode.X then
        sendBubble()
    end
end)

closeBtn.MouseButton1Click:Connect(function()
    mainFrame.Visible = false
    guiVisible = false
    isHidden = true
    statusLabel.Text = "● GUI closed"
    statusLabel.TextColor3 = Color3.fromRGB(255, 200, 100)
end)

hideBtn.MouseButton1Click:Connect(function()
    mainFrame.Visible = not mainFrame.Visible
    guiVisible = mainFrame.Visible
    isHidden = not mainFrame.Visible
    if guiVisible then
        statusLabel.Text = "● GUI opened"
        statusLabel.TextColor3 = Color3.fromRGB(100, 255, 100)
    else
        statusLabel.Text = "● GUI hidden"
        statusLabel.TextColor3 = Color3.fromRGB(255, 200, 100)
    end
end)

local playerAddedConnection = Players.PlayerAdded:Connect(function()
    updatePlayerList()
end)

local playerRemovingConnection = Players.PlayerRemoving:Connect(function()
    updatePlayerList()
end)

local function unloadGUI()
    screenGui:Destroy()
    
    if inputConnection then inputConnection:Disconnect() end
    if playerAddedConnection then playerAddedConnection:Disconnect() end
    if playerRemovingConnection then playerRemovingConnection:Disconnect() end
    
    getgenv().SendBubble = nil
    getgenv().BubbleConfig = nil
    
    print("GUI unloaded - All connections disconnected")
end

unloadBtn.MouseButton1Click:Connect(function()
    unloadGUI()
end)

getgenv().SendBubble = function(target, msg)
    local player = Players:FindFirstChild(target or targetBox.Text)
    if not player then return end
    local char = player.Character
    if not char then return end
    local head = char:FindFirstChild("Head")
    if not head then return end
    local bubble = TextChatService:DisplayBubble(head, msg or msgBox.Text or "Hello!")
    if bubble then
        bubble.Lifetime = 5
        bubble.TextLabel.TextColor3 = Color3.new(1, 1, 1)
        bubble.StudsOffset = Vector3.new(0, 2, 0)
    end
end

updatePlayerList()
print("GUI loaded. Press M to open/close, X to send")