--[[



    .                 .iLU1L:....   sL  .   BB                                                          sBBBBBBBrBBB.  :YQBBBBBi                            .
    .               .SQQP2r:         LBQZBBbvi.DB..U                                                    :BBBBBBqKBBBBBB.       :gBBg                        .
    .            iZBq:                BDSr    .ivILBB::                                              .7BBBBM:BBr 7BBB               jBD.                    .
    .          7dP.                    g1         rBBBYB.7q..                                     :gBBXBBB   r    BB                  :gP                   .
    .        iJ:                       .:           BBBBBBBBBBBj                              :jBBBBBBQjB         gY                     1L                 .
    .      .i                                        BBBISv.rYBBBBBBQ5Yv                     BBZBS   BBB          M                        .7               .
    .     :.                                         .BB        BEBBBBBBB                   BBBR.    iB1                                                    .
    .                                                 .B           BBBBBBB.     .ZBbB1    vBB        PB                                                     .
    .                                                  :L        .  DB:BBBBS    IBBBBBi idB5        .S                                                      .
    .                                                                7     Pr5JPi.BBBBBBg7S         :                                                       .
    .                                                                       vBdBBBBBBBBBBZBBS                                                               .
    .                                                                     BBBI QBBBvZBBBBBB:                                                                .
    .                                                                     BBBR7KBBM7ZBBBBBBB                                                                .
    .                                                                    :BBB..BBBBBBBBQ  KBB                                                               .
    .                                                                   :BBD  BBBBBBBB    JBr                                                               .
    .                                                                   QBB  BBQBBBBBBQ    BB                                                               .
    .                                                                  .BB: BBBBQvBBBBB.   :rr                                                              .
    .                                                                  BBB  dB U. BBBBB    iBB.                                                             .
    .                                                                  BB   BBX7U BBBBg    :BB:                                                             .
    .                                                                  BB  DBBBLBBRBBBB     bBZ                                                             .
    .                                                                 7BB BBBBBB1   BBBJ    jB7                                                             .
    .                                                                  BB BBBBBB    :BBB    rB.                                                             .
    .                                                                  QK BBBBB      BBBX   rB                                                              .
    .                                                                  BB SZBBB       BBB   BB                                                              .
    .                                                                  BBB rBBQ       dBBi bBB                                                              .
    .                                                                  BB :vBBBP      BBBriQBB                                                              .
    .                                                                   BBrr7MB.     .BBB rBBR                                                              .
    .                                                                       ZqB      gBB  .I.                                                               .
    .                                                                        BBv    PBB                                                                     .
    .                                                                        :BQ    BBB                                                                     .
    .                                                                         BBr    YB                                                                     .
    .                                                                         QrK  .rE1                                                                     .
    .                                                                         : Xi   r.                                                                     .
    .                                                                         BLL:   i                                                                      .
    .                                                                          s.    i                                                                      .
    .........................................................................................................................................................
    --]]


    _G.JumpableAnti = false

    game.RunService.Heartbeat:Connect(function()
        if _G.JumpableAnti then    
        local CurrentVelocity = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
        game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(1000,1000,1000)
        game.RunService.RenderStepped:Wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = CurrentVelocity
        end    
    end)


        _G.PredictionBreaker = false

    game.RunService.Heartbeat:Connect(function()
        if _G.PredictionBreaker then    
        local CurrentVelocity = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
        game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
        game.RunService.RenderStepped:Wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = CurrentVelocity
        end    
    end)

    _G.Desync = false

    game.RunService.Heartbeat:Connect(function()
    if _G.Desync then
    local CurrentVelocity = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.Angles(0,math.rad(0),0)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.Angles(0,math.rad(7),0)
    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(7000,7000,7000)
    game.RunService.RenderStepped:Wait()
    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = CurrentVelocity
        end
    end)


getgenv().cham = false
getgenv().nameESP = false
getgenv().boxESP = false


getgenv().esp_loaded = false
getgenv().Visibility = false

    getgenv().slammeAA = false 

game:GetService("RunService").heartbeat:Connect(function()
    if getgenv().slammeAA == true then 
    local abc = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(1,1,1) * (2^16)
    game:GetService("RunService").RenderStepped:Wait()
    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = abc
    end 
end)

getgenv().antistomplo = false

    if getgenv().antistomplo then
        if game.Players.LocalPlayer.Character.Humanoid.Health <= 5 then
            for i, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                if v:IsA("BasePart") then
                    v:Destroy()
                end
            end
        end
    end


local Aiming = loadstring(game:HttpGet("https://raw.githubusercontent.com/slammy1/dildosimulator2022free/main/yj"))()
Aiming.TeamCheck(false)

local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")

local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local CurrentCamera = Workspace.CurrentCamera

local DaHoodSettings = {
    SilentAim = true,
    AimLock = false,
    Prediction = 0.157,
    AimLockKeybind = Enum.KeyCode.E
}
getgenv().DaHoodSettings = DaHoodSettings

function Aiming.Check()
    if not (Aiming.Enabled == true and Aiming.Selected ~= LocalPlayer and Aiming.SelectedPart ~= nil) then
        return false
    end

    local Character = Aiming.Character(Aiming.Selected)
    local KOd = Character:WaitForChild("BodyEffects")["K.O"].Value
    local Grabbed = Character:FindFirstChild("GRABBING_CONSTRAINT") ~= nil

    if (KOd or Grabbed) then
        return false
    end

    return true
end

local __index
__index = hookmetamethod(game, "__index", function(t, k)
    if (t:IsA("Mouse") and (k == "Hit" or k == "Target") and Aiming.Check()) then
        local SelectedPart = Aiming.SelectedPart

        if (DaHoodSettings.SilentAim and (k == "Hit" or k == "Target")) then
            local Hit = SelectedPart.CFrame + (SelectedPart.Velocity * DaHoodSettings.Prediction)

            return (k == "Hit" and Hit or SelectedPart)
        end
    end

    return __index(t, k)
end)

