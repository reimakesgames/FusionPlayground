local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Fusion = require(ReplicatedStorage.Common:WaitForChild("Fusion"))

local New = Fusion.New
local Children = Fusion.Children

local components = ReplicatedStorage.Common.mock.components

local Window = require(components.Window)

local TwitterWindow = New Window {
	Name = "TwitterWindow";
	DisplayOrder = 1;
	ZIndexBehavior = Enum.ZIndexBehavior.Global;

	[Children] = {
		New "Frame" {
			Name = "SignupWrapper";
			BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			BorderSizePixel = 0;
			ZIndex = 100;

			Size = UDim2.new(0.45, 0, 1, 0);
			Position = UDim2.new(1, 0, 0, 0);
			AnchorPoint = Vector2.new(1, 0);

			[Children] = {
				New "TextLabel" {
					Name = "SignupTitle";
					Text = "Signup";
					Font = Enum.Font.SourceSansBold;
					TextSize = 24;
					TextColor3 = Color3.fromRGB(0, 0, 0);
					TextXAlignment = Enum.TextXAlignment.Left;
					TextYAlignment = Enum.TextYAlignment.Top;
					TextWrapped = true;
					Size = UDim2.new(1, 0, 0.1, 0);
					Position = UDim2.new(0, 0, 0, 0);
					AnchorPoint = Vector2.new(0, 0);

					ZIndex = 101;
				};
			}
		};

		New "ImageLabel" {
			Name = "Background";
			Image = "rbxassetid://148384900";
			Size = UDim2.new(1.5, 0, 1, 0);
			SizeConstraint = Enum.SizeConstraint.RelativeYY;
			Position = UDim2.new(0.275, 0, 0.5, 0);
			AnchorPoint = Vector2.new(0.5, 0.5);

			ZIndex = 1;
		};

		New "ImageLabel" {
			Name = "TwitterLogo";
			Image = "rbxassetid://420213437";
			Size = UDim2.new(0, 256, 0, 256);
			Position = UDim2.new(0.275, 0, 0.5, 0);
			AnchorPoint = Vector2.new(0.5, 0.5);

			BackgroundTransparency = 1;

			ZIndex = 2
		};
	};
}

return TwitterWindow