local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({
	Name = "Bomb.Lua",
	LoadingTitle = "Bomb.Lua",
	LoadingSubtitle = "Made By slammy.",
	ConfigurationSaving = {
		Enabled = true,
		FolderName = "Bomb.Lua Configs", -- Create a custom folder for your hub/game
		FileName = "Big Hub"
	},
        Discord = {
        	Enabled = true,
        	Invite = "4C483wQE", -- The Discord invite code, do not include discord.gg/
        	RememberJoins = true -- Set this to false to make them join the discord every time they load it up
        },
	KeySystem = true, -- Set this to true to use our key system
	KeySettings = {
		Title = "Bomb.Lua",
		Subtitle = "Key System",
		Note = "All By Slammy.",
		FileName = "SiriusKey",
		SaveKey = false,
		GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
		Key = "4115"
	}
})

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

    getgenv().slammeAA = false 

game:GetService("RunService").heartbeat:Connect(function()
    if getgenv().slammeAA == true then 
    local abc = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(1,1,1) * (2^16)
    game:GetService("RunService").RenderStepped:Wait()
    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = abc
    end 
end)

local Tab = Window:CreateTab("Aimlock", 4483362458)
local Section = Tab:CreateSection("Bomb.Lua Aimlock")
     

    
    local Button = Tab:CreateButton({
	Name = "Enable Aimlock?",
	Callback = function()
getgenv().Key = Enum.KeyCode.Q
getgenv().Prediction = 0.11732
    getgenv().AirshotFunccc = false
    getgenv().Tracer = true
    getgenv().Partz = "HumanoidRootPart" -- LowerTorso, HumanoidRootPart,Head,UpperTorso
        local Locking = false
    



local Tracer = Drawing.new("Circle")
Tracer.Visible = true
Tracer.Radius = 2
Tracer.Filled = true
Tracer.Color = Color3.fromRGB(255, 0, 212)
Tracer.Thickness = 1
Tracer.Transparency = 1

        

    function x(tt,tx,cc)
    game.StarterGui:SetCore("SendNotification", {
        Title = tt;
        Text = tx;
        Duration = cc;
    })
end

x("Bomb.Lua", "Loaded", 3)


    if getgenv().flashyes == true then
                       x("Bomb.Lua", "Already Loaded", 5)
        return
    end
    getgenv().flashyes = true
    
        local UserInputService = game:GetService("UserInputService")

    UserInputService.InputBegan:Connect(function(keygo,ok)
           if (not ok) then
           if (keygo.KeyCode == getgenv().Key) then
               Locking = not Locking
               if Locking then
               Plr =  getClosestPlayerToCursor()
                x("Bomb.Lua", ""..Plr.Character.Humanoid.DisplayName, 3)
elseif not Locking then
    if Plr then Plr = nil
                       x("Bomb.Lua", "Unlocked", 3)
     
         
end
end
end
end
end)
    function getClosestPlayerToCursor()
        local closestPlayer
        local shortestDistance = 137

        for i, v in pairs(game.Players:GetPlayers()) do
            if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health ~= 0 and v.Character:FindFirstChild("LowerTorso") then
                local pos = game:GetService"Workspace".CurrentCamera:WorldToViewportPoint(v.Character.PrimaryPart.Position)
                local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(game.Players.LocalPlayer:GetMouse().X, game.Players.LocalPlayer:GetMouse().Y)).magnitude
                if magnitude < shortestDistance then
                    closestPlayer = v
                    shortestDistance = magnitude
                end
            end
        end
        return closestPlayer
    end



    
    

    local rawmetatable = getrawmetatable(game)
    local old = rawmetatable.__namecall
    setreadonly(rawmetatable, false)
    rawmetatable.__namecall = newcclosure(function(...)
        local args = {...}
        if Plr ~= nil  and getnamecallmethod() == "FireServer" and args[2] == "UpdateMousePos" then
            args[3] = Plr.Character[getgenv().Partz].Position+(Plr.Character[getgenv().Partz].Velocity*Prediction)
            return old(unpack(args))
        end
        return old(...)
    end)


game:GetService("RunService").RenderStepped:connect(function()    
if getgenv().AirshotFunccc == true then

            if Plr ~= nil and Plr.Character.Humanoid.FloorMaterial == Enum.Material.Air then
                getgenv().Partz = "LowerTorso"
            else
               
                        getgenv().Partz = "LowerTorso"
            end
end
         

        if getgenv().Tracer == true and Locking then
            local Vector, OnScreen = game:GetService"Workspace".CurrentCamera:worldToViewportPoint(Plr.Character[getgenv().Partz].Position+(Plr.Character[getgenv().Partz].Velocity*Prediction))
            Tracer.Visible = true
   Tracer.Position = Vector2.new(Vector.X, Vector.Y)
        else
            Tracer.Visible = false
        end
    

end)


   





	end,
})
   
