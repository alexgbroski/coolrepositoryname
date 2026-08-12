task.wait(1)
local g, p, t = game:GetService("GuiService"), game:GetService("Players").LocalPlayer, game:GetService("TeleportService")
g.ErrorMessageChanged:Connect(function(e) if e and e ~= "" then task.wait(); t:Teleport(45146873, p) end end)
local plr=game.Players.LocalPlayer
if game.PlaceId==45146873 then
    local inGame
    repeat
        if plr and plr:FindFirstChild("Information") then
            inGame=plr.Information:FindFirstChild("inGame")
        end
        task.wait()
    until game.Loaded and plr and plr.PlayerGui and inGame
    print("Loaded")
    local join=function(i)
        local Event=workspace.Enter
        if Event then Event:InvokeServer("SurvivalSolo",i) end
        local Event2=workspace.BeginSurvivalGame
        if Event2 then Event2:InvokeServer("SurvivalSolo",i) end
        print("Joined")
    end
    if workspace.Loser then workspace.Loser:InvokeServer() end
    if workspace.Winner then workspace.Winner:InvokeServer() end
    if workspace.SurvivalAnalysis then workspace.SurvivalAnalysis:InvokeServer() end
    print("Solo Success launched, waiting for...")
    repeat
        if workspace.Loser then workspace.Loser:InvokeServer() end
        if workspace.Winner then workspace.Winner:InvokeServer() end
        if workspace.SurvivalAnalysis then workspace.SurvivalAnalysis:InvokeServer() end
        task.wait(0.1)
        join(1)
    until inGame and inGame.Value==true
elseif game.PlaceId==49707852 then
    repeat task.wait(3) until game:IsLoaded()
    print("Loaded")
    local ui=workspace
    local check=function(mapname)
        if not ui then return nil end
        for _,v in pairs(ui:GetChildren()) do
            if v.Name and v.Name:find("Map") and v:IsA("IntValue") then
                local sv=v:FindFirstChildOfClass("StringValue")
                if sv and sv.Value==mapname then
                    return v.Name
                end
            end
        end
        return nil
    end
    local veto=function()
        local Event=workspace.Vote
        if Event then Event:InvokeServer("Veto") end
    end
    local vote=function(i)
        local Event=workspace.Vote
        if Event then Event:InvokeServer(tostring(i)) end
        if workspace.SkipWaitVote then workspace.SkipWaitVote:InvokeServer() end
        print("Voted")
    end
    repeat
        local c=check("Borderlands")
        if c then
            vote(c)
        else
            veto()
        end
        task.wait(1)
    until workspace:FindFirstChild("Map")
    print("Success Passed")
    
    while task.wait(0.1) do
        print("do")
            if workspace.PlacingTower then
                workspace.PlacingTower:InvokeServer("Patrol")
            end
            if workspace.Placed and workspace.Map then
                local children=workspace.Map:GetChildren()
                if #children>281 and children[281] and children[281]:GetChildren() and #children[281]:GetChildren()>6 then
                    workspace.Placed:InvokeServer(
                        Vector3.new(math.random(-100,100),211.98248291016,math.random(-100,100)),
                        1,
                        "Patrol",
                        children[281]:GetChildren()[6]
                    )
                end
            end
    end
end
