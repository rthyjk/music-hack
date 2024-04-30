sound = true
local ID = "rbxassetid://9062298855" 
local Name = "get troll" 
local Volume = 100 
local Pitch = 1 

           for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
			if v:IsA("RemoteEvent") and v.Name == "AC6_FE_Sounds" then
				if sound == true then
					v:FireServer("newSound", Name, workspace, ID, Pitch, Volume, true)
					v:FireServer("playSound", Name)
				end 

				if sound == false then
					v:FireServer("stopSound", Name)
				end
			end
		end
