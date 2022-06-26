_G.autoclick = false
local LPlayer = game:GetService("Players").LocalPlayer
function Teleport(PlaceToCframe)
    task.spawn(
        function()
            if LPlayer.Character then
                LPlayer.Character.HumanoidRootPart.CFrame = PlaceToCframe
            end
        end
    )
end

function GiveCheese(Amount)
    task.spawn(
        function()
            for count = 1, Amount do
                game:GetService("ReplicatedStorage").AddCheese:FireServer()
                task.wait()
            end
        end
    )
end

function ClickCheese()
    while task.wait() do
        if not _G.autoclick then
            break
        end
        fireclickdetector(game:GetService("Workspace").Cheese.ClickDetector, 1)
    end
end

local OrionLib = loadstring(game:HttpGet(("https://raw.githubusercontent.com/shlexware/Orion/main/source")))()
local Window =
    OrionLib:MakeWindow(
    {
        Name = "Cheese Escape Script",
        HidePremium = false,
        SaveConfig = true,
        IntroEnabled = true,
        IntroText = "Welcome Rat!",
        ConfigFolder = "Cheez"
    }
)

local Tab =
    Window:MakeTab(
    {
        Name = "Credits",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    }
)
Tab:AddParagraph(
    "ripnonfegames",
    "In these past three days, I've been working as hard as I can to stop being such a skid and script something for myself, and it may have took me a while; but with the right support, I did."
)
Tab:AddParagraph(
    "wYn#0001",
    "This guy is a youtuber who teaches exploiting, I've learned everything I have from him and if you want to learn how to exploit you should check him out too, he helped me in ways no one else ever did."
)
Tab:AddParagraph(
    "Shlex",
    "Shlex Himself, I may not know him personally, and he may not remember me, but a while ago when Shlex was still a server, he gave me free premium because I was the most active in the server with 30k exp on a bot, I really would never prefer to use any other Ui Lib, love you no homo."
)
local Tab =
    Window:MakeTab(
    {
        Name = "Game",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    }
)

local Section =
    Tab:AddSection(
    {
        Name = "Main"
    }
)

Tab:AddButton(
    {
        Name = "Complete The Game",
        Callback = function()
            GiveCheese(9)
            task.spawn(
                function()
                    game:GetService("ReplicatedStorage").Events.GiveBadge:FireServer(2124910071)
                end
            )
            task.wait(1)

            local StatsFolder = LPlayer.StatsFolder
            StatsFolder.HaveBadge1.Value = true
            StatsFolder.PassedTheGame.Value = true
            StatsFolder.AlreadyBeen1.Value = true
            StatsFolder.AlreadyBeen2.Value = true
            task.spawn(
                function()
                    local DeleteItIfPassedGame = game.Workspace.DeleteItIfPassedGame
                    DeleteItIfPassedGame:Destroy()
                end
            )
        end
    }
)

Tab:AddButton(
    {
        Name = "Remove Mouse",
        Callback = function()
            local Mouse = game:GetService("Workspace").Mouse
            repeat
                Mouse:Destroy()
                task.wait()
            until not Mouse
        end
    }
)

Tab:AddParagraph(
    "Warning!",
    "Be aware that removing the mouse prevents you from getting the True Ending, as you have to feed the red cheese to it, just a warning."
)

Tab:AddButton(
    {
        Name = "Open Gate",
        Callback = function()
            fireclickdetector(game:GetService("Workspace").Button.Button.ClickDetector, 1, 0)
        end
    }
)

Tab:AddParagraph("About: Open Gate", "Opens the gate to the last cheese.")

local Section =
    Tab:AddSection(
    {
        Name = "Cheese"
    }
)

Tab:AddTextbox(
    {
        Name = "Give Cheese",
        Default = "1",
        TextDisappear = true,
        Callback = function(Amount)
            GiveCheese(Amount)
        end
    }
)

