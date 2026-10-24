local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/hotdog646/ui-libraries/refs/heads/main/cloude/source.lua"))()
local Window = Library:Window({
    Name = "cloudeeeeeee ui lol"
})

local Watermark = Window:Watermark({
    Name = "watermark",
    SubName = "watermark subname"
})

local KeybindList = Window:KeybindList({
    Name = "keybinds",
})

local CombatTab = Window:Page({Name = "Combat"})
local MiscTab = Window:Page({Name = "Misc"})
local VisualsTab = Window:Page({Name = "Visuals"})
local PlayersTab = Window:Page({Name = "Players"})
Window:InitWindow()

local AimbotSubTab = CombatTab:SubPage({Name = "Aimbot"})
local WeaponsSubTab = CombatTab:SubPage({Name = "Weapons"})

local ExampleSection = AimbotSubTab:Section({Name = "example", Side = 1})

do
    ExampleSection:Toggle({
        Name = "Toggle",
        Flag = "Toggle",
        Default = false,
        Tooltip = "test tooltip",
        Callback = function(Value)
            print(Value)
        end
    })

    ExampleSection:Button()
    :Add("button a", function() print("a") end)
    :Add("button b", function() print("b") end)

    ExampleSection:Slider({
        Name = "Slider",
        Flag = "Slider",
        Min = 1,
        Max = 100,
        Tooltip = "test tooltip",
        Default = 50,
        Suffix = "%",
        Decimals = 1,
        Callback = function(Value)
            print(Value)
        end
    })

    ExampleSection:Dropdown({
        Name = "Dropdown",
        Flag = "Dropdown",
        Tooltip = "test tooltip",
        Default = "Value2",
        Items = {"Value", "Value2", "Value3", "Value4", "Value5", "Value6"},
        Multi = false,
        Callback = function(Value)
            print(Value)
        end
    })

    ExampleSection:Divider("divider")

    ExampleSection:Label({Name = "label", Tooltip = "test tooltip"})
    ExampleSection:Label({Name = "picker", Tooltip = "test tooltip"}):Colorpicker({
        Flag = "Colorpicker",
        Default = Color3.fromRGB(255, 255, 255),
        Callback = function(Value)
            print(Value)
        end
    })

    ExampleSection:Label({Name = "picker"}):Keybind({
        Name = "Keybind",
        Flag = "Keybind",
        Default = Enum.KeyCode.X,
        Callback = function(Value)
            print(Value)
        end
    })

    ExampleSection:Label({Name = "picker"}):Keybind({
        Name = "Keybind 2",
        Flag = "Keybind 2",
        Default = Enum.KeyCode.X,
        Callback = function(Value)
            print(Value)
        end
    })

    ExampleSection:Label({Name = "picker"}):Keybind({
        Name = "Keybind 3",
        Flag = "Keybind 3",
        Default = Enum.KeyCode.X,
        Callback = function(Value)
            print(Value)
        end
    })

    ExampleSection:Paragraph({
        Name = "paragraph",
        Tooltip = "test tooltip",
        Description = "paragraph description",
    })

    ExampleSection:RangeSlider({
        Name = "rangee sliderrr",
        Flag = "asdasdas",
        Default = {3,5},
        Tooltip = "",
        Min = 0.1,
        Max = 10,
        Decimals = 0.1,
        Callback = function(i,v)
            print(i,v)
        end
    })

    ExampleSection:Textbox({
        Name = "Textbox",
        Flag = "Textbox",
        Tooltip = "test tooltip",
        Default = "Value",
        Numeric = false,
        Finished = false,
        Callback = function(Value)
            print(Value)
        end
    })
end

local RandomColor = Color3.fromRGB(math.random(0, 255), math.random(0, 255), math.random(0, 255))
Library:Notification("this is a test notification long asf", 5, RandomColor)
