return {
	armcarry = {
		acceleration = 0.026,
		activatewhenbuilt = true,
		brakerate = 0.072,
		buildangle = 16384,
		buildcostenergy = 22187,
		buildcostmetal = 1707,
		builder = true,
		buildpic = "ARMCARRY.DDS",
		buildtime = 20800,
		canassist = false,
		canattack = false,
		canmove = true,
		canreclaim = false,
		canrepair = false,
		category = "ALL NOTLAND MOBILE NOTSUB NOWEAPON SHIP NOTAIR NOTHOVER SURFACE",
		collisionvolumeoffsets = "-1 -7 4",
		collisionvolumescales = "64 64 155",
		collisionvolumetype = "box",
		corpse = "DEAD",
		description = "Aircraft Carrier with Anti-Nuke",
		energymake = 250,
		energypershot = 7500,
		energystorage = 1500,
		energyuse = 25,
		explodeas = "CRAWL_BLAST",
		floater = true,
		footprintx = 6,
		footprintz = 6,
		icontype = "sea",
		idleautoheal = 15,
		idletime = 600,
		losemitheight = 56,
		mass = 10000,
		maxdamage = 7640,
		maxvelocity = 2.76,
		metalstorage = 1500,
		minwaterdepth = 15,
		movementclass = "DBOAT6",
		name = "Colossus",
		nochasecategory = "ALL",
		objectname = "ARMCARRY",
		radardistance = 2950,
		radaremitheight = 56,
		seismicsignature = 0,
		selfdestructas = "CRAWL_BLAST",
		sightdistance = 1105,
		sonardistance = 760,
		terraformspeed = 5000,
		turninplaceanglelimit = 140,
		turninplacespeedlimit = 1.8216,
		turnrate = 210,
		waterline = 7,
		windgenerator = 0.001,
		workertime = 1000,
		customparams = {
			isairbase = true,
		},
		featuredefs = {
			dead = {
				blocking = false,
				category = "corpses",
				collisionvolumeoffsets = "-0.0550308227539 1.52587890767e-06 4.55026245117",
				collisionvolumescales = "61.8225860596 60.9250030518 154.450805664",
				collisionvolumetype = "Box",
				damage = 4584,
				description = "Colossus Wreckage",
				energy = 0,
				featuredead = "HEAP",
				footprintx = 6,
				footprintz = 6,
				height = 4,
				hitdensity = 100,
				metal = 1022,
				object = "ARMCARRY_DEAD",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				damage = 2016,
				description = "Colossus Heap",
				energy = 0,
				footprintx = 2,
				footprintz = 2,
				height = 4,
				hitdensity = 100,
				metal = 266,
				object = "6X6C",
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
				[1] = "sharmmov",
			},
			select = {
				[1] = "sharmsel",
			},
		},
		weapondefs = {
			amd_rocket = {
				areaofeffect = 420,
				avoidfeature = false,
				avoidfriendly = false,
				collidefriendly = false,
									cegtag = "cruisemissiletrail-tacnuke",

				coverage = 2000,
				craterareaofeffect = 420,
				craterboost = 0,
				cratermult = 0,
				energypershot = 7500,
				explosiongenerator = "custom:BLANK",
				firestarter = 100,
				flighttime = 120,
				impulseboost = 0.123,
				impulsefactor = 0.123,
				interceptor = 1,
				metalpershot = 150,
				model = "amdrocket",
				name = "Rocket",
				noselfdamage = true,
				range = 72000,
				reloadtime = 2,
				smoketrail = true,
				soundhit = "xplomed4",
				soundhitwet = "splslrg",
				soundhitwetvolume = 0.5,
				soundstart = "Rockhvy1",
				stockpile = true,
				stockpiletime = 90,
				tolerance = 4000,
				tracks = true,
				turnrate = 130000,
				weaponacceleration = 150,
				weapontimer = 5,
				weapontype = "StarburstLauncher",
				weaponvelocity = 6000,
				damage = {
					default = 1500,
				},
						customparams = {
						expl_light_color = "1 0.85 0.55",
					light_color = "1 0.6 0.2",
					expl_light_life_mult = 2.2,
					expl_light_mult = 1.4,
					expl_light_radius_mult = 1.5,
					
					light_mult = 3.5,
					light_radius_mult = 2,
				},	
			},
			
		},
		weapons = {
			[1] = {
				badtargetcategory = "ALL",
				def = "AMD_ROCKET",
			},
		},
	},
}