Tab:AddToggle(
    {
        Name = "Spamclick Cheese",
        Default = false,
        Callback = function(bool)
            _G.autoclick = bool
            if bool then
                do
                    ClickCheese()
                end
            end
        end
    }
)
Tab:AddParagraph(
    "About: Spamclick Cheese",
    "The cheese at the start says Click To Open, checking this will spam clicks onto the cheese."
)
local Section =
    Tab:AddSection(
    {
        Name = "Lore"
    }
)
local Answer
Tab:AddTextbox(
    {
        Name = "ENTER THE CODE",
        Default = "???",
        TextDisappear = true,
        Callback = function(code)
            local Answer = code
            if Answer == "cheese" then
                do
                    local function CreateInstance(cls, props)
                        local inst = Instance.new(cls)
                        for i, v in pairs(props) do
                            inst[i] = v
                        end
                        return inst
                    end

                    local ScreenGui =
                        CreateInstance(
                        "ScreenGui",
                        {
                            DisplayOrder = 0,
                            Enabled = true,
                            ResetOnSpawn = true,
                            Name = "ScreenGui",
                            Parent = game.CoreGui
                        }
                    )
                    local Frame =
                        CreateInstance(
                        "Frame",
                        {
                            Style = Enum.FrameStyle.Custom,
                            Active = false,
                            AnchorPoint = Vector2.new(0, 0),
                            BackgroundColor3 = Color3.new(0, 0, 0),
                            BackgroundTransparency = 0,
                            BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843),
                            BorderSizePixel = 1,
                            ClipsDescendants = false,
                            Draggable = false,
                            Position = UDim2.new(0, 0, -0.0651739687, 0),
                            Rotation = 0,
                            Selectable = false,
                            Size = UDim2.new(1, 1067, 0, 999),
                            SizeConstraint = Enum.SizeConstraint.RelativeXY,
                            Visible = true,
                            ZIndex = 1,
                            Name = "Frame",
                            Parent = ScreenGui
                        }
                    )
                    local TextLabel =
                        CreateInstance(
                        "TextLabel",
                        {
                            Font = Enum.Font.SourceSans,
                            FontSize = Enum.FontSize.Size60,
                            Text = "Thank you for your input.",
                            TextColor3 = Color3.new(1, 0, 0.0156863),
                            TextScaled = false,
                            TextSize = 50,
                            TextStrokeColor3 = Color3.new(0, 0, 0),
                            TextStrokeTransparency = 1,
                            TextTransparency = 0,
                            TextWrapped = true,
                            TextXAlignment = Enum.TextXAlignment.Center,
                            TextYAlignment = Enum.TextYAlignment.Center,
                            Active = false,
                            AnchorPoint = Vector2.new(0, 0),
                            BackgroundColor3 = Color3.new(1, 1, 1),
                            BackgroundTransparency = 1,
                            BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843),
                            BorderSizePixel = 1,
                            ClipsDescendants = false,
                            Draggable = false,
                            Position = UDim2.new(0.168027475, 0, 0.208208233, 0),
                            Rotation = 0,
                            Selectable = false,
                            Size = UDim2.new(0, 531, 0, 118),
                            SizeConstraint = Enum.SizeConstraint.RelativeXY,
                            Visible = true,
                            ZIndex = 1,
                            Name = "TextLabel",
                            Parent = Frame
                        }
                    )

                    task.wait(2)
                    LPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-40, 5, 24)
                end
            else
                print("Wrong Code.")
                Window:MakeTab(
                    {
                        Name = "Wrong Code!",
                        Icon = "rbxassetid://4483345998",
                        PremiumOnly = false
                    }
                )
            end
        end
    }
)

local Tab =
    Window:MakeTab(
    {
        Name = "Teleporting",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    }
)
local Selected

local Section =
    Tab:AddSection(
    {
        Name = "Teleport - Main Game"
    }
)

Tab:AddParagraph("About: Teleport", "Click it after selecting a place from dropdown. (Main game only.)")

