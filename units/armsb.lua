return {
	armsb = {
		acceleration = 0.096000000834465,
		brakerate = 0.5,
		buildcostenergy = 7544,
		buildcostmetal = 169,
		buildpic = "ARMSB.DDS",
		buildtime = 9684,
		canfly = true,
		canmove = true,
		cansubmerge = true,
		category = "ALL NOTLAND MOBILE WEAPON ANTIGATOR NOTSUB ANTIFLAME ANTIEMG ANTILASER VTOL NOTSHIP NOTHOVER",
		collide = false,
		cruisealt = 250,
		description = "Seaplane Bomber",
		energymake = 1.1000000238419,
		energyuse = 1.1000000238419,
		explodeas = "BIG_UNITEX",
		footprintx = 3,
		footprintz = 3,
		icontype = "air",
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 750,
		maxslope = 10,
		maxvelocity = 8.9099998474121,
		maxwaterdepth = 255,
		name = "Tsunami",
		noautofire = true,
		nochasecategory = "VTOL",
		objectname = "ARMSB",
		seismicsignature = 0,
		selfdestructas = "BIG_UNIT_AIR",
		sightdistance = 455,
		turnrate = 392,
		sounds = {
			build = "nanlath1",
			canceldestruct = "cancel2",
			repair = "repair1",
			underattack = "warning1",
			working = "reclaim1",
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
				[1] = "vtolcrmv",
			},
			select = {
				[1] = "seapsel1",
			},
		},
		weapondefs = {
			arm_seaadvbomb = {
				areaofeffect = 100,
				burst = 5,
				burstrate = 0.19,
				collidefriendly = false,
				commandfire = false,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.69999998807907,
				explosiongenerator = "custom:ARM_BIGBOMB_EXPLOSION",
				gravityaffected = "true",
				impulseboost = 0.12300000339746,
				impulsefactor = 0.12300000339746,
				manualbombsettings = true,
				model = "bomb",
				name = "SeaAdvancedBombs",
				noselfdamage = true,
				range = 1280,
				reloadtime = 9,
				soundhit = "xplomed2",
				soundstart = "bombrel",
				weapontype = "AircraftBomb",
				damage = {
					bombers = 5,
					default = 210,
					subs = 5,
				},
			},
		},
		weapons = {
			[1] = {
				badTargetCategory = "VTOL",
				def = "ARM_SEAADVBOMB",
				onlyTargetCategory = "NOTSUB",
			},
		},
	},
}
