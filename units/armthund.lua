return {
	armthund = {
		acceleration = 0.032,
		brakerate = 0.05,
		buildcostenergy = 4129,
		buildcostmetal = 147,
		buildpic = "ARMTHUND.DDS",
		buildtime = 4778,
		canfly = true, 
 
		canmove = true,
		category = "ALL MOBILE WEAPON NOTLAND NOTSUB ANTIFLAME ANTIEMG ANTILASER VTOL NOTSHIP NOTHOVER",
		collide = false,
		collisionvolumeoffsets = "0 0 0",
		collisionvolumescales = "32 16 36",
		collisionvolumetype = "box",
		cruisealt = 165,
		description = "Bomber",
		energymake = 1.1,
		energyuse = 1.1,
		explodeas = "big_unitex",
		footprintx = 3,
		footprintz = 3,
		icontype = "air",
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 560,
		maxslope = 10,
		maxvelocity = 8.15,
		maxwaterdepth = 0,
		name = "Thunder",
		noautofire = true,
		nochasecategory = "MOBILE",
		objectname = "ARMTHUND",
		seismicsignature = 0,
		selfdestructas = "big_unit_AIR",
		sightdistance = 195,
		turnrate = 829,
		sounds = {
			canceldestruct = "cancel2",
			underattack = "warning1",
			cant = {
				[1] = "cantdo4",
			},
			count = {
				[1] = "count6",
				[2] = "count5",
				[3] = "count4",
				[4] = "count3",
				[5] = "count2",
				[6] = "count1",
			},
			ok = {
				[1] = "vtolarmv",
			},
			select = {
				[1] = "vtolarac",
			},
		},
		weapondefs = {
			armbomb = {
				accuracy = 500,
				areaofeffect = 144,
				avoidfeature = false,
				burst = 5,
				burstrate = 0.3,
				collidefriendly = false,
				commandfire = false,
				craterareaofeffect = 144,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.4,
				explosiongenerator = "custom:T1ARMBOMB",
				gravityaffected = "true",
				impulseboost = 0.5,
				impulsefactor = 0.5,
				model = "bomb",
				name = "Bombs",
				noselfdamage = true,
				range = 1280,
				reloadtime = 9,
				soundhit = "xplomed2",
				soundhitwet = "splsmed",
				soundhitwetvolume = 0.5,
				soundstart = "bombrel",
				sprayangle = 300,
				weapontype = "AircraftBomb",
				damage = {
					default = 140,
					subs = 5,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "MOBILE",
				def = "ARMBOMB",
				onlytargetcategory = "NOTSUB",
			},
		},
	},
}