Tab:AddButton(
    {
        Name = "Teleport",
        Callback = function()
            if Selected == "Spawn" then
                do
                    LPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4, 5, -11)
                end
            end

            if Selected == "SafeZone" then
                do
                    LPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-112, 4, -13)
                end
            end

            if Selected == "SafeZone 2" then
                do
                    LPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-72, 4, -119)
                end
            end

            if Selected == "Green Door" then
                do
                    LPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-204, 4, -181)
                end
            end

            if Selected == "Red Door" then
                do
                    LPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-200, 4, -147)
                end
            end

            if Selected == "Blue Door" then
                do
                    LPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-259, 49, -179)
                end
            end

            if Selected == "Green Key" then
                do
                    LPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-279, 4, -36)
                end
            end

            if Selected == "Red Key" then
                do
                    LPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(67, 4, -448)
                end
            end

            if Selected == "Blue Key" then
                do
                    LPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-110, 47, -87)
                end
            end
        end
    }
)

local Section =
    Tab:AddSection(
    {
        Name = "Main Game"
    }
)

Tab:AddDropdown(
    {
        Name = "SafeZone",
        Default = "None",
        Options = {"None", "Spawn", "SafeZone", "SafeZone 2"},
        Callback = function(Zone)
            Selected = Zone
        end
    }
)

Tab:AddDropdown(
    {
        Name = "Doors",
        Default = "None",
        Options = {"None", "Green Door", "Red Door", "Blue Door"},
        Callback = function(Zone)
            Selected = Zone
        end
    }
)

Tab:AddDropdown(
    {
        Name = "Keys",
        Default = "None",
        Options = {"None", "Green Key", "Red Key", "Blue Key"},
        Callback = function(Zone)
            Selected = Zone
        end
    }
)

Tab:AddButton(
    {
        Name = "Transparent Gate",
        Callback = function()
            LPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-147, 4, -191)
        end
    }
)

Tab:AddButton(
    {
        Name = "Exit Door",
        Callback = function()
            LPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-273, 4, -126)
        end
    }
)

local Section =
    Tab:AddSection(
    {
        Name = "Teleport - THE LORE"
    }
)

Tab:AddParagraph("About: Teleport", "Click it after selecting a place from dropdown. (Lore only.) ")

Tab:AddButton(
    {
        Name = "Teleport",
        Callback = function()
            if Selected == "White Door" then
                do
                    LPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-38, 50, -487)
                end
            end

            if Selected == "Yellow Door" then
                do
                    LPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-73, 4, -120)
                end
            end

            if Selected == "Grey Door" then
                do
                    LPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-272, 48, -148)
                end
            end

            if Selected == "Purple Door" then
                do
                    LPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-315, 48, -147)
                end
            end

            if Selected == "White Key" then
                do
                    LPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-20, 5, -75)
                end
            end

            if Selected == "Yellow Key" then
                do
                    LPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(59, 27, -482)
                end
            end

            if Selected == "Grey Key" then
                do
                    LPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1052, 50, -1274)
                end
            end

            if Selected == "Purple Key" then
                do
                    LPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-291, 122, 498)
                end
            end
        end
    }
)

local Section =
    Tab:AddSection(
    {
        Name = "THE LORE"
    }
)

Tab:AddDropdown(
    {
        Name = "Keys",
        Default = "None",
        Options = {"None", "White Key", "Yellow Key", "Grey Key", "Purple Key"},
        Callback = function(Zone)
            Selected = Zone
        end
    }
)

Tab:AddDropdown(
    {
        Name = "Doors",
        Default = "None",
        Options = {"None", "White Door", "Yellow Door", "Grey Door"},
        Callback = function(Zone)
            Selected = Zone
        end
    }
)

Tab:AddButton(
    {
        Name = "SafeZone",
        Callback = function()
            LPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(871, 50, -1282)
        end
    }
)

Tab:AddButton(
    {
        Name = "Red Cheese",
        Callback = function()
            LPlayer.StatsFolder.PressedTheButton.Value = true
            LPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-13, 5, -116)
        end
    }
)

Tab:AddParagraph("About: Red Cheese", "FEED IT TO THE MOUSE")
OrionLib:Init()