RunService:BindToRenderStep("AimLock", 0, function()
    if (DaHoodSettings.AimLock and Aiming.Check() and UserInputService:IsKeyDown(DaHoodSettings.AimLockKeybind)) then
        local SelectedPart = Aiming.SelectedPart

        local Hit = SelectedPart.CFrame + (SelectedPart.Velocity * DaHoodSettings.Prediction)

        CurrentCamera.CFrame = CFrame.lookAt(CurrentCamera.CFrame.Position, Hit.Position)
    end
    end)


        getgenv().Aimbot = { 
          Enabled = false,
          Smoothness = 0.005,
          Smoothing = false,
          AirshotFunc = false,
          AirshotPart = "RightFoot",
          AimPart = "HumanoidRootPart",
          Predicting = 0.165,
          Key = Enum.KeyCode.Q,
          Toggled
      }


      function x(tt,tx,cc)
          game.StarterGui:SetCore("SendNotification", {
              Title = tt;
              Text = tx;
              Duration = cc;
              Icon = "rbxthumb://type=Asset&id=7262533709&w=150&h=150";
          })
      end

      local CurrentCamera = game:GetService("Workspace").CurrentCamera
      local RunService = game:GetService("RunService")
      local Mouse = game.Players.LocalPlayer:GetMouse()
      local LocalPlayer = game.Players.LocalPlayer
      local Plr

      function FindClosestPlayer()
          local ClosestDistance, ClosestPlayer = math.huge, nil;
          for _, Player in next, game:GetService("Players"):GetPlayers() do
              local ISNTKNOCKED = Player.Character:WaitForChild("BodyEffects")["K.O"].Value ~= true
              local ISNTGRABBED = Player.Character:FindFirstChild("GRABBING_COINSTRAINT") == nil

              if Player ~= LocalPlayer then
                  local Character = Player.Character
                  if Character and Character.Humanoid.Health > 1 and ISNTKNOCKED and ISNTGRABBED then
                      local Position, IsVisibleOnViewPort = CurrentCamera:WorldToViewportPoint(Character.HumanoidRootPart
                                                                                                   .Position)
                      if IsVisibleOnViewPort then
                          local Distance = (Vector2.new(Mouse.X, Mouse.Y) - Vector2.new(Position.X, Position.Y)).Magnitude
                          if Distance < ClosestDistance then
                              ClosestPlayer = Player
                              ClosestDistance = Distance
                          end
                      end
                  end
              end
          end
          return ClosestPlayer, ClosestDistance
      end



          game:GetService("UserInputService").InputBegan:Connect(function(keygo)
                 if (keygo.KeyCode == getgenv().Aimbot.Key) then
                     Toggled = not Toggled
                     if Toggled then
                     Plr =  FindClosestPlayer()
      end
               end

      end)
      game:GetService("RunService").RenderStepped:Connect(function()
      if getgenv().Aimbot.Smoothing and getgenv().Aimbot.Enabled and Toggled == true then
          local Main = CFrame.new(workspace.CurrentCamera.CFrame.p, Plr.Character[getgenv().Aimbot.AimPart].Position + Plr.Character[getgenv().Aimbot.AimPart].Velocity*getgenv().Aimbot.Predicting/10)
                                       workspace.CurrentCamera.CFrame = workspace.CurrentCamera.CFrame:Lerp(Main, getgenv().Aimbot.Smoothness, Enum.EasingStyle.Elastic, Enum.EasingDirection.InOut)
                                  elseif getgenv().Aimbot.Smoothing == false and getgenv().Aimbot.Enabled and Toggled == true then
          workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, Plr.Character[getgenv().Aimbot.AimPart].Position + Plr.Character[getgenv().Aimbot.AimPart].Velocity*getgenv().Aimbot.Predicting)
                                  end

      end)





      if getgenv().Aimbot.AirshotFunc == true then

                      if Plr.Character.Humanoid.Jump == true and Plr.Character.Humanoid.FloorMaterial == Enum.Material.Air then
                          getgenv().Aimbot.AimPart = getgenv().Aimbot.AirshotPart
                      else
                          Plr.Character:WaitForChild("Humanoid").StateChanged:Connect(function(old,new)
                              if new == Enum.HumanoidStateType.Freefall then
                              getgenv().Aimbot.AimPart = getgenv().Aimbot.AirshotPart
                              else
                                  getgenv().Aimbot.AimPart = getgenv().Aimbot.AimPart
                              end
                          end)
                      end
                  end


    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/slammy1/cattoware/main/my%20script%20libary"))() 
    local Window = Library:CreateWindow("Always.Win", Vector2.new(492, 598), Enum.KeyCode.RightShift) 
    local AimingTab = Window:CreateTab("Main") 
    local Misc = Window:CreateTab("Misc") 
    local Visuals = Window:CreateTab("Visuals") 
    local configd = Window:CreateTab("Config") 
    local testSection = AimingTab:CreateSector("Silent Aim", "left") 
    local cam = AimingTab:CreateSector("Aimlock", "right")  
    local neus = Misc:CreateSector("Misc", "left")  
    local fun = Misc:CreateSector("Fun", "right")  
    local ESP = Visuals:CreateSector("ESP", "right")  
    configd:CreateConfigSystem("left") 

    testSection:AddToggle("Enable", false, function(first)
    getgenv().Aiming.Enabled = first
    end)



    testSection:AddTextbox("Prediction", nil, function(State)
    DaHoodSettings.Prediction = State
    end)


    testSection:AddToggle("Show FOV", nil, function(first)
    getgenv().Aiming.ShowFOV = first
    end)



    testSection:AddTextbox("Fov Size", "11.5", function(State)
    getgenv().Aiming.FOV  = State
    end)

    local ColorToggle = testSection:AddToggle("ColorPicker w/Toggle", false, function(e)

end)

