local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
 
local client = Players.LocalPlayer
local remote = ReplicatedStorage.WeaponFrameworkRep.Events.Damage
 
local function killPlayer(player)
    local character = player.Character
    if character then
        local instance = character:GetChildren()[1]
        local args = {
            19742,
            {instance},
            {
                ["DamageHumanoid"] = {
                    ["Value"] = math.huge,
                },
                ["DamageVehicle"] = {
                    ["Value"] = math.huge,
                },
                ["Explosive"] = {
                    ["ExplosiveDamageHumanoid"] = {
                        ["Value"] = math.huge,
                    },
                    ["ExplosiveDamageVehicle"] = {
                        ["Value"] = math.huge,
                    },
                },
            },
            Vector3.new(0,0,0)
        }
        remote:FireServer(unpack(args))
    end
end
 
for _,v in pairs(Players:GetPlayers()) do
    killPlayer(v)
end
