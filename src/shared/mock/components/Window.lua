local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Fusion = require(ReplicatedStorage.Common:WaitForChild("Fusion"))

local LocalPlayer = game:GetService("Players").LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

local New = Fusion.New
local Children = Fusion.Children

return function(props: {[string]: any})
	return New "ScreenGui" {
		Name = props.Name;
		DisplayOrder = props.DisplayOrder;
		ZIndexBehavior = props.ZIndexBehavior;

		IgnoreGuiInset = true;
		ResetOnSpawn = false;

		Parent = PlayerGui;

		[Children] = {
			New "Frame" {
				Name = "Background";
				BackgroundColor3 = props.WindowColor or Color3.fromRGB(255, 255, 255);
				BorderSizePixel = 0;
				Size = UDim2.new(1, 0, 1, 0);
				ZIndex = -1;

				[Children] = props[Children];
			};
		};
	}
end