ColorToggle:AddColorpicker(Color3.fromRGB(75, 0,130), function(ztx)
   getgenv().Aiming.FOVColour = ztx
end)

      cam:AddToggle("Enable", false, function(first)
        getgenv().Aimbot.Enabled = first
        end)


        cam:AddTextbox("Camlock Prediction", "0.165", function(State)
          getgenv().Aimbot.Predicting  = State
          end)

    testSection:AddDropdown("Aimpart", {"Head", "UpperTorso", "HumanoidRootPart", "LowerTorso", "LeftHand", "RightHand", "LeftLowerArm", "RightLowerArm", "LeftUpperArm", "RightUpperArm", "LeftFoot", "LeftLowerLeg",  "LeftUpperLeg", "RightLowerLeg", "RightFoot",  "RightUpperLeg"}, "HumanoidRootPart", true, function(dropdown)
    getgenv().Aiming.TargetPart = dropdown
    end)

       cam:AddToggle("Enable Smoothness", false, function(first)
            getgenv().Aimbot.Smoothing = first
            end)

            cam:AddTextbox("Smoothness Amount", nil, function(State)
                getgenv().Aimbot.Smoothness  = State
                end)

                cam:AddToggle("Airshot Function", false, function(first)
                    getgenv().Aimbot.AirshotFunc = first
                    end)


                    cam:AddDropdown("Aim-part", {"Head", "UpperTorso", "HumanoidRootPart", "LowerTorso", "LeftHand", "RightHand", "LeftLowerArm", "RightLowerArm", "LeftUpperArm", "RightUpperArm", "LeftFoot", "LeftLowerLeg",  "LeftUpperLeg", "RightLowerLeg", "RightFoot",  "RightUpperLeg"}, "HumanoidRootPart", false, function(dropdown)
                        getgenv().Aimbot.AimPart = dropdown
                        end)

                    cam:AddDropdown("Airshot Part", {"Head", "UpperTorso", "HumanoidRootPart", "LowerTorso", "LeftHand", "RightHand", "LeftLowerArm", "RightLowerArm", "LeftUpperArm", "RightUpperArm", "LeftFoot", "LeftLowerLeg",  "LeftUpperLeg", "RightLowerLeg", "RightFoot",  "RightUpperLeg"}, "RightFoot", false, function(dropdown)
                        getgenv().Aimbot.AirshotPart = dropdown
                        end)

             local ToggleBind = cam:AddKeybind("Keybind", false, function(e)
                            getgenv().Aimbot.Key = e
                        end)




                        neus:AddButton("Antifling", function(IhateGayPeople)
                            -- // Constants \\ --
    -- [ Services ] --
    local Services = setmetatable({}, {__index = function(Self, Index)
        local NewService = game.GetService(game, Index)
        if NewService then
        Self[Index] = NewService
        end
        return NewService
        end})

        -- [ LocalPlayer ] --
        local LocalPlayer = Services.Players.LocalPlayer

        -- // Functions \\ --
        local function PlayerAdded(Player)
           local Detected = false
           local Character;
           local PrimaryPart;

           local function CharacterAdded(NewCharacter)
               Character = NewCharacter
               repeat
                   wait()
                   PrimaryPart = NewCharacter:FindFirstChild("HumanoidRootPart")
               until PrimaryPart
               Detected = false
           end

           CharacterAdded(Player.Character or Player.CharacterAdded:Wait())
           Player.CharacterAdded:Connect(CharacterAdded)
           Services.RunService.Heartbeat:Connect(function()
               if (Character and Character:IsDescendantOf(workspace)) and (PrimaryPart and PrimaryPart:IsDescendantOf(Character)) then
                   if PrimaryPart.AssemblyAngularVelocity.Magnitude > 50 or PrimaryPart.AssemblyLinearVelocity.Magnitude > 100 then
                       if Detected == false then
                           game.StarterGui:SetCore("ChatMakeSystemMessage", {
                               Text = "Fling Exploit detected, Player: " .. tostring(Player);
                               Color = Color3.fromRGB(255, 200, 0);
                           })
                       end
                       Detected = true
                       for i,v in ipairs(Character:GetDescendants()) do
                           if v:IsA("BasePart") then
                               v.CanCollide = false
                               v.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
                               v.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
                               v.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0)
                           end
                       end
                       PrimaryPart.CanCollide = false
                       PrimaryPart.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
                       PrimaryPart.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
                       PrimaryPart.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0)
                   end
               end
           end)
        end

        -- // Event Listeners \\ --
        for i,v in ipairs(Services.Players:GetPlayers()) do
           if v ~= LocalPlayer then
               PlayerAdded(v)
           end
        end
        Services.Players.PlayerAdded:Connect(PlayerAdded)

        local LastPosition = nil
        Services.RunService.Heartbeat:Connect(function()
           pcall(function()
               local PrimaryPart = LocalPlayer.Character.PrimaryPart
               if PrimaryPart.AssemblyLinearVelocity.Magnitude > 250 or PrimaryPart.AssemblyAngularVelocity.Magnitude > 250 then
                   PrimaryPart.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
                   PrimaryPart.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
                   PrimaryPart.CFrame = LastPosition

                   game.StarterGui:SetCore("ChatMakeSystemMessage", {
                       Text = "You were flung. Neutralizing velocity.";
                       Color = Color3.fromRGB(255, 0, 0);
                   })
               elseif PrimaryPart.AssemblyLinearVelocity.Magnitude < 50 or PrimaryPart.AssemblyAngularVelocity.Magnitude > 50 then
                   LastPosition = PrimaryPart.CFrame
               end
           end)
        end)
                        end)

                        neus:AddButton("Unbag", function(IhateGayPeople)
                            local LP = game.Players.LocalPlayer;

                            for i,v in ipairs(LP.Character:GetDescendants()) do
                                if v.Name == "Christmas_Sock" then v:Destroy()
                                    end;
                                end;

                                LP.Character.ChildAdded:Connect(function()
                                wait(0.3)
                                for i,v in ipairs(LP.Character:GetDescendants()) do
                                if v.Name == "Christmas_Sock" then v:Destroy()
                                end;
                                end;
                                end);
                        end)




                        neus:AddButton("Triggerbot (T)", function(IhateGayPeople)
                            -- Settings
                          local HoldClick = true
                          local Hotkey = 't' -- Leave blank for always on
                          local HotkeyToggle = true -- True if you want it to toggle on and off with a click

                          local Players = game:GetService('Players')
                          local RunService = game:GetService('RunService')

                          local LocalPlayer = Players.LocalPlayer
                          local Mouse = LocalPlayer:GetMouse()

                          local Toggle = (Hotkey ~= '')
                          local CurrentlyPressed = false

                          Mouse.KeyDown:Connect(function(key)
                              if HotkeyToggle == true and key == Hotkey then
                                  Toggle = not Toggle
                              elseif 
                                  key == Hotkey then
                                  Toggle = true
                              end
                          end)

                          Mouse.KeyUp:Connect(function(key)
                              if HotkeyToggle ~= true and key == Hotkey then
                                  Toggle = false
                              end
                          end)

                          RunService.RenderStepped:Connect(function()
                              if Toggle then
                                  if Mouse.Target then
                                      if Mouse.Target.Parent:FindFirstChild('Humanoid') then
                                          if HoldClick then
                                              if not CurrentlyPressed then
                                                  CurrentlyPressed = true
                                                  mouse1press()
                                              end
                                          else
                                              mouse1click()
                                          end
                                      else
                                          if HoldClick then
                                              CurrentlyPressed = false
                                              mouse1release()
                                          end
                                      end
                                  end
                              end
                          end)
                        end) 


local ToggleBind = neus:AddToggle("Legit Desync AA", false, function(e)
getgenv().slammeAA = e
end)

ToggleBind:AddKeybind()

neus:AddButton("Antiban", function(IhateGayPeople)
     assert(getrawmetatable)
            grm = getrawmetatable(game)
            setreadonly(grm, false)
            old = grm.__namecall
            grm.__namecall = newcclosure(function(self, ...)
                local args = {...}
                if tostring(args[1]) == "TeleportDetect" then
                    return
                elseif tostring(args[1]) == "CHECKER_1" then
                    return
                elseif tostring(args[1]) == "CHECKER" then
                    return
                elseif tostring(args[1]) == "GUI_CHECK" then
                    return
                elseif tostring(args[1]) == "OneMoreTime" then
                    return
                elseif tostring(args[1]) == "checkingSPEED" then
                    return
                elseif tostring(args[1]) == "BANREMOTE" then
                    return
                elseif tostring(args[1]) == "PERMAIDBAN" then
                    return
                elseif tostring(args[1]) == "KICKREMOTE" then
                    return
                elseif tostring(args[1]) == "BR_KICKPC" then
                    return
                elseif tostring(args[1]) == "BR_KICKMOBILE" then
                    return
                end
                return old(self, ...)
                end)
end)

neus:AddToggle("Anti Stomp", false, function(first)
    getgenv().antistomplo = first

end)

neus:AddToggle("Jumpable Desync", false, function(first)
    _G.JumpableAnti = first
end)

neus:AddToggle("No Velocity", false, function(first)
    _G.PredictionBreaker = first
end)

neus:AddToggle("Blatant Desync", false, function(first)
    _G.Desync = first
end)



neus:AddButton("Realistic Macro (T)", function(IhateGayPeople)
     local Player = game:GetService("Players").LocalPlayer
    local Mouse = Player:GetMouse()
    local SpeedGlitch = false
    local Wallet = Player.Backpack:FindFirstChild("Wallet")

    local UniversalAnimation = Instance.new("Animation")

    function stopTracks()
        for _, v in next, game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):GetPlayingAnimationTracks() do
            if (v.Animation.AnimationId:match("rbxassetid")) then
                v:Stop()
            end
        end
    end

    function loadAnimation(id)
        if UniversalAnimation.AnimationId == id then
            stopTracks()
            UniversalAnimation.AnimationId = "1"
        else
            UniversalAnimation.AnimationId = id
            local animationTrack = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):LoadAnimation(UniversalAnimation)
            animationTrack:Play()
        end
    end

    Mouse.KeyDown:Connect(function(Key)
        if Key == "t" then
            SpeedGlitch = not SpeedGlitch
            if SpeedGlitch == true then
                stopTracks()
                loadAnimation("rbxassetid://3189777795")
                wait(1.5)
                Wallet.Parent = Player.Character
                wait(0.15)
                Player.Character:FindFirstChild("Wallet").Parent = Player.Backpack
                wait(0.05)
                repeat game:GetService("RunService").Heartbeat:wait()
                    keypress(0x49)
                    game:GetService("RunService").Heartbeat:wait()
                    keypress(0x4F)
                    game:GetService("RunService").Heartbeat:wait()
                    keyrelease(0x49)
                    game:GetService("RunService").Heartbeat:wait()
                    keyrelease(0x4F)
                    game:GetService("RunService").Heartbeat:wait()
                until SpeedGlitch == false
            end
        end
    end)

end)

