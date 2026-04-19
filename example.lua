local Ocean = loadstring(game:HttpGet("https://raw.githubusercontent.com/PhoenixShadow-Art/OCEAN-HUB/refs/heads/main/main.lua"))()

local Window = Ocean:CreateWindow({
    Title = "Ocean Hub",
    SubTitle = "Guide Example",
    Theme = "Dark",
    KeySystem = false
})

local MainTab = Window:CreateTab("Main", "home")
MainTab:CreateSection("Player")

MainTab:CreateButton({
    Name = "Print Test",
    Callback = function()
        print("Ocean Hub test button")
    end
})

MainTab:CreateToggle({
    Name = "Auto Print",
    CurrentValue = false,
    Callback = function(Value)
        print("Auto Print:", Value)
    end
})

MainTab:CreateSlider({
    Name = "WalkSpeed",
    Range = {16, 200},
    Increment = 1,
    CurrentValue = 16,
    Callback = function(Value)
        local plr = game.Players.LocalPlayer
        local char = plr.Character or plr.CharacterAdded:Wait()
        char:WaitForChild("Humanoid").WalkSpeed = Value
    end
})
