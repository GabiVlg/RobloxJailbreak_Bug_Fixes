local VehicleEnter = require(game:GetService("ReplicatedStorage").Module.AlexChassis).VehicleEnter
require(game:GetService("ReplicatedStorage").Module.AlexChassis).VehicleEnter = function(Packet)
    if Packet.Model:FindFirstChild("SpoilerPart") then
        Packet.GarageSpoilerSpeed = true
        Packet.Model.SpoilerPart.Massless = true
    end
    return VehicleEnter(Packet)
end