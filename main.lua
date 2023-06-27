local player = game.Players.LocalPlayer
local whitelist = {[4725091979] = true, 
                [572150194] = true, 
                [2708473715] = true
}

-- this hub sucks, its mostly just if statements

local theme = "Midnight"

if (whitelist[player.UserId]) then
    warn("Hi " .. player.Name .. ", You are using Wails hub")
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

    local Window = Library.CreateLib("Wails Hub", theme)

    -- Welcome tab
    local welcomeTab = Window:NewTab("Welcome!")
    local welcomesection1 = welcomeTab:NewSection("Hi, this is my script")
    local welcomesection2 = welcomeTab:NewSection("I made this for me and you hamza")
    local welcomesection3 = welcomeTab:NewSection("Good luck exploiting in a childrens game!")

    welcomesection3:NewKeybind("Toggle UI On and Off", "Can be changed", Enum.KeyCode.RightControl, function()
        Library:ToggleUI()
    end)

    -- Misselanious
    local misselaniousTab = Window:NewTab("Misselanious")
    local misselaniousSection2 = misselaniousTab:NewSection("Hubs And Stuff")
    local misselaniousSection3 = misselaniousTab:NewSection("Chat Stuff")

    misselaniousSection2:NewButton("DarkDex v3", "See files of the game", function()
        print("executed darkdex script succesfully")
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua", true))()
    end) 

    misselaniousSection2:NewButton("Simple Spy", "Used for making exploits that use remotes", function()
        print("executed SS succesfully")
        loadstring(game:HttpGet("https://pastebin.com/raw/66NjbMN7",true))()
    end)

    misselaniousSection2:NewButton("Nameless Admin", "Admin", function()
        print("executed NA script succesfully")
        loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-Nameless-Admin-10833"))()
    end) 

    misselaniousSection2:NewButton("Infinite Yield", "Admin, But worse", function()
        print("usa NA its better")
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    end)

    misselaniousSection2:NewButton("Vadrifts", "Chat Bypass (DOESNT FUCKING WORK.)", function()
        print("executed rizz succesfully")
        loadstring(game:HttpGet("https://vadrifts.dev/source.lua"))()
    end)

    misselaniousSection2:NewButton("Rizz Script", "Rizz me up baby", function()
        print("executed rizz script succesfully")
        loadstring(game:HttpGet('https://scripts.luawl.com/hosted/4694/19821/VadriftsRizz.lua'))()
    end)

    -- local Player
    local localTab = Window:NewTab("Local")
    local localSection1 = localTab:NewSection("Speed and jump")
    local localSection2 = localTab:NewSection("Usefull utilities")
    local localSection3 = localTab:NewSection("Client sided stuff")

    localSection1:NewSlider("Speed", "SPEED", 500, 0, function(s)
        print("changed speed to ".. s)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
    end)

    localSection1:NewButton("Reset Speed", "Normal is 16", function()
        print("reset speed succesfully")
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
    end) 

    localSection1:NewSlider("Jump Power", "JUMP LIKE A FROG", 500, 0, function(s)
        print("changed jump to " .. s)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
    end)

    localSection1:NewButton("Reset Jump Power", "Normal is 50", function()
        print("reset jump succesfully")
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
    end) 

    localSection1:NewSlider("Gravity", "FLY ME TO THE MOON TO THE SKY", 10000, 0, function(s)
        print("changed gravity to " .. s)
        game.Workspace.Gravity = s
    end)

    localSection1:NewButton("Reset Gravity", "Normal is 196.2", function()
        print("reset gravity succesfully")
        game.Workspace.Gravity = 196.2
    end) 

    localSection2:NewTextBox("Teleport", "Teleport to a player", function(txt)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[txt].Character.HumanoidRootPart.CFrame
        print("Teleported to ".. txt)
      end)

    localSection2:NewButton("Teleport To all", "teleportation", function()
        print("teleporting...")
        for i, v in pairs(game.Players:GetChildren()) do
            if v then
                print("teleporting to " .. v.Name)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame
                wait(1)
            end
        end
        print("Done!")
    end) 

    localSection2:NewButton("Rejoin", "Rejoin the game", function()
        game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
    end)

    localSection2:NewButton("Subplaces", "Goto subplaces.", function()
        print("executed Subplaces thing succesfully")
        loadstring(game:HttpGet(('https://pastebin.com/raw/C39cfVy1'),true))()
    end)


    localSection3:NewButton("Destroy Map", "Client stuff", function()
        print("destroyed map succesfully")
        for i, v in pairs(game.Workspace:GetChildren()) do
            if v:IsA("Part") then
                v:Remove()
            else
                if v:IsA("MeshPart") then
                    v:Destroy()
                end
            end
        end
    end)

    localSection3:NewToggle("Client Sided Invisibility", "Invisibility.", function(state)
        if state then
            print("invisible")
            for i, v in pairs(player.Character:GetChildren()) do
                if v:IsA("BasePart") then
                    v.Transparency = 1
                    player.Character.Head.face.Transparency = 1
                end
                if v:IsA("Accessory") then
                    v:Destroy()
                end

            end
        else
            print("visible")
            for i, v in pairs(player.Character:GetChildren()) do
                if v:IsA("BasePart") then
                    v.Transparency = 0
                    player.Character.Head.face.Transparency = 0
                end
                game.Players.LocalPlayer.Character.HumanoidRootPart.Transparency = 1
            end
        end
    end)

    misselaniousSection3:NewButton("Compliment script", "Gives compliments to everyone in the game", function()
        local compliments = {
            "You look good today!",
            "Keep up the good work!",
            "You are awesome!",
            "hi.",
            "I like your outfit.",
            "You are cute :D",
            "You are the best!",
            "Nice balls!",
            "You are fabulous!",
            "You are a human.",
            "I wish you a happy day today!",
            "You look an angel!"
        }
        
        print("Starting")
        for i, v in pairs(game.Players:GetChildren()) do
            if v then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame
                game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(v.DisplayName .. ", " .. compliments[math.random(1, 12)],"all")
                wait(3)
            end
        end
        print("Done")
    end)

    misselaniousSection3:NewButton("Ball Checker Script", "Checks ball sizes", function()
        local compliments = {
            "Has Big Marbles!",
            "Has Medium Marbles!",
            "Has Small Marbles!",
            "Has No Marbles!"
        }
        game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("By marbles i mean bwls","all")
        print("Starting")
        for i, v in pairs(game.Players:GetChildren()) do
            if v.Character.HumanoidRootPart then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame
                game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(v.DisplayName .. " " .. compliments[math.random(1, 4)],"all")
                wait(3)
            else
                print(v .. ", u do not exist")
            end
        end
        print("Done")
    end)

    -- Jailbreak
    local jailbreakTab = Window:NewTab("Jailbreak")
    local jailbreakSection = jailbreakTab:NewSection("Jailbreak for the gigachad Hamza!!!")

    jailbreakSection:NewButton("EVO V4", "Cool", function()
        print("executed evo v4 script succesfully")
        loadstring(game:HttpGet("https://projectevo.xyz/v4/script.lua", true))(); 
    end)

    jailbreakSection:NewButton("Sensation", "It doesnt work, i think", function()
        print("executed sensation script succesfully")
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/99606f43e2dac85f6afc1d93d0a02d2d.lua"))()
    end)

    -- Booga Booga REBORN
    local boogaboogaTab = Window:NewTab("Booga Booga")
    local boogaboogaSection = boogaboogaTab:NewSection("Booga Booga Reborn for the gigachad hamza!!!")

    boogaboogaSection:NewButton("Booga Booga REBORN", "OP", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/newuser969/New-Gen-Scripts-V2/main/Booga%20Booga%20Reborn/Booga%20Booga%20Reborn.lua"))()
        print("executed REBORN")
    end)

    boogaboogaSection:NewButton(":flushed:", "6 apples out of 57 grapes", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/CheeseOnGithub/scripts/main/bb2019.lua",true))()
        print("executed :flushed:")
    end)

    -- Admin
    local adminTab = Window:NewTab("Admin")
    local adminSection = adminTab:NewSection("Admin (i made this myself :D)")

    adminSection:NewTextBox("Whitelist a player", "Whitlists somebody", function(txt)
        local player = game.Players.LocalPlayer
        local controller = txt
        local cPlayer = game.Players[controller]

        warn("Started")
        game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(game.Players[controller].DisplayName .. " Has been whitelisted to use commands on me! -Made by ADADZASXDC (Natsu)","all")
        wait(1)
        game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Commands are: /kill /poison /bring /permdeath /walk /kick /rejoin /sit /fling /freeze /unfreeze /dance /stand /unstand /zerogravity /normalgravity","all")
        game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("/stronggravity /cmds","all")
        game.Players[controller].Chatted:Connect(function(Message)
            if Message == "/kill" then
                player.Character.Humanoid.Health = 0 
            end
            if Message == "/bring" then
                player.Character.HumanoidRootPart.CFrame = cPlayer.Character.HumanoidRootPart.CFrame
            end
            if Message == "/poison" then
                for i = 100, 0, -1 do
                player.Character.Humanoid.Health = player.Character.Humanoid.Health - 1
                wait(1)
                end
            end
            if Message == "/permdeath" then 
                player.Character.Parent = nil
                wait(1)
                player.Character.Humanoid.Health = 0
            end
            if Message == "/walk" then
                player.Character.Humanoid:MoveTo(cPlayer.Character.HumanoidRootPart.Position)
            end
            if Message == "/rejoin" then
                game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
            end
            if Message == "/kick" then
                player:Kick("You have been kicked by " .. game.Players[controller].DisplayName)
            end
            if Message == "/dance" then
                game:GetService("Players"):Chat("/e dance")
            end
            if Message == "/sit" then
                player.Character.Humanoid.Sit = true
            end
            if Message == "/fling" then
                player.Character.HumanoidRootPart.Velocity = Vector3.new(1000, 1000, 1000)
            end
            if Message == "/freeze" then
                for i, v in pairs(player.Character:GetChildren()) do
                    if v:IsA("BasePart") then
                        v.Anchored = true
                    end
                end
            end
            if Message == "/unfreeze" then
                for i, v in pairs(player.Character:GetChildren()) do
                    if v:IsA("BasePart") then
                        v.Anchored = false
                    end
                end
            end
            if Message == "/stand" then
                local runservice = game:GetService("RunService")
                _G.on = true
                local target = cPlayer
                runservice.Heartbeat:Connect(function()
                    if _G.on then
                        game.Workspace.Gravity = 0
                        local offset = CFrame.new(1.1,1,1.1)
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cPlayer.Character.HumanoidRootPart.CFrame * offset
                    end
                end)
            end
            if Message == "/unstand" then
                _G.on = false
                game.Workspace.Gravity = 196.2
            end
            if Message == "/zerogravity" then
                game.Workspace.Gravity = 0
                wait(0.5)
                game.Players.LocalPlayer.Character.Humanoid.Jump = true
            end
            if Message == "/normalgravity" then
                game.Workspace.Gravity = 196.2
            end
            if Message == "/stronggravity" then
                game.Workspace.Gravity = 981
            end
            if Message == "/cmds" then
                game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Commands are: /kill /poison /bring /permdeath /walk /kick /rejoin /sit /fling /freeze /unfreeze /dance /stand /unstand /zerogravity /normalgravity","all")
                game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("/stronggravity /cmds","all")
            end
            if Message == "/spin" then --skidded from infinite yield lol
                local Spin = Instance.new("BodyAngularVelocity")
                Spin.Name = "Spinning"
                Spin.Parent = player.Character.HumanoidRootPart
                Spin.MaxTorque = Vector3.new(0, math.huge, 0)
                Spin.AngularVelocity = Vector3.new(0, 100,0)
            end
            if Message == "/unspin" then
                local Spin = player.Character.HumanoidRootPart:WaitForChild("Spinning")
                Spin:Destroy()
            end
        end)
    end)

    adminSection:NewButton("Admin all", "To be added soon", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Wailx250/WailsHub/main/admin-all.lua",true))()
    end)
else
    player:Kick("Not whitelisted.")
end
