return {
	armbrawl = {
		acceleration = 0.24,
		brakerate = 0.44,
		buildcostenergy = 6163,
		buildcostmetal = 314,
		buildpic = "ARMBRAWL.DDS",
		buildtime = 13294,
		canfly = true,
		canmove = true,
		category = "ALL NOTLAND MOBILE WEAPON NOTSUB ANTIFLAME ANTIEMG ANTILASER VTOL NOTSHIP NOTHOVER",
		collide = false,
		cruisealt = 100,
		description = "Gunship",
		energymake = 0.8,
		energyuse = 0.8,
		explodeas = "GUNSHIPEX",
		footprintx = 3,
		footprintz = 3,
		hoverattack = true,
		icontype = "air",
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 1600,
		maxslope = 10,
		maxvelocity = 5.36,
		maxwaterdepth = 0,
		name = "Brawler",
		nochasecategory = "VTOL",
		objectname = "ARMBRAWL",
		seismicsignature = 0,
		selfdestructas = "big_unit",
		sightdistance = 550,
		turninplaceanglelimit = 360,
		turnrate = 792,
		blocking = false,
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
			vtol_emg = {
				areaofeffect = 8,
				avoidfeature = false,
				burst = 3,
				burstrate = 0.1,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				explosiongenerator = "custom:BRAWLIMPACTS",
				impulseboost = 0.123,
				impulsefactor = 0.123,
				intensity = 0.8,
				name = "E.M.G.",
				noselfdamage = true,
				range = 380,
				reloadtime = 0.475,
				rgbcolor = "1 0.95 0.4",
				size = 2.5,
				soundhitwet = "splshbig",
				soundhitwetvolume = 0.5,
				soundstart = "brawlemg",
				sprayangle = 1024,
				tolerance = 6000,
				turret = false,
				weapontimer = 1,
				weapontype = "Cannon",
				weaponvelocity = 450,
				damage = {
					bombers = 2,
					commanders = 8,
					default = 16,
					fighters = 2,
					subs = 1,
					vtol = 2,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "VTOL",
				def = "VTOL_EMG",
				onlytargetcategory = "SURFACE",
			},
		},
	},
}
