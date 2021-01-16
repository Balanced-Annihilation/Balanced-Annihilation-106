return {
	coramph = {
		acceleration = 0.09,
		activatewhenbuilt = true,
		brakerate = 0.564,
		buildcostenergy = 9531,
		buildcostmetal = 325,
		buildpic = "CORAMPH.DDS",
		buildtime = 9650,
		canmove = true,
		category = "KBOT MOBILE WEAPON ALL NOTSHIP NOTAIR NOTHOVER NOTSUB SURFACE",
		collisionvolumeoffsets = "0 0 3",
		collisionvolumescales = "32 29 32",
		collisionvolumetype = "box",
		corpse = "HEAP",
		description = "Amphibious Kbot",
		energymake = 0.4,
		energyuse = 0.4,
		explodeas = "medium_unitex",
		footprintx = 2,
		footprintz = 2,
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 2310,
		maxslope = 14,
		maxvelocity = 1.85,
		movementclass = "AKBOT2",
		name = "Gimp",
		nochasecategory = "VTOL",
		objectname = "CORAMPH",
		radardistance = 300,
		script = "coramph.lua",
		seismicsignature = 0,
		selfdestructas = "medium_unit",
		sightdistance = 400,
		sonardistance = 300,
		sonarstealth = false,
		turninplaceanglelimit = 140,
		turninplacespeedlimit = 1.221,
		turnrate = 998,
		upright = true,
		featuredefs = {
			heap = {
				blocking = false,
				category = "heaps",
				damage = 920,
				description = "Gimp Heap",
				energy = 0,
				footprintx = 2,
				footprintz = 2,
				height = 4,
				hitdensity = 100,
				metal = 114,
				object = "2X2D",
                collisionvolumescales = "35.0 4.0 35.0",
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
				[1] = "kbcormov",
			},
			select = {
				[1] = "kbcorsel",
			},
		},
		weapondefs = {
			coramph_weapon1 = {
				areaofeffect = 16,
				avoidfeature = false,
				avoidfriendly = false,
				burnblow = true,
				collidefriendly = false,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				explosiongenerator = "custom:FLASH2",
				impulseboost = 0.123,
				impulsefactor = 0.123,
				model = "torpedo",
				name = "Torpedo",
				noselfdamage = true,
				predictboost = 0,
				range = 400,
				reloadtime = 6,
				soundhit = "xplodep2",
				soundstart = "torpedo1",
				startvelocity = 75,
				turnrate = 1700,
				turret = true,
				waterweapon = true,
				weaponacceleration = 5,
				weapontimer = 3,
				weapontype = "TorpedoLauncher",
				weaponvelocity = 100,
				damage = {
					default = 250,
				},
			},
			coramph_weapon2 = {
				areaofeffect = 12,
				avoidfeature = false,
				beamtime = 0.15,
				corethickness = 0.2,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				energypershot = 35,
				explosiongenerator = "custom:SMALL_GREEN_LASER_BURN",
				firestarter = 90,
				impactonly = 1,
				impulseboost = 0,
				impulsefactor = 0,
				laserflaresize = 10,
				name = "HighEnergyLaser",
				noselfdamage = true,
				range = 300,
				reloadtime = 1.15,
				rgbcolor = "0 1 0",
				soundhitdry = "",
				soundhitwet = "sizzle",
				soundhitwetvolume = 0.5,
				soundstart = "lasrhvy3",
				soundtrigger = 1,
				targetmoveerror = 0.25,
				thickness = 3,
				tolerance = 10000,
				turret = true,
				weapontype = "BeamLaser",
				weaponvelocity = 700,
				damage = {
					bombers = 38,
					default = 150,
					fighters = 38,
					subs = 5,
					vtol = 38,
				},
			},
		},
		weapons = {
			[1] = {
				def = "CORAMPH_WEAPON1",
				onlytargetcategory = "NOTHOVER",
			},
			[2] = {
				badtargetcategory = "VTOL",
				def = "CORAMPH_WEAPON2",
				onlytargetcategory = "NOTSUB",
			},
		},
	},
}
