
function gadget:GetInfo()
	return {
		name	= 'Coop II',
		desc	= 'Implements mo_coop modoption',
		author	= 'Niobium',
		date	= 'May 2011',
		license	= 'GNU GPL, v2 or later',
		layer	= 1, --should run after game_initial_spawn
		enabled	= true
	}
end

-- Modoption check
if (tonumber((Spring.GetModOptions() or {}).mo_coop) or 0) == 0 then
	return false
end

if gadgetHandler:IsSyncedCode() then
	
	----------------------------------------------------------------
	-- Synced Var
	----------------------------------------------------------------
	local coopStartPoints = {} -- coopStartPoints[playerID] = {x,y,z}, also acts as is-player-a-coop-player
	GG.coopStartPoints = coopStartPoints -- Share to other gadgets
	
	local armcomDefID = UnitDefNames.armcom.id
	local corcomDefID = UnitDefNames.corcom.id
	
	----------------------------------------------------------------
	-- Setting up
	----------------------------------------------------------------
	
	-- for debug echos
   	local function to_string(data, indent)
		local str = ""

		if(indent == nil) then
			indent = 0
		end

		-- Check the type
		if(type(data) == "string") then
			str = str .. (" "):rep(indent) .. data .. "\n"
		elseif(type(data) == "number") then
			str = str .. (" "):rep(indent) .. data .. "\n"
		elseif(type(data) == "boolean") then
			if(data == true) then
				str = str .. "true\n"
			else
				str = str .. "false\n"
			end
		elseif(type(data) == "table") then
			local i, v
			for i, v in pairs(data) do
				-- Check for a table in a table
				if(type(v) == "table") then
					str = str .. (" "):rep(indent) .. i .. ":\n"
					str = str .. to_string(v, indent + 2)
				else
			str = str .. (" "):rep(indent) .. i .. ": " ..to_string(v, 0)
			end
			end
		elseif (data ==nil) then
			str=str..'nil'
		else
		   -- print_debug(1, "Error: unknown data type: %s", type(data))
			--str=str.. "Error: unknown data type:" .. type(data)
			Spring.Echo(type(data) .. 'X data type')
		end

		return str
	end
	
	
	local function SetCoopStartPoint(playerID, x, y, z)
		coopStartPoints[playerID] = {x, y, z}
		--Spring.Echo('coop dbg6',playerID,x,y,z,to_string(coopStartPoints))
	   
		SendToUnsynced("CoopStartPoint", playerID, x, y, z)
	end
	
	do
		local coopHasEffect = false
		local teamHasPlayers = {}
		local playerList = Spring.GetPlayerList()
		for i = 1, #playerList do
			local playerID = playerList[i]
			local _, _, isSpec, teamID = Spring.GetPlayerInfo(playerID)
			if not isSpec then
				if teamHasPlayers[teamID] then
					SetCoopStartPoint(playerID, -1, -1, -1)
					coopHasEffect = true
				else
					teamHasPlayers[teamID] = true
				end
			end
		end
		
		if coopHasEffect then
			GG.coopMode = true -- Inform other gadgets that coop needs to be taken into account
		end
	end


	----------------------------------------------------------------
	-- Synced Callins
	----------------------------------------------------------------
	
	
	function gadget:AllowStartPosition(playerID, teamID, readyState, x, y, z)
		
		--Spring.Echo('allowstart',x,z,playerID)
		for otherplayerID, startPos in pairs(coopStartPoints) do
			if startPos[1]==x and startPos[3]==z then
				--Spring.Echo('coop dbg8',playerID,'a real start was attempted to be placed on a coop start ',otherplayerID,'at',x,z,'disallowing!')
				return false
			end
		end
		if coopStartPoints[playerID] then
			-- Spring sometimes(?) has each player re-place their start position on their current team start position pre-gamestart
			-- To catch this, we don't recognise a coop start position if it is identical to their teams 'normal' start position
			-- This has the side-effect that a coop player cannot intentionally start directly on their teammate, but this is OK
			
			-- Since spring is a bitch, and if the first player (the guy who places the real start point) readies up first, and 
			-- his coop buddy readies up after, then the first will have his start point overwritten by the second.
			-- This can be prevented by not allowing the first to place on second, either.
			
			local _, _, _, teamID, allyID = Spring.GetPlayerInfo(playerID)
			local osx, _, osz = Spring.GetTeamStartPosition(teamID)
			if x ~= osx or z ~= osz then
				local xmin, zmin, xmax, zmax = Spring.GetAllyTeamStartBox(allyID)
				x = math.min(math.max(x, xmin), xmax)
				z = math.min(math.max(z, zmin), zmax)
				
				--NewbiePlacer
				local _,_,_,teamID = Spring.GetPlayerInfo(playerID)
				if (Spring.GetTeamRulesParam(teamID, 'isNewbie') == 1) then 
					Spring.SendMessageToPlayer(playerID,"In this match, teams containing newbies (rank 0) will have factions and startpoints chosen for them!")
					coopStartPoints[playerID] = {-1,-1,-1} --record an invalid coop startpoint, to be picked up and assigned properly later; don't display anything
					return true --because if we don't the cooped players won't appear readied (even though they are) 
				else
					SetCoopStartPoint(playerID, x, Spring.GetGroundHeight(x, z), z) --record coop start point, display it
					return false
				end
			end		
		end
		---Spring.Echo('allowstart true',x,z,playerID)
		   
	   return true
	end
	
	function IsSteep(x,z)
		--check if the position (x,z) is too step to start a commander on or not
		local mtta = math.acos(1.0 - 0.41221) - 0.02 --http://springrts.com/wiki/Movedefs.lua#How_slope_is_determined & the -0.02 is for safety 
		local a1,a2,a3,a4 = 0,0,0,0
		local d = 5
		local y = Spring.GetGroundHeight(x,z)
		local y1 = Spring.GetGroundHeight(x+d,z)
		if math.abs(y1 - y) > 0.1 then a1 = math.atan((y1-y)/d) end
		local y2 = Spring.GetGroundHeight(x,z+d)
		if math.abs(y2 - y) > 0.1 then a2 = math.atan((y2-y)/d) end
		local y3 = Spring.GetGroundHeight(x-d,z)
		if math.abs(y3 - y) > 0.1 then a3 = math.atan((y3-y)/d) end
		local y4 = Spring.GetGroundHeight(x,z+d)
		if math.abs(y4 - y) > 0.1 then a4 = math.atan((y4-y)/d) end
		if math.abs(a1) > mtta or math.abs(a2) > mtta or math.abs(a3) > mtta or math.abs(a4) > mtta then 
			return true --too steep
		else
			return false --ok
		end	
	end
	
	local function SpawnTeamStartUnit(playerID,teamID, allyID, x, z)
		local startUnit = Spring.GetTeamRulesParam(teamID, 'startUnit') 
		if GG.playerStartingUnits then --use that player specific start unit if available
			startUnit = GG.playerStartingUnits[playerID] or startUnit
		end

		--Newbie Placer chooses random faction for newbies
		if Spring.GetTeamRulesParam(teamID, 'isNewbie') == 1 or (startUnit==nil) then
			if math.random() > 0.5 then
				startUnit = corcomDefID
			else
				startUnit = armcomDefID
			end
		end
		
		--Newbie Placer chooses a start point for newbies (the coop teams start point will have already been set in initial_spawn, just place close to that)
		if (Spring.GetTeamRulesParam(teamID, 'isNewbie') == 1) or x <= 0 or z <= 0 then --TODO: improve this
			local xmin, zmin, xmax, zmax = Spring.GetAllyTeamStartBox(allyID)
			local tx,tz
			if GG.teamStartPoints then
				tx = GG.teamStartPoints[teamID][1]
				tz = GG.teamStartPoints[teamID][3]
			else
				tx = (xmin+xmax)/2
				tz = (zmin+zmax)/2
			end
			local thetaStart = math.random(15)-1
			for theta = thetaStart,15+thetaStart do
				local sx = tx + 45*math.cos((math.pi/8)*theta)
				local sz = tz + 45*math.sin((math.pi/8)*theta)
				if not IsSteep(sx,sz) then
					x = math.max(xmin,math.min(sx,xmax))
					z = math.max(zmin,math.min(sz,zmax))
					break
				else --fallback
					x=tx
					z=tz
				end
			end
		end
	
		--create
		local unitID = Spring.CreateUnit(startUnit, x, Spring.GetGroundHeight(x, z), z, 0, teamID)
		coopStartPoints[playerID] = {x,z}
		GG.playerStartingUnits[playerID] = startUnit
		--we set unit rule to mark who belongs to, so initial queue knows which com unitID belongs to which player's initial queue
		Spring.SetUnitRulesParam(unitID, "startingOwner", playerID )
	end
	
	function gadget:GameFrame(n)		
		--spawn cooped coms
		if n==0 and GG.coopMode then
			--Spring.Echo('coop dbg7',to_string(coopStartPoints))
			for playerID, startPos in pairs(coopStartPoints) do
				local _, _, _, teamID, allyID = Spring.GetPlayerInfo(playerID)
				SpawnTeamStartUnit(playerID,teamID, allyID, startPos[1], startPos[3])
			end
		end
		
		gadgetHandler:RemoveGadget(self)
		SendToUnsynced('RemoveGadget') -- Remove unsynced side too
	end
		