neus:AddButton("Fake Macro (T)", function(IhateGayPeople)
    mouse = game.Players.LocalPlayer:GetMouse()
    down = false
    local plr = game:GetService('Players').LocalPlayer

        function onButton1Down(mouse)
        down = true
        while down do
        if not down then break end
        local char = plr.Character

        char.HumanoidRootPart.Velocity = char.HumanoidRootPart.CFrame.lookVector * 250
        wait()
        end
        end

        function onButton1Up(mouse)
        down = false
        end

        function onSelected(mouse)
        mouse.KeyDown:connect(function(k) if k:lower()=="t"then onButton1Down(mouse)end end)
        mouse.KeyUp:connect(function(k) if k:lower()=="t"then onButton1Up(mouse)end end)
        end

        onSelected(game.Players.LocalPlayer:GetMouse())
end)

neus:AddButton("Animation Pack", function(IhateGayPeople)
repeat
    wait()
until game:IsLoaded() and game.Players.LocalPlayer.Character:FindFirstChild("FULLY_LOADED_CHAR") and game.Players.LocalPlayer.PlayerGui.MainScreenGui:FindFirstChild("AnimationPack") and game.Players.LocalPlayer.PlayerGui.MainScreenGui:FindFirstChild("AnimationPlusPack")

if game.ReplicatedStorage.ClientAnimations:FindFirstChild("Lean") then
    game.ReplicatedStorage.ClientAnimations.Lean:Destroy()
end

if game.ReplicatedStorage.ClientAnimations:FindFirstChild("Lay") then
    game.ReplicatedStorage.ClientAnimations.Lay:Destroy()
end

if game.ReplicatedStorage.ClientAnimations:FindFirstChild("Dance1") then
    game.ReplicatedStorage.ClientAnimations.Dance1:Destroy()
end

if game.ReplicatedStorage.ClientAnimations:FindFirstChild("Dance2") then
    game.ReplicatedStorage.ClientAnimations.Dance2:Destroy()
end

if game.ReplicatedStorage.ClientAnimations:FindFirstChild("Greet") then
    game.ReplicatedStorage.ClientAnimations.Greet:Destroy()
end

if game.ReplicatedStorage.ClientAnimations:FindFirstChild("Chest Pump") then
    game.ReplicatedStorage.ClientAnimations["Chest Pump"]:Destroy()
end

if game.ReplicatedStorage.ClientAnimations:FindFirstChild("Praying") then
    game.ReplicatedStorage.ClientAnimations.Praying:Destroy()
end

if game.ReplicatedStorage.ClientAnimations:FindFirstChild("TheDefault") then
    game.ReplicatedStorage.ClientAnimations.TheDefault:Destroy()
end

if game.ReplicatedStorage.ClientAnimations:FindFirstChild("Sturdy") then
    game.ReplicatedStorage.ClientAnimations.Sturdy:Destroy()
end

if game.ReplicatedStorage.ClientAnimations:FindFirstChild("Rossy") then
    game.ReplicatedStorage.ClientAnimations.Rossy:Destroy()
end

if game.ReplicatedStorage.ClientAnimations:FindFirstChild("Griddy") then
    game.ReplicatedStorage.ClientAnimations.Griddy:Destroy()
end

if game.ReplicatedStorage.ClientAnimations:FindFirstChild("TPose") then
    game.ReplicatedStorage.ClientAnimations.TPose:Destroy()
end

if game.ReplicatedStorage.ClientAnimations:FindFirstChild("SpeedBlitz") then
    game.ReplicatedStorage.ClientAnimations.SpeedBlitz:Destroy()
end

local Animations = game.ReplicatedStorage.ClientAnimations

local LeanAnimation = Instance.new("Animation", Animations)
LeanAnimation.Name = "Lean"
LeanAnimation.AnimationId = "rbxassetid://3152375249"

local LayAnimation = Instance.new("Animation", Animations)
LayAnimation.Name = "Lay"
LayAnimation.AnimationId = "rbxassetid://3152378852"

local Dance1Animation = Instance.new("Animation", Animations)
Dance1Animation.Name = "Dance1"
Dance1Animation.AnimationId = "rbxassetid://3189773368"

local Dance2Animation = Instance.new("Animation", Animations)
Dance2Animation.Name = "Dance2"
Dance2Animation.AnimationId = "rbxassetid://3189776546"

local GreetAnimation = Instance.new("Animation", Animations)
GreetAnimation.Name = "Greet"
GreetAnimation.AnimationId = "rbxassetid://3189777795"

local ChestPumpAnimation = Instance.new("Animation", Animations)
ChestPumpAnimation.Name = "Chest Pump"
ChestPumpAnimation.AnimationId = "rbxassetid://3189779152"

local PrayingAnimation = Instance.new("Animation", Animations)
PrayingAnimation.Name = "Praying"
PrayingAnimation.AnimationId = "rbxassetid://3487719500"

local TheDefaultAnimation = Instance.new("Animation", Animations)
TheDefaultAnimation.Name = "TheDefault"
TheDefaultAnimation.AnimationId = "rbxassetid://11710529975" -- FIX THIS

local SturdyAnimation = Instance.new("Animation", Animations)
SturdyAnimation.Name = "Sturdy"
SturdyAnimation.AnimationId = "rbxassetid://11710524717"

local RossyAnimation = Instance.new("Animation", Animations)
RossyAnimation.Name = "Rossy"
RossyAnimation.AnimationId = "rbxassetid://11710527244"

local GriddyAnimation = Instance.new("Animation", Animations)
GriddyAnimation.Name = "Griddy"
GriddyAnimation.AnimationId = "rbxassetid://11710529220"

local TPoseAnimation = Instance.new("Animation", Animations)
TPoseAnimation.Name = "TPose"
TPoseAnimation.AnimationId = "rbxassetid://11710524200"

local SpeedBlitzAnimation = Instance.new("Animation", Animations)
SpeedBlitzAnimation.Name = "SpeedBlitz"
SpeedBlitzAnimation.AnimationId = "rbxassetid://11710541744"

function AnimationPack(Character)
    Character:WaitForChild'Humanoid'
    repeat
        wait()
    until game.Players.LocalPlayer.Character:FindFirstChild("FULLY_LOADED_CHAR") and game.Players.LocalPlayer.PlayerGui.MainScreenGui:FindFirstChild("AnimationPack") and game.Players.LocalPlayer.PlayerGui.MainScreenGui:FindFirstChild("AnimationPlusPack")

    local AnimationPack = game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.AnimationPack
    local AnimationPackPlus = game:GetService("Players").LocalPlayer.PlayerGui.MainScreenGui.AnimationPlusPack
    local ScrollingFrame = AnimationPack.ScrollingFrame
    local CloseButton = AnimationPack.CloseButton
    local ScrollingFramePlus = AnimationPackPlus.ScrollingFrame
    local CloseButtonPlus = AnimationPackPlus.CloseButton

    local Lean = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(LeanAnimation)

    local Lay = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(LayAnimation)

    local Dance1 = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(Dance1Animation)

    local Dance2 = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(Dance2Animation)

    local Greet = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(GreetAnimation)

    local ChestPump = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(ChestPumpAnimation)

    local Praying = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(PrayingAnimation)

    local TheDefault = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(TheDefaultAnimation)

    local Sturdy = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(SturdyAnimation)

    local Rossy = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(RossyAnimation)

    local Griddy = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(GriddyAnimation)

    local TPose = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(TPoseAnimation)

    local SpeedBlitz = game:GetService("Players").LocalPlayer.Character.Humanoid:LoadAnimation(SpeedBlitzAnimation)

    AnimationPack.Visible = true

    AnimationPackPlus.Visible = true

    ScrollingFrame.UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

    ScrollingFramePlus.UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

    for i,v in pairs(ScrollingFrame:GetChildren()) do
        if v.Name == "TextButton" then
            if v.Text == "Lean" then
                v.Name = "LeanButton"
            end
        end
    end

    for i,v in pairs(ScrollingFrame:GetChildren()) do
        if v.Name == "TextButton" then
            if v.Text == "Lay" then
                v.Name = "LayButton"
            end
        end
    end

    for i,v in pairs(ScrollingFrame:GetChildren()) do
        if v.Name == "TextButton" then
            if v.Text == "Dance1" then
                v.Name = "Dance1Button"
            end
        end
    end

    for i,v in pairs(ScrollingFrame:GetChildren()) do
        if v.Name == "TextButton" then
            if v.Text == "Dance2" then
                v.Name = "Dance2Button"
            end
        end
    end

    for i,v in pairs(ScrollingFrame:GetChildren()) do
        if v.Name == "TextButton" then
            if v.Text == "Greet" then
                v.Name = "GreetButton"
            end
        end
    end

    for i,v in pairs(ScrollingFrame:GetChildren()) do
        if v.Name == "TextButton" then
            if v.Text == "Chest Pump" then
                v.Name = "ChestPumpButton"
            end
        end
    end

    for i,v in pairs(ScrollingFrame:GetChildren()) do
        if v.Name == "TextButton" then
            if v.Text == "Praying" then
                v.Name = "PrayingButton"
            end
        end
    end

    for i,v in pairs(ScrollingFramePlus:GetChildren()) do
        if v.Name == "TextButton" then
            if v.Text == "The Default" then
                v.Name = "TheDefaultButton"
            end
        end
    end

    for i,v in pairs(ScrollingFramePlus:GetChildren()) do
        if v.Name == "TextButton" then
            if v.Text == "Sturdy" then
                v.Name = "SturdyButton"
            end
        end
    end

    for i,v in pairs(ScrollingFramePlus:GetChildren()) do
        if v.Name == "TextButton" then
            if v.Text == "Rossy" then
                v.Name = "RossyButton"
            end
        end
    end

    for i,v in pairs(ScrollingFramePlus:GetChildren()) do
        if v.Name == "TextButton" then
            if v.Text == "Griddy" then
                v.Name = "GriddyButton"
            end
        end
    end

    for i,v in pairs(ScrollingFramePlus:GetChildren()) do
        if v.Name == "TextButton" then
            if v.Text == "T Pose" then
                v.Name = "TPoseButton"
            end
        end
    end

    for i,v in pairs(ScrollingFramePlus:GetChildren()) do
        if v.Name == "TextButton" then
            if v.Text == "Speed Blitz" then
                v.Name = "SpeedBlitzButton"
            end
        end
    end

    function Stop()
        Lean:Stop()
        Lay:Stop()
        Dance1:Stop()
        Dance2:Stop()
        Greet:Stop()
        ChestPump:Stop()
        Praying:Stop()
        TheDefault:Stop()
        Sturdy:Stop()
        Rossy:Stop()
        Griddy:Stop()
        TPose:Stop()
        SpeedBlitz:Stop()
    end

    --credit Zackary#1011 (again cuz someone might skid this to their script)

    local LeanTextButton = ScrollingFrame.LeanButton
    local LayTextButton = ScrollingFrame.LayButton
    local Dance1TextButton = ScrollingFrame.Dance1Button
    local Dance2TextButton = ScrollingFrame.Dance2Button
    local GreetTextButton = ScrollingFrame.GreetButton
    local ChestPumpTextButton = ScrollingFrame.ChestPumpButton
    local PrayingTextButton = ScrollingFrame.PrayingButton
    local TheDefaultTextButton = ScrollingFramePlus.TheDefaultButton
    local SturdyTextButton = ScrollingFramePlus.SturdyButton
    local RossyTextButton = ScrollingFramePlus.RossyButton
    local GriddyTextButton = ScrollingFramePlus.GriddyButton
    local TPoseTextButton = ScrollingFramePlus.TPoseButton
    local SpeedBlitzTextButton = ScrollingFramePlus.SpeedBlitzButton

    AnimationPack.MouseButton1Click:Connect(function()
        if ScrollingFrame.Visible == false then
            ScrollingFrame.Visible = true
            CloseButton.Visible = true
            AnimationPackPlus.Visible = false
        end
    end)
    AnimationPackPlus.MouseButton1Click:Connect(function()
        if ScrollingFramePlus.Visible == false then
            ScrollingFramePlus.Visible = true
            CloseButtonPlus.Visible = true
            AnimationPack.Visible = false
        end
    end)
    CloseButton.MouseButton1Click:Connect(function()
        if ScrollingFrame.Visible == true then
            ScrollingFrame.Visible = false
            CloseButton.Visible = false
            AnimationPackPlus.Visible = true
        end
    end)
    CloseButtonPlus.MouseButton1Click:Connect(function()
        if ScrollingFramePlus.Visible == true then
            ScrollingFramePlus.Visible = false
            CloseButtonPlus.Visible = false
            AnimationPack.Visible = true
        end
    end)

    LeanTextButton.MouseButton1Click:Connect(function()
        Stop()
        Lean:Play()
    end)
    LayTextButton.MouseButton1Click:Connect(function()
        Stop()
        Lay:Play()
    end)
    Dance1TextButton.MouseButton1Click:Connect(function()
        Stop()
        Dance1:Play()
    end)
    Dance2TextButton.MouseButton1Click:Connect(function()
        Stop()
        Dance2:Play()
    end)
    GreetTextButton.MouseButton1Click:Connect(function()
        Stop()
        Greet:Play()
    end)
    ChestPumpTextButton.MouseButton1Click:Connect(function()
        Stop()
        ChestPump:Play()
    end)
    PrayingTextButton.MouseButton1Click:Connect(function()
        Stop()
        Praying:Play()
    end)
    TheDefaultTextButton.MouseButton1Click:Connect(function()
        Stop()
        TheDefault:Play()
    end)
    SturdyTextButton.MouseButton1Click:Connect(function()
        Stop()
        Sturdy:Play()
    end)
    RossyTextButton.MouseButton1Click:Connect(function()
        Stop()
        Rossy:Play()
    end)
    GriddyTextButton.MouseButton1Click:Connect(function()
        Stop()
        Griddy:Play()
    end)
    TPoseTextButton.MouseButton1Click:Connect(function()
        Stop()
        TPose:Play()
    end)
    SpeedBlitzTextButton.MouseButton1Click:Connect(function()
        Stop()
        SpeedBlitz:Play()
    end)

    game:GetService("Players").LocalPlayer.Character.Humanoid.Running:Connect(function()
        Stop()
    end)

    game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function()
        Stop()
    end)
