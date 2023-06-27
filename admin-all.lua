    game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Everyone can now use admin on me! -Made by ADADZASXDC (Natsu)","all")
    wait(1)
    game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Commands are: /kill /poison /bring /permdeath /walk /kick /rejoin /sit /unsit /fling /freeze /unfreeze /dance /stand /unstand /zerogravity /normalgravity","all")
    game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("/stronggravity /cmds /spin /unspin","all")
    for i, v in pairs (game.Players:GetChildren()) do
        local player = game.Players.LocalPlayer
        local controller = v.Name
        local cPlayer = game.Players[controller]
        warn("Started")
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
            if Message == "/unsit" then
                player.Character.Humanoid.Sit = false
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
                wait(1)
                game.Players.LocalPlayer.Character.Humanoid.Jump = true
            end
            if Message == "/normalgravity" then
                game.Workspace.Gravity = 196.2
            end
            if Message == "/stronggravity" then
                game.Workspace.Gravity = 981
            end
            if Message == "/cmds" then
                game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Commands are: /kill /poison /bring /permdeath /walk /kick /rejoin /sit /unsit /fling /freeze /unfreeze /dance /stand /unstand /zerogravity /normalgravity","all")
                game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("/stronggravity /cmds /spin /unspin","all")
                wait(1)
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
    end
