-- COLLECTIONS DO NOT WORK PLEASE MAKE SURE TO COMPRESS YOUR CONTENT INTO ONE PACK FOR EASIER DOWNLOAD :) - 1O1VFX @ DUPLICATOR
local workShopContent = {
    "2917627558",  -- Advanced Dupe 2 Fix for DarkRP
    "2917675451",  -- Fading Door Tool Fix for DarkRP
    "2967335150",  -- Grapple Hook | Fixed | No Sound | No Damage | Downsized
    "3023959538",  -- Media Player - DarkRP Version
    "3026292904",  -- Phantom Ruby swep - DarkRP Version
    "2917622107",  -- Precision Toolgun Fix for DarkRP
    "1907060869", -- Hook lib
    "2849884169", -- pm
    "2775598353", -- pm test 2
}

-- Please remove the addons above and make sure to add YOUR content pack
-- Sam needed!
-- Message me on our discord https://discord.gg/paaV2P8kD4

hook.Add("PlayerSay","DupeWorkshopDownload", function( ply, command)
    if not IsValid(ply) then return end
    if command ~= "!workshop" then return end
    for i, v in ipairs(workShopContent) do
        ply:SendLua("steamworks.DownloadUGC( " .. v .. ", function(path,file) game.MountGMA( path ) end)")
    end
end)


-- command is !workshop or !ws