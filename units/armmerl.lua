return {
	armmerl = {
		acceleration = 0.026,
		brakerate = 0.1122,
		buildcostenergy = 6556,
		buildcostmetal = 919,
		buildpic = "ARMMERL.DDS",
		buildtime = 15592,
		canmove = true,
		category = "ALL TANK MOBILE WEAPON NOTSUB NOTSHIP NOTAIR NOTHOVER SURFACE",
		collisionvolumeoffsets = "0 -9 0",
		collisionvolumescales = "40 40 50",
		collisionvolumetype = "CylZ",
		corpse = "DEAD",
		description = "Stealthy Rocket Launcher",
		energymake = 0.5,
		energyuse = 0.5,
		explodeas = "large_unitex",
		footprintx = 3,
		footprintz = 3,
		idleautoheal = 5,
		idletime = 1800,
		leavetracks = true,
		maxdamage = 1100,
		maxslope = 16,
		maxvelocity = 1.2,
		maxwaterdepth = 12,
		movementclass = "TANK3",
		name = "Merl",
		nochasecategory = "VTOL",
		objectname = "ARMMERL",
		seismicsignature = 0,
		selfdestructas = "large_unit",
		sightdistance = 247,
		stealth = true,
		trackoffset = 15,
		trackstrength = 8,
		tracktype = "StdTank",
		trackwidth = 38,
		turninplace = 0,
		turninplaceanglelimit = 140,
		turninplacespeedlimit = 0.792,
		turnrate = 520.29999,
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "-0.623458862305 -0.91624 0.291633605957",
				collisionvolumescales = "41.7318725586 18.875 50.3305206299",
				collisionvolumetype = "Box",
				damage = 1812,
				description = "Merl Wreckage",
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 3,
				footprintz = 3,
				height = 20,
				hitdensity = 100,
				metal = 560,
				object = "ARMMERL_DEAD",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				damage = 906,
				description = "Merl Heap",
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 3,
				footprintz = 3,
				height = 4,
				hitdensity = 100,
				metal = 224,
				object = "3X3F",
                collisionvolumescales = "55.0 4.0 6.0",
                collisionvolumetype = "cylY",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
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
				[1] = "varmmove",
			},
			select = {
				[1] = "varmsel",
			},
		},
		weapondefs = {
			armtruck_rocket = {
				areaofeffect = 150,
				avoidfeature = false,
				craterareaofeffect = 150,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.5,
				explosiongenerator = "custom:genericshellexplosion-missile",
				firestarter = 100,
				flighttime = 10,
				impulseboost = 0.2,
				impulsefactor = 0.2,
				metalpershot = 0,
				model = "rocket",
				name = "Rocket",
				noselfdamage = true,
				range = 1215,
				reloadtime = 18,
				smoketrail = true,
				soundhit = "xplomed4",
				soundhitwet = "splslrg",
				soundhitwetvolume = 0.5,
				soundstart = "Rockhvy1",
				tolerance = 4000,
				turnrate = 24384,
				weaponacceleration = 102.4,
				weapontimer = 3.3,
				weapontype = "StarburstLauncher",
				weaponvelocity = 380,
				damage = {
					commanders = 625,
					default = 1900,
					subs = 5,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "MOBILE",
				def = "ARMTRUCK_ROCKET",
				onlytargetcategory = "SURFACE",
			},
		},
	},
}
