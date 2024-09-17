AddCSLuaFile()

if CLIENT then return end

util.AddNetworkString("kaito_net_nightvision_varbridge")
util.AddNetworkString("kaito_net_start_nvg")
util.AddNetworkString("kaito_net_remove_nvgs")
util.AddNetworkString("kaito_net_remove_thermals")



net.Receive("kaito_net_start_nvg", function()
    local isFree = GetConVar("sv_kaito_free_nvg"):GetInt()
    local isNVGFree = GetConVar("sv_kaito_free_nightvision_only"):GetInt()
    local ply = net.ReadEntity()
    net.Start("kaito_net_nightvision_varbridge", false)
        net.WriteInt(isNVGFree, 8)
        net.WriteInt(isFree, 8)
    net.Send(ply)
end)




    