local Input = Tab:CreateInput({
	Name = "Prediction",
	PlaceholderText = "Enter Prediction...",
	RemoveTextAfterFocusLost = false,
	Callback = function(Text)
	getgenv().Prediction = Text
	end,
})
     
     local Toggle = Tab:CreateToggle({
	Name = "Airshot Function",
	CurrentValue = false,
	Flag = "airshot", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
	getgenv().AirshotFunccc = Value
	end,
})

local Toggle = Tab:CreateToggle({
	Name = "Show Dot",
	CurrentValue = true,
	Flag = "showdot", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
	getgenv().Tracer = Value
	end,
})

local Button = Tab:CreateButton({
	Name = "Underground AA Resolver",
	Callback = function()
	local RunService = game:GetService("RunService")

RunService.Heartbeat:Connect(function()
    pcall(function()
        for i,v in pairs(game.Players:GetChildren()) do
            if v.Name ~= game.Players.LocalPlayer.Name then
                local hrp = v.Character.HumanoidRootPart
                hrp.Velocity = Vector3.new(hrp.Velocity.X, 0, hrp.Velocity.Z)    
                hrp.AssemblyLinearVelocity = Vector3.new(hrp.Velocity.X, 0, hrp.Velocity.Z)   
            end
        end
    end)
end)
	end,
})

local Dropdown = Tab:CreateDropdown({
	Name = "Aim Part",
	Options = {"Head","UpperTorso", "HumanoidRootPart", "LowerTorso"},
	CurrentOption = "HumanoidRootPart",
	Flag = "aimingpart", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Option)
	getgenv().Partz = Option
	end,
})

local Misc = Window:CreateTab("Miscellaneous", 4483362458)
local Section = Misc:CreateSection("Miscellaneous")

local Button = Misc:CreateButton({
	Name = "Enable Cframe (T)",
	Callback = function()
	    	repeat
		wait()
	until game:IsLoaded()
	local L_134_ = game:service('Players')
	local L_135_ = L_134_.LocalPlayer
	repeat
		wait()
	until L_135_.Character
	local L_136_ = game:service('UserInputService')
	local L_137_ = game:service('RunService')
	getgenv().Multiplier = 0.5
	local L_138_ = true
	local L_139_
	L_136_.InputBegan:connect(function(L_140_arg0)
		if L_140_arg0.KeyCode == Enum.KeyCode.LeftBracket then
			Multiplier = Multiplier + 0.01
			print(Multiplier)
			wait(0.2)
			while L_136_:IsKeyDown(Enum.KeyCode.LeftBracket) do
				wait()
				Multiplier = Multiplier + 0.01
				print(Multiplier)
			end
		end
		if L_140_arg0.KeyCode == Enum.KeyCode.RightBracket then
			Multiplier = Multiplier - 0.01
			print(Multiplier)
			wait(0.2)
			while L_136_:IsKeyDown(Enum.KeyCode.RightBracket) do
				wait()
				Multiplier = Multiplier - 0.01
				print(Multiplier)
			end
		end
		if L_140_arg0.KeyCode == Enum.KeyCode.T then
			L_138_ = not L_138_
			if L_138_ == true then
				repeat
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + game.Players.LocalPlayer.Character.Humanoid.MoveDirection * Multiplier
					game:GetService("RunService").Stepped:wait()
				until L_138_ == false
			end
		end
	end)
	end,
})

local Slider = Misc:CreateSlider({
	Name = "Cframe Speed",
	Range = {0, 7},
	Increment = 0.1,
	Suffix = "Cframe Current Speed...",
	CurrentValue = 0.5,
	Flag = "cframespeed", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
	getgenv().Multiplier = Value
	end,
})


local Button = Misc:CreateButton({
	Name = "Anti Ban",
	Callback = function()
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
	end,
})

