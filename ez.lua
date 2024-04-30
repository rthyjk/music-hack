local Name = "get troll" 
local Volume = 100 
local Pitch = 1 
  
   for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
			if v:IsA("RemoteEvent") and v.Name == "AC6_FE_Sounds" then
		           v:FireServer("newSound", Name, workspace, (txt), Pitch, Volume, true)
			      v:FireServer("playSound", Name)
			end 
