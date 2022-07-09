function gadget:GetInfo()
    return {
        name = "Explosion_lights",
        desc = "",
        author = "Floris",
        date = "April 2017",
        license = "GNU GPL, v2 or later",
        layer = 0,
        enabled = true
    }
end

-------------------------------------------------------------------------------
-- Synced
-------------------------------------------------------------------------------

if (gadgetHandler:IsSyncedCode()) then


    local cannonWeapons = {}
    local barrelWeapons = {}
	
local flea_ex = WeaponDefNames['flea_ex'].id
local small_unitex = WeaponDefNames['small_unitex'].id
local small_unit = WeaponDefNames['small_unit'].id

local small_unit_air = WeaponDefNames['small_unit_air'].id
local small_unitex_air = WeaponDefNames['small_unitex_air'].id
local big_unitex_air = WeaponDefNames['big_unitex_air'].id
local big_unit_air = WeaponDefNames['big_unit_air'].id
	
    function gadget:Initialize()
        for wdid, wd in pairs(WeaponDefs) do
            if wd.type == "Cannon" then
                cannonWeapons[wdid] = true
                Script.SetWatchExplosion(wdid, true) -- might be getting too expensive
            end
            if wd.type == "BeamLaser" then
                Script.SetWatchExplosion(wdid, true) -- might be getting too expensive
            end
        end

    end
    function gadget:Shutdown()
		Spring.Echo("shutdown bad")

        for wdid, wd in pairs(WeaponDefs) do
            if wd.type == "Cannon" then
                Script.SetWatchExplosion(wdid, false) -- might be getting too expensive
            end
        end
    end

       function gadget:Explosion(weaponID, px, py, pz, ownerID)
			if weaponID ~= big_unitex_air then
				SendToUnsynced("explosion_light", px, py, pz, weaponID, ownerID)
			end
    end
else
    -------------------------------------------------------------------------------
    -- Unsynced
    -------------------------------------------------------------------------------

	if (gl.CreateShader == nil or not gl.CreateShader) then
	Spring.Log("CUS", LOG.WARNING, "Shaders not supported, disabling lights gadget")
	return false
	end
	
    local myAllyID = Spring.GetMyAllyTeamID()
    local spGetUnitAllyTeam = Spring.GetUnitAllyTeam
    local spIsPosInLos = Spring.IsPosInLos

    function gadget:PlayerChanged(playerID)
        if (playerID == Spring.GetMyPlayerID()) then
            myAllyID = Spring.GetMyAllyTeamID()
        end
    end

    local function SpawnExplosion(_, px, py, pz, weaponID, ownerID)
			if Script.LuaUI("GadgetWeaponExplosion") then
          Script.LuaUI.GadgetWeaponExplosion(px, py, pz, weaponID, ownerID)
		     end    
    end

    function gadget:Initialize()
        gadgetHandler:AddSyncAction("explosion_light", SpawnExplosion)
		

        --  gadgetHandler:AddSyncAction("barrelfire_light", SpawnBarrelfire)
    end

    function gadget:Shutdown()
	--Spring.Echo("shutdown good")
        gadgetHandler.RemoveSyncAction("explosion_light")
        -- gadgetHandler.RemoveSyncAction("barrelfire_light")
    end
end
