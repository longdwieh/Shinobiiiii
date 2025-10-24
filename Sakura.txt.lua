--sakura hub
-- Sakura on top
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local Workspace = game:GetService("Workspace")
local VirtualInputManager = game:GetService("VirtualInputManager")
local TweenService = game:GetService("TweenService")
local CollectionService = game:GetService("CollectionService")
local TeleportService = game:GetService("TeleportService")

--👾 Thông tin người chơi hiện tại
local LocalPlayer = Players.LocalPlayer
local player = LocalPlayer
local plr = LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
-- tạo UI
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Sakura Hub On Top",
    SubTitle = "",
    TabWidth = 160,
    Size = UDim2.fromOffset(450, 300),
    Acrylic = true,
    Theme = "Darker",
    MinimizeKey = Enum.KeyCode.End
})
-- 🌈 Hiệu ứng chuyển màu giữa 4 màu
local colors = {
    Color3.fromRGB(180, 0, 255),   -- tím
    Color3.fromRGB(0, 170, 255),   -- xanh dương
    Color3.fromRGB(255, 100, 200), -- hồng
    Color3.fromRGB(0, 255, 150)    -- xanh lá
}

task.spawn(function()
    local i = 1
    while true do
        Window:SetThemeColor("Accent", colors[i])
        i = i % #colors + 1
        task.wait(1.5) -- đổi màu mỗi 1.5 giây
    end
end)
-- 🗂️ Tạo các danh mục (Tabs)
local Tabs = {
    Info = Window:AddTab({ Title = "script owner information", Icon = "info"}),
    Main = Window:AddTab({ Title = "Main", Icon = "home" }),
    Farm = Window:AddTab({ Title = "Farm", Icon = "sword" }),
    Server = Window:AddTab({ Title = "Server", Icon = "server" }),
    Player = Window:AddTab({ Title = "Player", Icon = "user" }),
    Raid = Window:AddTab({ Title = "Raid", Icon = "flame" }),
    Sea = Window:AddTab({ Title = "Sea Event", Icon = "anchor" }),
    Teleport = Window:AddTab({ Title = "Teleport", Icon = "map" }),
    Setting = Window:AddTab({ Title = "Setting", Icon = "settings" })
}