end
AnimationPack(game.Players.LocalPlayer.Character)
game.Players.LocalPlayer.CharacterAdded:Connect(AnimationPack)
end)

neus:AddButton("Unbroken Animation", function(IhateGayPeople)
    local Animate = game.Players.LocalPlayer.Character.Animate

Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616163682"

end)

fun:AddButton("Rejoin", function(IhateGayPeople)
    local TeleportService = game:GetService("TeleportService")
    local Players = game:GetService("Players")
    local LocalPlayer = Players.LocalPlayer

    local Rejoin = coroutine.create(function()
        local Success, ErrorMessage = pcall(function()
            TeleportService:Teleport(game.PlaceId, LocalPlayer)
        end)

        if ErrorMessage and not Success then
            warn(ErrorMessage)
        end
    end)

    coroutine.resume(Rejoin)
end)
fun:AddButton("Server Hop", function(IhateGayPeople)
    local module = loadstring(game:HttpGet"https://raw.githubusercontent.com/LeoKholYt/roblox/main/lk_serverhop.lua")()

    module:Teleport(game.PlaceId) 
end)

neus:AddButton("Anti Aim Viewer", function(IhateGayPeople)
    hookfunction(game.Players.LocalPlayer.IsInGroup, function() return true end)

    loadstring(game:HttpGet("https://raw.githubusercontent.com/Nosssa/NossLock/main/AntiAimViewer"))()
end)

