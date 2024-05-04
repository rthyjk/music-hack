if game.Teams:FindFirstChild("Head Developer") then
    for i, tool in pairs(game.Teams["Head Developer"]:GetChildren()) do
        ClonedTool =  tool:Clone()
        ClonedTool.Parent = game.Players.LocalPlayer.Backpack
    end
elseif game.Teams:FindFirstChild("A26 | หน่วยอรินทราช") and game.Teams:FindFirstChild("BPP | ตำรวจตระเวนชายแดน") then
    for i, tool in pairs(game.Teams["A26 | หน่วยอรินทราช"]:GetChildren()) do
        ClonedTool =  tool:Clone()
        ClonedTool.Parent = game.Players.LocalPlayer.Backpack
    end
    game.Teams["BPP | ตำรวจตระเวนชายแดน"].M16A4:Clone().Parent = game.Players.LocalPlayer.Backpack
else
    warn("Not in compatible game!")
end
