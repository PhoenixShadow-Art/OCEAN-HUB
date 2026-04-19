# Ocean Hub UI Library Guide

This package shows how to load the library from:

`https://raw.githubusercontent.com/PhoenixShadow-Art/OCEAN-HUB/refs/heads/main/main.lua`

## 1) Load the library

```lua
local Ocean = loadstring(game:HttpGet("https://raw.githubusercontent.com/PhoenixShadow-Art/OCEAN-HUB/refs/heads/main/main.lua"))()
```

## 2) Create the window

Use `CreateWindow` with a config table.

```lua
local Window = Ocean:CreateWindow({
    Title = "Ocean Hub",
    SubTitle = "My UI",
    KeySystem = false
})
```

## 3) Change the theme

This library has a built-in theme system and theme-related options in the source.

A common setup is to pass a theme-related value in the window config, then use the built-in UI controls in the library if your build exposes them.

Example:

```lua
local Window = Ocean:CreateWindow({
    Title = "Ocean Hub",
    Theme = "Dark",
    KeySystem = false
})
```

If your exact build uses a different theme field name, keep the same window creation flow and swap only the theme key.

## 4) Add tabs and UI elements

Typical structure:

```lua
local MainTab = Window:CreateTab("Main", "home")
MainTab:CreateSection("Player")
```

Common elements:

```lua
MainTab:CreateButton({
    Name = "Test Button",
    Callback = function()
        print("Clicked")
    end
})

MainTab:CreateToggle({
    Name = "Test Toggle",
    CurrentValue = false,
    Callback = function(Value)
        print("Toggle:", Value)
    end
})

MainTab:CreateSlider({
    Name = "WalkSpeed",
    Range = {16, 200},
    Increment = 1,
    CurrentValue = 16,
    Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
    end
})
```

## 5) Mobile tips

Keep your UI simple:
- use 1–3 tabs only
- avoid too many controls on one page
- use short names
- keep callbacks light so mobile stays smooth

## 6) Full example

See `example.lua` in

## 7) Notes

- The source file identifies Ocean Hub as a Roblox UI library.
- The library includes theme-related styling and UI defaults in the source.
- If a method name differs in your exact build, keep the same structure and adjust only the function names.