fun:AddButton("Call All", function(IhateGayPeople)
    local StarterGui = game:GetService("StarterGui")
    for i,v in pairs(game.Players:GetChildren()) do
        if v.Name ~= game.Players.LocalPlayer.Name then
            game.Players.LocalPlayer.Backpack["[Phone]"].Parent = game.Players.LocalPlayer.Character
            game.ReplicatedStorage.MainEvent:FireServer("PhoneCall", tostring(v.Name))
            task.wait()
            game.Players.LocalPlayer.Character["[Phone]"].Parent = game.Players.LocalPlayer.Backpack
            task.wait()
            local success, result = pcall(StarterGui.SetCoreGuiEnabled, StarterGui, Enum.CoreGuiType.Backpack, true)
            task.wait(.2)
        end
    end
end)

fun:AddButton("Bag All", function(IhateGayPeople)
    local bag = true
    local takingbag = true
    local Plr = game.Players.LocalPlayer
    repeat wait(1)
        if game.Players.LocalPlayer.Character:FindFirstChild("[BrownBag]") == nil then
            repeat
                takingbag = true
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-314.580566, 51.1788902, -727.484558)
                wait()
                fireclickdetector(workspace.Ignored.Shop["[BrownBag] - $25"].ClickDetector)
            until Plr.Backpack:FindFirstChild("[BrownBag]")
            Plr.Backpack["[BrownBag]"].Parent = Plr.Character
            takingbag = false
        end

        if takingbag == false then
            local chars
            for i, v  in pairs(game.Players:GetPlayers()) do
                if v.Character and v.Character:FindFirstChild("Christmas_Sock") == nil and v.Character:FindFirstChild("FULLY_LOADED_CHAR") and v ~= Plr then
                    chars = v.Character
                    if Plr.Character:FindFirstChild("[BrownBag]") then
                        Plr.Character["[BrownBag]"]:Activate()
                    end
                    Plr.Character.HumanoidRootPart.CFrame = v.Character.UpperTorso.CFrame * CFrame.new(0, 0, -2)
                end
                wait(0.005)
            end
            if not chars then
                bag = false
            end
        end
    until bag == false
end)