local Button = Misc:CreateButton({
	Name = "Cframe Fixer",
	Callback = function()
	
        for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if v:IsA("Script") and v.Name ~= "Health" and v.Name ~= "Sound" and v:FindFirstChild("LocalScript") then
                v:Destroy()
            end
        end
        game.Players.LocalPlayer.CharacterAdded:Connect(function(char)
            repeat
                wait()
            until game.Players.LocalPlayer.Character
            char.ChildAdded:Connect(function(child)
                if child:IsA("Script") then 
                    wait(0.1)
                    if child:FindFirstChild("LocalScript") then
                        child.LocalScript:FireServer()
                    end
                end
            end)
        end)
	end,
})

local Toggle = Misc:CreateToggle({
	Name = "Legit AA",
	CurrentValue = false,
	Flag = "LegitDesync", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
        getgenv().slammeAA = Value
	end,
})

local Toggle = Misc:CreateToggle({
	Name = "Jumpable Desync",
	CurrentValue = false,
	Flag = "JumpableAnti", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
_G.JumpableAnti = Value
	end,
})

local Toggle = Misc:CreateToggle({
	Name = "No Velocity",
	CurrentValue = false,
	Flag = "NoVEl", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
_G.PredictionBreaker = Value
	end,
})

local Toggle = Misc:CreateToggle({
	Name = "Blatant Desync",
	CurrentValue = false,
	Flag = "Desynced", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
_G.Desync = Value
	end,
})

local Button = Misc:CreateButton({
	Name = "Rejoin",
	Callback = function()
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
	end,
})

local Button = Misc:CreateButton({
	Name = "Server Hop",
	Callback = function()
	    local module = loadstring(game:HttpGet"https://raw.githubusercontent.com/LeoKholYt/roblox/main/lk_serverhop.lua")()

    module:Teleport(game.PlaceId) 
	end,
})

local Button = Misc:CreateButton({
	Name = "Anti Aim Viewer",
	Callback = function()
	 hookfunction(game.Players.LocalPlayer.IsInGroup, function() return true end)
 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Nosssa/NossLock/main/AntiAimViewer"))()
	end,
})

local Button = Misc:CreateButton({
	Name = "Call All",
	Callback = function()
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
	end,
})

local Button = Misc:CreateButton({
	Name = "FreeCam (Shift+C)",
	Callback = function()
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
	end,
})

local Button = Misc:CreateButton({
	Name = "Unmask Others",
	Callback = function()
	local obese = game:GetService('Players')
    for _,kachow in pairs(obese:GetPlayers()) do
    obese.LocalPlayer:RequestFriendship(kachow, kachow)
    end
	end,
})

local Button = Misc:CreateButton({
	Name = "Remove Display Names",
	Callback = function()
	pcall(function()
        for i, v in pairs(game:GetService("Players"):GetPlayers()) do
            if v.Character then
                if v.Character:FindFirstChild("Humanoid") then
                    v.Character:FindFirstChild("Humanoid").DisplayName = v.Name 
                end
            end
        end
    end)
	end,
})

local Button = Misc:CreateButton({
	Name = "Gun Chams",
	Callback = function()
        local Client = game.GetService(game, "Players").LocalPlayer
        Client.Character:FindFirstChildOfClass("Tool").Default.Material = Enum.Material.ForceField
        Client.Character:FindFirstChildOfClass("Tool").Default.BrickColor  = BrickColor.new(255, 0, 0)

	end,
})

local cha = Window:CreateTab("Characteristics", 4483362458)

local Section = cha:CreateSection("Characteristics")

local Button = cha:CreateButton({
	Name = "Headless",
	Callback = function()
        local L_393_ = game.Players.LocalPlayer.Character
        local L_394_ = L_393_:WaitForChild("Head")
        local L_395_ = L_394_:WaitForChild("face")
        L_395_.Transparency = 1 --Texture = "rbxassetid://209712379"
        L_394_.Transparency = 1
	end,
})

local Button = cha:CreateButton({
	Name = "Korblox",
	Callback = function()
        local L_396_ = game.Players.LocalPlayer.Character
        local L_397_ = game.Players.LocalPlayer.Character
        local L_398_ = L_396_.Head
        local L_399_ = L_398_.face
        local L_400_ = L_397_.RightFoot
        local L_401_ = L_397_.RightLowerLeg
        local L_402_ = L_397_.RightUpperLeg
        local L_403_ = L_397_.LeftFoot
        local L_404_ = L_397_.LeftLowerLeg
        local L_405_ = L_397_.LeftUpperLeg
        

        L_400_.MeshId = "http://www.roblox.com/asset/?id=902942093"
        L_401_.MeshId = "http://www.roblox.com/asset/?id=902942093"
        L_402_.MeshId = "http://www.roblox.com/asset/?id=902942096"
        L_402_.TextureID = "http://roblox.com/asset/?id=902843398"
        L_400_.Transparency = 1
        L_401_.Transparency = 1
	end,
})

