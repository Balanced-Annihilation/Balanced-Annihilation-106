function gadget:GetInfo()
    return {
        name = "APM Broadcast",
        desc = "Broadcasts APM",
        author = "Floris",
        date = "July,2016",
        license = "GNU GPL, v2 or later",
        layer = 0,
        enabled = true
    }
end
local GetMyPlayerID = Spring.GetMyPlayerID
--------------------------------------------------------------------------------
-- config
--------------------------------------------------------------------------------
local sendPacketEvery = 2

--------------------------------------------------------------------------------
-- synced
--------------------------------------------------------------------------------
if gadgetHandler:IsSyncedCode() then
    function gadget:RecvLuaMsg(msg, playerID)
        if msg:sub(1, 1) == "$" then
            SendToUnsynced("apmBroadcast", playerID, tonumber(msg:sub(2)))
            return true
        end
    end
else
    --------------------------------------------------------------------------------
    -- unsynced
    --------------------------------------------------------------------------------
    local GetLastUpdateSeconds = Spring.GetLastUpdateSeconds
    local SendLuaRulesMsg = Spring.SendLuaRulesMsg
    local myPlayerID = GetMyPlayerID()

    local updateTimer = 0

    local GetPlayerStatistics = Spring.GetPlayerStatistics
    local GetGameSeconds = Spring.GetGameSeconds

    function gadget:Initialize()
        gadgetHandler:AddSyncAction("apmBroadcast", handleApmEvent)
    end

    function gadget:Shutdown()
        gadgetHandler:RemoveSyncAction("apmBroadcast")
    end

    function handleApmEvent(_, playerID, apm)
        if Script.LuaUI("ApmEvent") then
            Script.LuaUI.ApmEvent(playerID, apm)
        end
    end

    function gadget:Update()
        if not Spring.GetSpectatingState() then
            updateTimer = updateTimer + GetLastUpdateSeconds()
            if updateTimer > sendPacketEvery then
                _, mc, kp, _, _ = GetPlayerStatistics(myPlayerID)
                SendLuaRulesMsg("$" .. (math.ceil((((mc + kp) * 60) / (math.max(GetGameSeconds(), 60))) - 0.5)))
                updateTimer = 0
            end
        end
    end
end
