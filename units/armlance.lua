return {
	armlance = {
		acceleration = 0.08,
		brakerate = 0.075,
		buildcostenergy = 7038,
		buildcostmetal = 326,
		buildpic = "ARMLANCE.DDS",
		buildtime = 15096,
		canfly = true,
		canmove = true,
		category = "ALL NOTLAND MOBILE WEAPON NOTSUB ANTIFLAME ANTIEMG ANTILASER VTOL NOTSHIP NOTHOVER",
		collide = false,
		cruisealt = 120,
		description = "Torpedo Bomber",
		energymake = 1.5,
		energyuse = 1.5,
		explodeas = "big_unitex",
		footprintx = 3,
		footprintz = 3,
		icontype = "air",
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 1727,
		maxslope = 10,
		maxvelocity = 10.92,
		maxwaterdepth = 255,
		name = "Lancet",
		nochasecategory = "VTOL",
		objectname = "ARMLANCE",
		seismicsignature = 0,
		selfdestructas = "big_unit_AIR",
		sightdistance = 455,
		turnrate = 462,
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
			armair_torpedo = {
				areaofeffect = 16,
				avoidfeature = false,
				avoidfriendly = false,
				burnblow = true,
				collidefriendly = false,
				collideGround = false,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				explosiongenerator = "custom:FLASH2",
				flighttime = 1.5,
				impulseboost = 0.123,
				impulsefactor = 0.123,
				model = "torpedo",
				name = "TorpedoLauncher",
				noselfdamage = true,
				range = 500,
				reloadtime = 8,
				soundhit = "xplodep2",
				soundstart = "bombrel",
				startvelocity = 100,
				tolerance = 6000,
				tracks = true,
				turnrate = 60000,
				turret = false,
				waterweapon = true,
				weaponacceleration = 15,
				weapontimer = 5,
				weapontype = "TorpedoLauncher",
				weaponvelocity = 100,
				damage = {
					default = 1500,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "NOTSHIP",
				def = "ARMAIR_TORPEDO",
				onlytargetcategory = "NOTHOVER",
			},
		},
	},
}
