-- read THE FUCKING README.md PLEASE
-- also shitcode, recoding rn

local colorint = game.Lighting
local TintRed,TintGreen,TintBlue = 255,255,255;local Saturation,Brightness,Contrast = 0,0,0

getgenv().SecureMode = false

local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
local Window = Rayfield:CreateWindow({
	Name = "lightspace",
	LoadingTitle = "this is a test script,",
	LoadingSubtitle = "use on alt accounts!",
	ConfigurationSaving = {
		Enabled = true,
		FolderName = "lightspace", 
		FileName = "visualconfig"
	},
        Discord = {
        	Enabled = false,
        	Invite = "", 
        	RememberJoins = false 
        },
	KeySystem = false, 
	KeySettings = {
		Title = "mendeleev's visual hub",
		Subtitle = "  with love for beter visual",
		Note = "dm to mendeleev#4615 about key",
		FileName = "*keykey.txt",
		SaveKey = false,
		GrabKeyFromSite = false, 
		Key = "secretkey_8Ia1#ja$1lla"
	}
})

local Tab = Window:CreateTab("Home")
local ColorCorrTab = Window:CreateTab("Color Correction") 

local Section = ColorCorrTab:CreateSection("Tint Color")
local Slider = ColorCorrTab:CreateSlider({
	Name = "Red",
	Range = {0, 255},
	Increment = 1,
	Suffix = "",
	CurrentValue = 255,
	Flag = "TintRed", 
	Callback = function(Value)
		TintRed = Value
	end,
})
local Slider = ColorCorrTab:CreateSlider({
	Name = "Green",
	Range = {0, 255},
	Increment = 1,
	Suffix = "",
	CurrentValue = 255,
	Flag = "TintGreen", 
	Callback = function(Value)
		TintGreen = Value
	end,
})
local Slider = ColorCorrTab:CreateSlider({
	Name = "Blue",
	Range = {0, 255},
	Increment = 1,
	Suffix = "",
	CurrentValue = 255,
	Flag = "TintBlue", 
	Callback = function(Value)
		TintBlue = Value
	end,
})
local Section = ColorCorrTab:CreateSection("Other propeties")
local Slider = ColorCorrTab:CreateSlider({
	Name = "Saturation",
	Range = {-1, 1},
	Increment = 0.01,
	Suffix = "",
	CurrentValue = 0,
	Flag = "Saturation", 
	Callback = function(Value)
		Saturation = Value
	end,
})
local Slider = ColorCorrTab:CreateSlider({
	Name = "Brightness",
	Range = {-1, 1},
	Increment = 0.01,
	Suffix = "",
	CurrentValue = 0,
	Flag = "Brightness", 
	Callback = function(Value)
		Brightness = Value
	end,
})
local Slider = ColorCorrTab:CreateSlider({
	Name = "Contrast",
	Range = {-1, 1},
	Increment = 0.01,
	Suffix = "",
	CurrentValue = 0,
	Flag = "Contrast", 
	Callback = function(Value)
		Contrast = Value
	end,
})

while wait(1/60000) do
	colorint.TintColor = Color3.fromRGB(TintRed,TintGreen,TintBlue)
	colorint.Brightness = Brightness
	colorint.Contrast = Contrast
	colorint.Saturation = Saturation
end

Rayfield:LoadConfiguration()