fun:AddButton("Freecam (Shift+C)", function(IhateGayPeople)
    -- CHANGE BIND'S AT LINE 61, Made by slammy

function sandbox(var,func)
    local env = getfenv(func)
    local newenv = setmetatable({},{
    __index = function(self,k)
    if k=="script" then
    return var
    else
    return env[k]
    end
    end,
    })
    setfenv(func,newenv)
    return func
    end
    cors = {}
    mas = Instance.new("Model",game:GetService("Lighting"))
    LocalScript0 = Instance.new("LocalScript")
    LocalScript0.Name = "FreeCamera"
    LocalScript0.Parent = mas
    table.insert(cors,sandbox(LocalScript0,function()


    local pi    = math.pi
    local abs   = math.abs
    local clamp = math.clamp
    local exp   = math.exp
    local rad   = math.rad
    local sign  = math.sign
    local sqrt  = math.sqrt
    local tan   = math.tan

    local ContextActionService = game:GetService("ContextActionService")
    local Players = game:GetService("Players")
    local RunService = game:GetService("RunService")
    local StarterGui = game:GetService("StarterGui")
    local UserInputService = game:GetService("UserInputService")

    local LocalPlayer = Players.LocalPlayer
    if not LocalPlayer then
    Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
    LocalPlayer = Players.LocalPlayer
    end

    local Camera = workspace.CurrentCamera
    workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function()
    local newCamera = workspace.CurrentCamera
    if newCamera then
    Camera = newCamera
    end
    end)

    ------------------------------------------------------------------------

    local TOGGLE_INPUT_PRIORITY = Enum.ContextActionPriority.Low.Value
    local INPUT_PRIORITY = Enum.ContextActionPriority.High.Value
    local FREECAM_MACRO_KB = {Enum.KeyCode.LeftShift, Enum.KeyCode.C}

    local NAV_GAIN = Vector3.new(1, 1, 1)*64
    local PAN_GAIN = Vector2.new(0.75, 1)*8
    local FOV_GAIN = 300

    local PITCH_LIMIT = rad(90)

    local VEL_STIFFNESS = 1.5
    local PAN_STIFFNESS = 1.0
    local FOV_STIFFNESS = 4.0

    ------------------------------------------------------------------------

    local Spring = {} do
    Spring.__index = Spring

    function Spring.new(freq, pos)
    local self = setmetatable({}, Spring)
    self.f = freq
    self.p = pos
    self.v = pos*0
    return self
    end

    function Spring:Update(dt, goal)
    local f = self.f*2*pi
    local p0 = self.p
    local v0 = self.v

    local offset = goal - p0
    local decay = exp(-f*dt)

    local p1 = goal + (v0*dt - offset*(f*dt + 1))*decay
    local v1 = (f*dt*(offset*f - v0) + v0)*decay

    self.p = p1
    self.v = v1

    return p1
    end

    function Spring:Reset(pos)
    self.p = pos
    self.v = pos*0
    end
    end

    ------------------------------------------------------------------------

    local cameraPos = Vector3.new()
    local cameraRot = Vector2.new()
    local cameraFov = 0

    local velSpring = Spring.new(VEL_STIFFNESS, Vector3.new())
    local panSpring = Spring.new(PAN_STIFFNESS, Vector2.new())
    local fovSpring = Spring.new(FOV_STIFFNESS, 0)

    ------------------------------------------------------------------------

    local Input = {} do
    local thumbstickCurve do
    local K_CURVATURE = 2.0
    local K_DEADZONE = 0.15

    local function fCurve(x)
    return (exp(K_CURVATURE*x) - 1)/(exp(K_CURVATURE) - 1)
    end

    local function fDeadzone(x)
    return fCurve((x - K_DEADZONE)/(1 - K_DEADZONE))
    end

    function thumbstickCurve(x)
    return sign(x)*clamp(fDeadzone(abs(x)), 0, 1)
    end
    end

    local gamepad = {
    ButtonX = 0,
    ButtonY = 0,
    DPadDown = 0,
    DPadUp = 0,
    ButtonL2 = 0,
    ButtonR2 = 0,
    Thumbstick1 = Vector2.new(),
    Thumbstick2 = Vector2.new(),
    }

    local keyboard = {
    W = 0,
    A = 0,
    S = 0,
    D = 0,
    E = 0,
    Q = 0,
    U = 0,
    H = 0,
    J = 0,
    K = 0,
    I = 0,
    Y = 0,
    Up = 0,
    Down = 0,
    LeftShift = 0,
    RightShift = 0,
    }

    local mouse = {
    Delta = Vector2.new(),
    MouseWheel = 0,
    }

    local NAV_GAMEPAD_SPEED  = Vector3.new(1, 1, 1)
    local NAV_KEYBOARD_SPEED = Vector3.new(1, 1, 1)
    local PAN_MOUSE_SPEED    = Vector2.new(1, 1)*(pi/64)
    local PAN_GAMEPAD_SPEED  = Vector2.new(1, 1)*(pi/8)
    local FOV_WHEEL_SPEED    = 1.0
    local FOV_GAMEPAD_SPEED  = 0.25
    local NAV_ADJ_SPEED      = 0.75
    local NAV_SHIFT_MUL      = 0.25

    local navSpeed = 1

    function Input.Vel(dt)
    navSpeed = clamp(navSpeed + dt*(keyboard.Up - keyboard.Down)*NAV_ADJ_SPEED, 0.01, 4)

    local kGamepad = Vector3.new(
    thumbstickCurve(gamepad.Thumbstick1.x),
    thumbstickCurve(gamepad.ButtonR2) - thumbstickCurve(gamepad.ButtonL2),
    thumbstickCurve(-gamepad.Thumbstick1.y)
    )*NAV_GAMEPAD_SPEED

    local kKeyboard = Vector3.new(
    keyboard.D - keyboard.A + keyboard.K - keyboard.H,
    keyboard.E - keyboard.Q + keyboard.I - keyboard.Y,
    keyboard.S - keyboard.W + keyboard.J - keyboard.U
    )*NAV_KEYBOARD_SPEED

    local shift = UserInputService:IsKeyDown(Enum.KeyCode.LeftShift) or UserInputService:IsKeyDown(Enum.KeyCode.RightShift)

    return (kGamepad + kKeyboard)*(navSpeed*(shift and NAV_SHIFT_MUL or 1))
    end

    function Input.Pan(dt)
    local kGamepad = Vector2.new(
    thumbstickCurve(gamepad.Thumbstick2.y),
    thumbstickCurve(-gamepad.Thumbstick2.x)
    )*PAN_GAMEPAD_SPEED
    local kMouse = mouse.Delta*PAN_MOUSE_SPEED
    mouse.Delta = Vector2.new()
    return kGamepad + kMouse
    end

    function Input.Fov(dt)
    local kGamepad = (gamepad.ButtonX - gamepad.ButtonY)*FOV_GAMEPAD_SPEED
    local kMouse = mouse.MouseWheel*FOV_WHEEL_SPEED
    mouse.MouseWheel = 0
    return kGamepad + kMouse
    end

    do
    local function Keypress(action, state, input)
    keyboard[input.KeyCode.Name] = state == Enum.UserInputState.Begin and 1 or 0
    return Enum.ContextActionResult.Sink
    end

    local function GpButton(action, state, input)
    gamepad[input.KeyCode.Name] = state == Enum.UserInputState.Begin and 1 or 0
    return Enum.ContextActionResult.Sink
    end

    local function MousePan(action, state, input)
    local delta = input.Delta
    mouse.Delta = Vector2.new(-delta.y, -delta.x)
    return Enum.ContextActionResult.Sink
    end

    local function Thumb(action, state, input)
    gamepad[input.KeyCode.Name] = input.Position
    return Enum.ContextActionResult.Sink
    end

    local function Trigger(action, state, input)
    gamepad[input.KeyCode.Name] = input.Position.z
    return Enum.ContextActionResult.Sink
    end

    local function MouseWheel(action, state, input)
    mouse[input.UserInputType.Name] = -input.Position.z
    return Enum.ContextActionResult.Sink
    end

    local function Zero(t)
    for k, v in pairs(t) do
    t[k] = v*0
    end
    end

    function Input.StartCapture()
    ContextActionService:BindActionAtPriority("FreecamKeyboard", Keypress, false, INPUT_PRIORITY,
    Enum.KeyCode.W, Enum.KeyCode.U,
    Enum.KeyCode.A, Enum.KeyCode.H,
    Enum.KeyCode.S, Enum.KeyCode.J,
    Enum.KeyCode.D, Enum.KeyCode.K,
    Enum.KeyCode.E, Enum.KeyCode.I,
    Enum.KeyCode.Q, Enum.KeyCode.Y,
    Enum.KeyCode.Up, Enum.KeyCode.Down
    )
    ContextActionService:BindActionAtPriority("FreecamMousePan",          MousePan,   false, INPUT_PRIORITY, Enum.UserInputType.MouseMovement)
    ContextActionService:BindActionAtPriority("FreecamMouseWheel",        MouseWheel, false, INPUT_PRIORITY, Enum.UserInputType.MouseWheel)
    ContextActionService:BindActionAtPriority("FreecamGamepadButton",     GpButton,   false, INPUT_PRIORITY, Enum.KeyCode.ButtonX, Enum.KeyCode.ButtonY)
    ContextActionService:BindActionAtPriority("FreecamGamepadTrigger",    Trigger,    false, INPUT_PRIORITY, Enum.KeyCode.ButtonR2, Enum.KeyCode.ButtonL2)
    ContextActionService:BindActionAtPriority("FreecamGamepadThumbstick", Thumb,      false, INPUT_PRIORITY, Enum.KeyCode.Thumbstick1, Enum.KeyCode.Thumbstick2)
    end

    function Input.StopCapture()
    navSpeed = 1
    Zero(gamepad)
    Zero(keyboard)
    Zero(mouse)
    ContextActionService:UnbindAction("FreecamKeyboard")
    ContextActionService:UnbindAction("FreecamMousePan")
    ContextActionService:UnbindAction("FreecamMouseWheel")
    ContextActionService:UnbindAction("FreecamGamepadButton")
    ContextActionService:UnbindAction("FreecamGamepadTrigger")
    ContextActionService:UnbindAction("FreecamGamepadThumbstick")
    end
    end
    end

    local function GetFocusDistance(cameraFrame)
    local znear = 0.1
    local viewport = Camera.ViewportSize
    local projy = 2*tan(cameraFov/2)
    local projx = viewport.x/viewport.y*projy
    local fx = cameraFrame.rightVector
    local fy = cameraFrame.upVector
    local fz = cameraFrame.lookVector

    local minVect = Vector3.new()
    local minDist = 512

    for x = 0, 1, 0.5 do
    for y = 0, 1, 0.5 do
    local cx = (x - 0.5)*projx
    local cy = (y - 0.5)*projy
    local offset = fx*cx - fy*cy + fz
    local origin = cameraFrame.p + offset*znear
    local part, hit = workspace:FindPartOnRay(Ray.new(origin, offset.unit*minDist))
    local dist = (hit - origin).magnitude
    if minDist > dist then
    minDist = dist
    minVect = offset.unit
    end
    end
    end

    return fz:Dot(minVect)*minDist
    end

    ------------------------------------------------------------------------

    local function StepFreecam(dt)
    local vel = velSpring:Update(dt, Input.Vel(dt))
    local pan = panSpring:Update(dt, Input.Pan(dt))
    local fov = fovSpring:Update(dt, Input.Fov(dt))

    local zoomFactor = sqrt(tan(rad(70/2))/tan(rad(cameraFov/2)))

    cameraFov = clamp(cameraFov + fov*FOV_GAIN*(dt/zoomFactor), 1, 120)
    cameraRot = cameraRot + pan*PAN_GAIN*(dt/zoomFactor)
    cameraRot = Vector2.new(clamp(cameraRot.x, -PITCH_LIMIT, PITCH_LIMIT), cameraRot.y%(2*pi))

    local cameraCFrame = CFrame.new(cameraPos)*CFrame.fromOrientation(cameraRot.x, cameraRot.y, 0)*CFrame.new(vel*NAV_GAIN*dt)
    cameraPos = cameraCFrame.p

    Camera.CFrame = cameraCFrame
    Camera.Focus = cameraCFrame*CFrame.new(0, 0, -GetFocusDistance(cameraCFrame))
    Camera.FieldOfView = cameraFov
    end

    ------------------------------------------------------------------------

    local PlayerState = {} do
    local mouseIconEnabled
    local cameraSubject
    local cameraType
    local cameraFocus
    local cameraCFrame
    local cameraFieldOfView
    local screenGuis = {}
    local coreGuis = {
    Backpack = true,
    Chat = true,
    Health = true,
    PlayerList = true,
    }
    local setCores = {
    BadgesNotificationsActive = true,
    PointsNotificationsActive = true,
    }

    -- Save state and set up for freecam
    function PlayerState.Push()
    for name in pairs(coreGuis) do
    coreGuis[name] = StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType[name])
    StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType[name], false)
    end
    for name in pairs(setCores) do
    setCores[name] = StarterGui:GetCore(name)
    StarterGui:SetCore(name, false)
    end
    local playergui = LocalPlayer:FindFirstChildOfClass("PlayerGui")
    if playergui then
    for _, gui in pairs(playergui:GetChildren()) do
    if gui:IsA("ScreenGui") and gui.Enabled then
    screenGuis[#screenGuis + 1] = gui
    gui.Enabled = false
    end
    end
    end

    cameraFieldOfView = Camera.FieldOfView
    Camera.FieldOfView = 70

    cameraType = Camera.CameraType
    Camera.CameraType = Enum.CameraType.Custom

    cameraSubject = Camera.CameraSubject
    Camera.CameraSubject = nil

    cameraCFrame = Camera.CFrame
    cameraFocus = Camera.Focus

    mouseIconEnabled = UserInputService.MouseIconEnabled
    UserInputService.MouseIconEnabled = false

    mouseBehavior = UserInputService.MouseBehavior
    UserInputService.MouseBehavior = Enum.MouseBehavior.Default
    end

    -- Restore state
    function PlayerState.Pop()
    for name, isEnabled in pairs(coreGuis) do
    StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType[name], isEnabled)
    end
    for name, isEnabled in pairs(setCores) do
    StarterGui:SetCore(name, isEnabled)
    end
    for _, gui in pairs(screenGuis) do
    if gui.Parent then
    gui.Enabled = true
    end
    end

    Camera.FieldOfView = cameraFieldOfView
    cameraFieldOfView = nil

    Camera.CameraType = cameraType
    cameraType = nil

    Camera.CameraSubject = cameraSubject
    cameraSubject = nil

    Camera.CFrame = cameraCFrame
    cameraCFrame = nil

    Camera.Focus = cameraFocus
    cameraFocus = nil

    UserInputService.MouseIconEnabled = mouseIconEnabled
    mouseIconEnabled = nil

    UserInputService.MouseBehavior = mouseBehavior
    mouseBehavior = nil
    end
    end

    local function StartFreecam()
    local cameraCFrame = Camera.CFrame
    cameraRot = Vector2.new(cameraCFrame:toEulerAnglesYXZ())
    cameraPos = cameraCFrame.p
    cameraFov = Camera.FieldOfView

    velSpring:Reset(Vector3.new())
    panSpring:Reset(Vector2.new())
    fovSpring:Reset(0)

    PlayerState.Push()
    RunService:BindToRenderStep("Freecam", Enum.RenderPriority.Camera.Value, StepFreecam)
    Input.StartCapture()
    end

    local function StopFreecam()
    Input.StopCapture()
    RunService:UnbindFromRenderStep("Freecam")
    PlayerState.Pop()
    end

    ------------------------------------------------------------------------

    do
    local enabled = false

    local function ToggleFreecam()
    if enabled then
    StopFreecam()
    else
    StartFreecam()
    end
    enabled = not enabled
    end

    local function CheckMacro(macro)
    for i = 1, #macro - 1 do
    if not UserInputService:IsKeyDown(macro[i]) then
    return
    end
    end
    ToggleFreecam()
    end

    local function HandleActivationInput(action, state, input)
    if state == Enum.UserInputState.Begin then
    if input.KeyCode == FREECAM_MACRO_KB[#FREECAM_MACRO_KB] then
    CheckMacro(FREECAM_MACRO_KB)
    end
    end
    return Enum.ContextActionResult.Pass
    end

    ContextActionService:BindActionAtPriority("FreecamToggle", HandleActivationInput, false, TOGGLE_INPUT_PRIORITY, FREECAM_MACRO_KB[#FREECAM_MACRO_KB])
    end
    end))
    for i,v in pairs(mas:GetChildren()) do
    v.Parent = game:GetService("Players").LocalPlayer.PlayerGui
    pcall(function() v:MakeJoints() end)
    end
    mas:Destroy()
    for i,v in pairs(cors) do
    spawn(function()
    pcall(v)
    end)
    end
end)