local Button = cha:CreateButton({
	Name = "Fat",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/slammy1/fat/main/3"))() 
	end,
})

local Button = cha:CreateButton({
	Name = "FE Korblox",
	Callback = function()
        game.Players.LocalPlayer.Character.RightUpperLeg:Destroy()
	end,
})

local tp = Window:CreateTab("Teleportations", 4483362458) 
local Section = tp:CreateSection("Teleportations")

local Button = tp:CreateButton({
	Name = "Admin Base Food",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-788.39318847656, -39.649200439453, -935.27795410156)
	end,
})

local Button = tp:CreateButton({
	Name = "Admin Base Guns",
	Callback = function()
	 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-874.903992, -32.6492004, -525.215698)
	end,
})

local Button = tp:CreateButton({
	Name = "Casino",
	Callback = function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-962.72345, 21.2549973, -186.814987, -0.0274876002, 2.91178949e-05, 0.999621451, -5.5798846e-06, 1, -2.92823333e-05, -0.999621451, -6.38268148e-06, -0.0274876002)
	end,
})

local Button = tp:CreateButton({
	Name = "Bank",
	Callback = function()
	  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-402.123718, 21.75, -283.988617, 0.0159681588, -0.000121377925, -0.999872446, -2.60148026e-05, 1, -0.000121808866, 0.999872506, 2.79565484e-05, 0.0159681737)
	end,
})

local Button = tp:CreateButton({
	Name = "Revolver Autobuy",
	Callback = function()
	          LocalPlayer = game:GetService "Players".LocalPlayer
        local gunName = "[Revolver] - $1300"
        local k = game.Workspace.Ignored.Shop[gunName]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop[gunName].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop[gunName].ClickDetector)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
	end,
})

local Button = tp:CreateButton({
	Name = "Revolver Ammo",
	Callback = function()
	      local LocalPlayer = game:GetService "Players".LocalPlayer
        local gunName = "12 [Revolver Ammo] - $75"
        local k = game.Workspace.Ignored.Shop[gunName]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop[gunName].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop[gunName].ClickDetector)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)   
	end,
})

local Button = tp:CreateButton({
	Name = "Double Barrel Autobuy",
	Callback = function()
	       
        LocalPlayer = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["[Double-Barrel SG] - $1400"]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop["[Double-Barrel SG] - $1400"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["[Double-Barrel SG] - $1400"].ClickDetector)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
	end,
})

local Button = tp:CreateButton({
	Name = "Double Barrel Ammo",
	Callback = function()
	 local LocalPlayer = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["18 [Double-Barrel SG Ammo] - $60"]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop["18 [Double-Barrel SG Ammo] - $60"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["18 [Double-Barrel SG Ammo] - $60"].ClickDetector)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)   
	end,
})

local Button = tp:CreateButton({
	Name = "SMG Autobuy",
	Callback = function()
	          LocalPlayer = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["[SMG] - $750"]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop["[SMG] - $750"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["[SMG] - $750"].ClickDetector)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)  
	end,
})

local Button = tp:CreateButton({
	Name = "SMG Ammo",
	Callback = function()
	   LocalPlayer = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["80 [SMG Ammo] - $60"]
            local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["80 [SMG Ammo] - $60"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["80 [SMG Ammo] - $60"].ClickDetector)
            LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)   
	end,
})

local Button = tp:CreateButton({
	Name = "LMG Autobuy",
	Callback = function()
	        LocalPlayer = game:GetService "Players".LocalPlayer
    local k = game.Workspace.Ignored.Shop["[LMG] - $3750"]
    local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
    wait(0.5)
    fireclickdetector(game.Workspace.Ignored.Shop["[LMG] - $3750"].ClickDetector)
    fireclickdetector(game.Workspace.Ignored.Shop["[LMG] - $3750"].ClickDetector)
    LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
	end,
})

local Button = tp:CreateButton({
	Name = "LMG Ammo",
	Callback = function()
	           local LocalPlayer = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["200 [LMG Ammo] - $300"]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop["200 [LMG Ammo] - $300"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["200 [LMG Ammo] - $300"].ClickDetector)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)   
	end,
})
