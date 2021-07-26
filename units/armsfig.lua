return {
	armsfig = {
		acceleration = 0.16,
		airsightdistance = 700,
		brakerate = 0.1,
		buildcostenergy = 4559,
		buildcostmetal = 77,
		buildpic = "ARMSFIG.DDS",
		buildtime = 7279,
		canfly = true, 
 
		canmove = true,
		cansubmerge = true,
		category = "ALL NOTLAND MOBILE WEAPON NOTSUB ANTIFLAME ANTIEMG ANTILASER VTOL NOTSHIP NOTHOVER",
		collide = false,
		collisionvolumeoffsets = "0 0 0",
		collisionvolumescales = "24 16 24",
		collisionvolumetype = "box",
		cruisealt = 80,
		description = "Seaplane Swarmer",
		explodeas = "big_unitex_air",
		footprintx = 2,
		footprintz = 2,
		icontype = "air",
		maxdamage = 255,
		maxslope = 10,
		maxvelocity = 10.36,
		maxwaterdepth = 255,
		name = "Tornado",
		nochasecategory = "NOTAIR",
		objectname = "ARMSFIG",
		seismicsignature = 0,
		selfdestructas = "small_unit_AIR",
		sightdistance = 200,
		turnrate = 1625,
		blocking = false,
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
			armsfig_weapon = {
				areaofeffect = 48,
			cegtag = "missiletrailfighterarm",

				avoidfeature = false,
				collidefriendly = false,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				explosiongenerator = "custom:FLASH2",
				firestarter = 0,
				impulseboost = 0,
				impulsefactor = 0,
				metalpershot = 0,
				model = "missile",
				name = "GuidedMissiles",
				noselfdamage = true,
				range = 550,
				reloadtime = 0.85,
				smoketrail = true,
				soundhit = "xplosml2",
				soundhitwet = "splshbig",
				soundhitwetvolume = 0.5,
				soundstart = "Rocklit3",
				startvelocity = 420,
				texture2 = "armsmoketrail",
				tolerance = 8000,
				tracks = true,
				turnrate = 19384,
				weaponacceleration = 146,
				weapontimer = 5,
				weapontype = "MissileLauncher",
				weaponvelocity = 522,
				damage = {
					bombers = 210,
					commanders = 5,
					default = 12,
					fighters = 210,
					subs = 3,
					vtol = 210,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "NOTAIR",
				def = "ARMSFIG_WEAPON",
				onlytargetcategory = "NOTSUB",
			},
		},
	},
}
