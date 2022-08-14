local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Fusion = require(ReplicatedStorage.Common:WaitForChild("Fusion"))

local New = Fusion.New
local Children = Fusion.Children

local components = ReplicatedStorage.Common.mock.components

local Window = require(components.Window)

local TwitterWindow = New Window {
	Name = "TwitterWindow",
	DisplayOrder = 1,
	ZIndexBehavior = Enum.ZIndexBehavior.Global,
}

return TwitterWindow