return {
	armaak = {
		acceleration = 0.12,
		airsightdistance = 925,
		brakerate = 0.564,
		buildcostenergy = 5617,
		buildcostmetal = 515,
		buildpic = "ARMAAK.DDS",
		buildtime = 6958,
		canmove = true,
		category = "KBOT MOBILE WEAPON ALL NOTSUB NOTSHIP NOTAIR NOTHOVER SURFACE",
		collisionvolumeoffsets = "0 -1 1",
		collisionvolumescales = "25 32 16",
		collisionvolumetype = "box",
		corpse = "DEAD",
		description = "Advanced Amphibious Anti-Air Kbot",
		explodeas = "medium_unitex",
		footprintx = 2,
		footprintz = 2,
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 1020,
		maxslope = 14,
		maxvelocity = 1.58,
		movementclass = "AKBOT2",
		name = "Archangel",
		nochasecategory = "ALL",
		objectname = "ARMAAK",
		seismicsignature = 1,
		selfdestructas = "medium_unit",
		sightdistance = 400,
		turninplaceanglelimit = 140,
		turninplacespeedlimit = 1.0428,
		turnrate = 1021,
		upright = true,
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "0.0 -1.2425585791 1.2922744751",
				collisionvolumescales = "30.0 14.3981628418 32.5845489502",
				collisionvolumetype = "Box",
				damage = 1212,
				description = "Archangel Wreckage",
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 4,
				footprintz = 4,
				height = 15,
				hitdensity = 100,
				metal = 314,
				object = "ARMAAK_DEAD",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				damage = 606,
				description = "Archangel Heap",
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 4,
				footprintz = 4,
				height = 4,
				hitdensity = 100,
				metal = 126,
				object = "4X4A",
                collisionvolumescales = "85.0 14.0 85.0",
                collisionvolumetype = "box",
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
				[1] = "kbarmmov",
			},
			select = {
				[1] = "kbarmsel",
			},
		},
		weapondefs = {
			aakflak = {
				accuracy = 1000,
				areaofeffect = 128,
				avoidfeature = false,
				burnblow = true,
				canattackground = false,
				craterareaofeffect = 128,
				craterboost = 0,
				cratermult = 0,
				cylindertargeting = 1,
				edgeeffectiveness = 0.85,
				gravityaffected = "true",
				impulseboost = 0,
				impulsefactor = 0,
				name = "FlakCannon",
				noselfdamage = true,
				range = 680,
				reloadtime = 5.5,
				rgbcolor = "1, 0.5, 0",
				size = 1.4,
				soundhit = "flakhit",
				soundhitvolume = 9,
				soundhitwet = "splsmed",
				soundhitwetvolume = 0.5,
				soundstart = "flakfire",
				soundstartvolume = 1,
				turret = true,
				weapontimer = 1,
				weapontype = "Cannon",
				weaponvelocity = 1500,
				damage = {
					bombers = 200,
					commanders = 10,
					crawlingbombs = 10,
					default = 1000,
					fighters = 200,
					heavyunits = 10,
					mines = 10,
					nanos = 10,
					subs = 5,
					vtol = 200,
				},
					customparams = {
					expl_light_life_mult = 0,
					expl_light_mult = 0,
					expl_light_radius_mult = 0,
					light_mult = 0,
					light_radius_mult = 0,
					expl_noheatdistortion = 1,
				},
			},
			armaakbot_missile1 = {
				areaofeffect = 64,
				avoidfeature = false,
				canattackground = false,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				explosiongenerator = "custom:FLASH2",
				firestarter = 70,
				flighttime = 3,
				impulseboost = 0,
				impulsefactor = 0,
				metalpershot = 0,
				model = "missile",
				name = "Missiles",
				noselfdamage = true,
				range = 875,
				reloadtime = 3,
				smoketrail = true,
				soundhit = "xplosml2",
				soundhitvolume = 1,
				soundhitwet = "splssml",
				soundhitwetvolume = 0.5,
				soundstart = "rocklit1",
				soundstartvolume = 1,
				startvelocity = 600,
				texture2 = "armsmoketrail",
				tolerance = 9000,
				tracks = true,
				turnrate = 63000,
				turret = true,
				weaponacceleration = 150,
				weapontimer = 6,
				weapontype = "MissileLauncher",
				weaponvelocity = 1000,
				damage = {
					default = 150,
					subs = 5,
				},
			},
			armaakbot_missile2 = {
				areaofeffect = 24,
				avoidfeature = false,
				canattackground = false,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				explosiongenerator = "custom:FLASH2",
				firestarter = 70,
				flighttime = 3,
				impulseboost = 0,
				impulsefactor = 0,
				metalpershot = 0,
				model = "missile",
				name = "Missiles",
				noselfdamage = true,
				range = 770,
				reloadtime = 1.6,
				smoketrail = true,
				soundhit = "xplosml2",
				soundhitvolume = 1,
				soundhitwet = "splshbig",
				soundhitwetvolume = 0.5,
				soundstart = "rocklit1",
				soundstartvolume = 1,
				startvelocity = 650,
				texture2 = "armsmoketrail",
				tolerance = 9000,
				tracks = true,
				turnrate = 63000,
				turret = true,
				weaponacceleration = 125,
				weapontimer = 5,
				weapontype = "MissileLauncher",
				weaponvelocity = 900,
				damage = {
					default = 68,
					subs = 5,
				},
			},
			bogus_missile = {
				areaofeffect = 48,
				avoidfeature = false,
				canattackground = false,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				impulseboost = 0,
				impulsefactor = 0,
				metalpershot = 0,
				name = "Missiles",
				range = 800,
				reloadtime = 0.5,
				soundhitwet = "splshbig",
				soundhitwetvolume = 0.5,
				startvelocity = 450,
				tolerance = 9000,
				turnrate = 33000,
				turret = true,
				weaponacceleration = 101,
				weapontimer = 0.1,
				weapontype = "Cannon",
				weaponvelocity = 650,
				damage = {
					default = 0,
				},
					customparams = {
					expl_light_life_mult = 0,
					expl_light_mult = 0,
					expl_light_radius_mult = 0,
					light_mult = 0,
					light_radius_mult = 0,
					expl_noheatdistortion = 1,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "NOTAIR LIGHTAIRSCOUT",
				def = "BOGUS_MISSILE",
				onlytargetcategory = "VTOL",
			},
			[2] = {
				badtargetcategory = "NOTAIR LIGHTAIRSCOUT",
				def = "ARMAAKBOT_MISSILE1",
				onlytargetcategory = "VTOL",
			},
			[3] = {
				badtargetcategory = "NOTAIR LIGHTAIRSCOUT",
				def = "ARMAAKBOT_MISSILE2",
				onlytargetcategory = "VTOL",
				slaveto = 2,
			},
			[4] = {
				badtargetcategory = "NOTAIR LIGHTAIRSCOUT",
				def = "ARMAAKBOT_MISSILE2",
				onlytargetcategory = "VTOL",
				slaveto = 1,
			},
			[5] = {
				badtargetcategory = "NOTAIR LIGHTAIRSCOUT",
				def = "AAKFLAK",
				onlytargetcategory = "VTOL",
			},
		},
	},
}