fun:AddTextbox("FOV", 70, function(State)
    workspace.CurrentCamera.FieldOfView = State
end)

fun:AddButton("Rainbow Character",  function(first)
    for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
        if v:IsA("MeshPart") then
            v.Material = "ForceField"
            spawn(function()
                while wait() do
                    for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                        if v:IsA("MeshPart") then
                            v.Color = Color3.fromHSV(tick()%5/5,1,1)
                            wait()
                        end
                    end 
                end
            end)
        end
    end
end)

fun:AddButton("Unmask Others", function()
    for i,v in pairs(game.Workspace.Players:GetChildren()) do
        v:FindFirstChildWhichIsA('Humanoid').DisplayDistanceType = 'Subject'
    end
end)

fun:AddButton("Add Everyone", function(IhateGayPeople)
    local obese = game:GetService('Players')
    for _,kachow in pairs(obese:GetPlayers()) do
    obese.LocalPlayer:RequestFriendship(kachow, kachow)
    end
end)

fun:AddToggle("Auto Lettuce", false, function(first)
    getgenv().Lettuce = first


    game:GetService("RunService").Heartbeat:Connect(
        function()
            if Lettuce == true then

                    pcall(function()
                        if game.Players.LocalPlayer.Character.Humanoid.Health > 50 then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 999, 0)
                            if game.Players.LocalPlayer.Character:FindFirstChild("[Lettuce]") == nil or game.Players.LocalPlayer.Backpack:FindFirstChild("[Lettuce]") == nil then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Ignored.Shop["[Lettuce] - $5"].Head.CFrame
                                wait(0.5)
                                fireclickdetector(game.Workspace.Ignored.Shop["[Lettuce] - $5"].ClickDetector)
                            end
                            pcall(function()game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack["[Lettuce]"])end)
                            pcall(function()
                                game.Players.LocalPlayer.Character["[Lettuce]"]:Activate()
                                wait(0.1)
                                game.Players.LocalPlayer.Character["[Lettuce]"]:Deactivate()
                            end)
                        end
                    end)
            end
 end)
end)

ESP:AddToggle("Enable ESP", false, function(Value)
    if getgenv().esp_loaded == false and Value == true then
        getgenv().esp_loaded = true
        loadstring(game:HttpGet("https://raw.githubusercontent.com/skatbr/Roblox-Releases/main/A_simple_esp.lua", true))()
    end
    getgenv().Visibility = Value
end)

ESP:AddToggle("Boxes", false, function(Value)
    if getgenv().esp_loaded == false and Value == true then
        getgenv().esp_loaded = true
        loadstring(game:HttpGet("https://raw.githubusercontent.com/skatbr/Roblox-Releases/main/A_simple_esp.lua", true))()
    end
    getgenv().boxESP = Value
end)

ESP:AddToggle("Names", false, function(Value)
    if getgenv().esp_loaded == false and Value == true then
        getgenv().esp_loaded = true
        loadstring(game:HttpGet("https://raw.githubusercontent.com/skatbr/Roblox-Releases/main/A_simple_esp.lua", true))()
    end
    getgenv().nameESP = Value
end)

ESP:AddToggle("Chams", false, function(Value)
    if getgenv().esp_loaded == false and Value == true then
        getgenv().esp_loaded = true
        loadstring(game:HttpGet("https://raw.githubusercontent.com/skatbr/Roblox-Releases/main/A_simple_esp.lua", true))()
    end
    getgenv().cham = Value
end)