else
	
	----------------------------------------------------------------
	-- Unsynced Var
	----------------------------------------------------------------
	local playerNames = {} -- playerNames[playerID] = playerName
	local playerTeams = {} -- playerTeams[playerID] = playerTeamID
	local coopStartPoints = {}

	local shaderCone
	local shaderConeViewLocation
	local shaderConeProjLocation

	local font
	local heightOffset = 120

	----------------------------------------------------------------
	-- Unsynced speedup
	----------------------------------------------------------------
	local spWorldToScreenCoords = Spring.WorldToScreenCoords
	local spGetMyPlayerID = Spring.GetMyPlayerID
	local spGetSpectatingState = Spring.GetSpectatingState
	local spArePlayersAllied = Spring.ArePlayersAllied
	
	----------------------------------------------------------------
	-- Stolen funcs from from minimap_startbox.lua (And cleaned up a bit)
	----------------------------------------------------------------
	local function ColorChar(x)
		local c = math.min(math.max(math.floor(x * 255), 1), 255)
		return string.char(c)
	end
	
	local function CoopStartPoint(epicwtf, playerID, x, y, z) --this epicwtf param is used because it seem that when a registered function is locaal, then the registration name is  passed too. if the function is part of gadget: then it is not passed.
		--Spring.Echo('coop dbg5',epicwtf,playerID,x,y,z,to_string(coopStartPoints))
			
		coopStartPoints[playerID] = {x, y, z}
	end

	local function CreateShaders()

		-- Cone shader taken from map_startbox.lua.
		shaderCone = gl.CreateShader({
			vertex = [[
				//VERTEX SHADER
				#version 400

				layout(location = 0) in vec3 inPosition;
				layout(location = 1) in vec4 inColor;

				out VertexData {
					vec4 color;
				} outData;

				void main() {
					gl_Position = vec4(inPosition, 1.0f);
					outData.color = inColor;
				}
			]],

			geometry = [[
				//GEOMETRY SHADER
				#version 400

				#define pi 3.14159265358979

				uniform mat4 viewMatrix;
				uniform mat4 projMatrix;

				layout (points) in;
				layout (triangle_strip, max_vertices = 96) out;

				in VertexData {
					vec4 color;
				} inData[1];

				out VertexData {
					vec4 color;
				} outData;

				void main() {
					outData.color = inData[0].color;

					float h = 100.0f;
					float r = 25.0f;
					int divs = 32;

					vec4 top = projMatrix * viewMatrix * (gl_in[0].gl_Position + vec4(0.0f, h, 0.0f, 0.0f));
					float a;

					for (int i=0; i<divs; ++i) {
						gl_Position = top;
						EmitVertex();

						a = i * (pi * 2 / divs);
						gl_Position = projMatrix * viewMatrix * (gl_in[0].gl_Position + vec4(r * sin(a), 0, r * cos(a), 0.0f));
						EmitVertex();

						a = (i + 1) * (pi * 2 / divs);
						gl_Position = projMatrix * viewMatrix * (gl_in[0].gl_Position + vec4(r * sin(a), 0, r * cos(a), 0.0f));
						EmitVertex();

						EndPrimitive();
					}
				}
			]],

			fragment = [[
				//FRAGMENT SHADER
				#version 400

				in VertexData {
					vec4 color;
				} inData;

				layout(location = 0) out vec4 outColor;

				void main() {
					outColor = inData.color;
				}
			]],
		})

		if (shaderCone == nil) then
			Spring.Echo("Cone shader log: ".. gl.GetShaderLog())
		end

		shaderConeViewLocation = gl.GetUniformLocation(shaderCone, "viewMatrix")
		shaderConeProjLocation = gl.GetUniformLocation(shaderCone, "projMatrix")
	end

	----------------------------------------------------------------
	-- Unsynced Callins
	----------------------------------------------------------------
	function gadget:Initialize()
		gadgetHandler:AddSyncAction("CoopStartPoint", CoopStartPoint)
		-- Speed things up
		local playerList = Spring.GetPlayerList()
		for i = 1, #playerList do
			local playerID = playerList[i]
			local playerName, _, _, teamID = Spring.GetPlayerInfo(playerID)
			playerNames[playerID] = playerName
			playerTeams[playerID] = teamID
			--Spring.Echo('coop dbg2',i,playerName,playerID,teamID,#playerList)
		end

		font = gl.LoadFont("LuaUI/Fonts/FreeSansBold.otf", 25, 4, 10, true)

		CreateShaders()
	end

	local teamColors = {}

	local function GetTeamColor(teamID)
		local color = teamColors[teamID]
		if (color) then
			return color
		end
		local r, g, b = Spring.GetTeamColor(teamID)

		color = { r, g, b }
		teamColors[teamID] = color
		return color
	end

	function gadget:Shutdown()
		gadgetHandler:RemoveSyncAction("CoopStartPoint")
	end
	
	function gadget:DrawWorld()
		gl.UseShader(shaderCone)
		gl.UniformMatrix(shaderConeViewLocation, "view")
		gl.UniformMatrix(shaderConeProjLocation, "projection")

		local areSpec = spGetSpectatingState()
		local myPlayerID = spGetMyPlayerID()
		for playerID, startPosition in pairs(coopStartPoints) do
		--	Spring.Echo('coop dbg3',myPlayerID,playerID,'klj\n',to_string(coopStartPoints))
			if areSpec or spArePlayersAllied(myPlayerID, playerID) then
				local sx, sy, sz = startPosition[1], startPosition[2], startPosition[3]
				if sx > 0 or sz > 0 then
					--Spring.Echo('coop dbg',playerID,playerTeams[playerID])
					local color = GetTeamColor(playerTeams[playerID])
					-- Alpha would oscillate, but gadgets can't get time
					local alpha = 0.5 -- + math.abs(((time * 3) % 1) - 0.5)
					Spring.Draw.Vertices(1, {sx, sy+20, sz}, {color[1], color[2], color[3], alpha})
				end
			end
		end

		gl.UseShader(0)
	end
	
	function gadget:DrawScreenEffects()
		font:Begin()
		local areSpec = spGetSpectatingState()
		local myPlayerID = spGetMyPlayerID()
		for playerID, startPosition in pairs(coopStartPoints) do
			--Spring.Echo('coop dbg4',myPlayerID,playerID)
		  
			if areSpec or spArePlayersAllied(myPlayerID, playerID) then
				local sx, sy, sz = startPosition[1], startPosition[2], startPosition[3]
				if sx > 0 or sz > 0 then
					local scx, scy, scz = spWorldToScreenCoords(sx, sy + heightOffset, sz)
					if scz < 1 then
						local color = GetTeamColor(playerTeams[playerID])
						local outlineColor = { 0, 0, 0, 1 }
						if (color[1] + color[2] * 1.2 + color[3] * 0.4) < 0.8 then
							outlineColor = { 1, 1, 1, 1 }
						end
						font:SetTextColor(color)
						font:SetOutlineColor(outlineColor)
						font:Print(playerNames[playerID], scx, scy, 18, 'con')
					end
				end
			end
		end
		font:End()
	end

--	-- FIXME: Also draw coop start positions in minimap, see map_startbox.lua.
--	function gadget:DrawInMiniMap(sx, sz)
--	end

	function gadget:RecvFromSynced(arg1, ...)
		if arg1 == 'RemoveGadget' then
			gadgetHandler:RemoveGadget(self)
		end
	end
	
	-- for debug echos
	function to_string(data, indent)
		local str = ""

		if(indent == nil) then
			indent = 0
		end

		-- Check the type
		if(type(data) == "string") then
			str = str .. (" "):rep(indent) .. data .. "\n"
		elseif(type(data) == "number") then
			str = str .. (" "):rep(indent) .. data .. "\n"
		elseif(type(data) == "boolean") then
			if(data == true) then
				str = str .. "true\n"
			else
				str = str .. "false\n"
			end
		elseif(type(data) == "table") then
			local i, v
			for i, v in pairs(data) do
				-- Check for a table in a table
				if(type(v) == "table") then
					str = str .. (" "):rep(indent) .. i .. ":\n"
					str = str .. to_string(v, indent + 2)
				else
			str = str .. (" "):rep(indent) .. i .. ": " ..to_string(v, 0)
			end
			end
		elseif (data ==nil) then
			str=str..'nil'
		else
		   -- print_debug(1, "Error: unknown data type: %s", type(data))
			--str=str.. "Error: unknown data type:" .. type(data)
			Spring.Echo(type(data) .. 'X data type')
		end

		return str
	end
end

