local lose = {"BedniyPapa"}
local win = {"CandyEyePlayer"}
if game.PlaceId ==  45146873 then    
    repeat
    wait(1)
    until game:IsLoaded()
    

    local join =  function(i)
        local Event = workspace.Enter
        Event:InvokeServer(
            "1v1",
            2
        )
        print("Joined")
    end

    
    local gui = game:GetService("Players").LocalPlayer.PlayerGui.Games.Games.Buttons.Games["1v1"]
    local F  =  gui[1]
    local S = gui[2]
    local plr = game.Players.LocalPlayer

    if table.find(win,plr.Name) then
    	repeat
	game.Workspace.Loser:InvokeServer()
	game.Workspace.Winner:InvokeServer()
    		wait(0.1)
            if F and S then
                if (F.Text == "" and S.Text ==  "") or (table.find(lose,F.Text) or table.find(lose,S.Text)) then
                    join(2)
                    game:GetService("Players").LocalPlayer.PlayerGui.Games.Games.Buttons.Games["1v1_Confirm"].Visible =  true
                    game.Workspace:FindFirstChild("BeginGame"):InvokeServer("1v1", 2)
                end
            end
        until F.Text == plr.Name or S.Text == plr.Name
    elseif table.find(lose,plr.Name) then
    game.Workspace.Loser:InvokeServer()
    	repeat
	game.Workspace.Loser:InvokeServer()
	game.Workspace.Winner:InvokeServer()
    		wait(0.1)
            if F and S then
                if (F.Text == "" and S.Text ==  "") or (table.find(win,F.Text) or table.find(win,S.Text)) then
                    join(2)
                                   join(2)
                    game:GetService("Players").LocalPlayer.PlayerGui.Games.Games.Buttons.Games["1v1_Confirm"].Visible =  true
                    game.Workspace:FindFirstChild("BeginGame"):InvokeServer("1v1", 2)
                end
            end
        until F.Text == plr.Name or S.Text == plr.Name
    end
elseif game.PlaceId  == 46955756 then--49707852 then
    repeat
    wait(1)
    until game:IsLoaded()
    print("Loaded")
    local ui = workspace
    local check = function(mapname)
        for _, v in pairs(ui:GetChildren()) do
            if v.Name:find("Map") and v:IsA("IntValue") then
                print(v:FindFirstChildOfClass("StringValue").Value)
                if v:FindFirstChildOfClass("StringValue").Value == mapname then
                    return v.Name
                end
            end
        end
        return nil
    end
    local veto = function()
        local Event = workspace.Vote
        Event:InvokeServer(
            "Veto"
        )
    end

    local vote =  function(i)
        local Event = workspace.Vote
        Event:InvokeServer(
            tostring(i)
        )
        workspace.SkipWaitVote:InvokeServer()
        print("Voted")
    end
    repeat
        
        local c = check("Midnight Road")
        if c then
            vote(c)
        else
            veto()
        end
        wait(1)
    until workspace:FindFirstChild("Map")
    
    local plr = game.Players.LocalPlayer

    if table.find(win,plr.Name) then
       while wait(0.1) do
			game.Workspace.BuyZombie:InvokeServer("Speedy")
			local Event = workspace.Make
			Event:InvokeServer(
			    "Speedy"
			)
        end
    elseif table.find(lose,plr.Name) then
    end
end
