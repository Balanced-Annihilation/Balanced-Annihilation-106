return {
	cormabm = {
		acceleration = 0.0198,
		brakerate = 0.1122,
		buildcostenergy = 32427,
		buildcostmetal = 1227,
		buildpic = "CORMABM.DDS",
		buildtime = 42000,
		canattack = false,
		canmove = true,
		category = "ALL TANK MOBILE WEAPON NOTSUB NOTSHIP NOTAIR NOTHOVER SURFACE",
		collisionvolumeoffsets = "0 -1 0",
		collisionvolumescales = "40 21 30",
		collisionvolumetype = "box",
		corpse = "DEAD",
		damagemodifier = 0.5,
		description = "Mobile Anti-Nuke",
		energymake = 200,
		energystorage = 1000,
		explodeas = "LARGE_BUILDINGEX",
		footprintx = 3,
		footprintz = 3,
		idleautoheal = 5,
		idletime = 1800,
		leavetracks = true,
		maxdamage = 780,
		maxslope = 10,
		maxvelocity = 1.8,
		maxwaterdepth = 0,
		movementclass = "TANK3",
		name = "Hedgehog",
		nochasecategory = "ALL",
		objectname = "CORMABM",
		radardistance = 50,
		seismicsignature = 0,
		selfdestructas = "LARGE_BUILDING",
		sightdistance = 450,
		trackoffset = 6,
		trackstrength = 5,
		tracktype = "StdTank",
		trackwidth = 34,
		turninplace = 0,
		turninplaceanglelimit = 140,
		turninplacespeedlimit = 1.188,
		turnrate = 520.29999,
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "0.028564453125 -0.906217531738 9.89840698242",
				collisionvolumescales = "38.3428344727 9.39268493652 58.203125",
				collisionvolumetype = "Box",
				damage = 650,
				description = "Hedgehog Wreckage",
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 3,
				footprintz = 3,
				height = 20,
				hitdensity = 100,
				metal = 980,
				object = "CORMABM_DEAD",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				damage = 550,
				description = "Hedgehog Heap",
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 3,
				footprintz = 3,
				height = 4,
				hitdensity = 100,
				metal = 392,
				object = "3X3D",
                collisionvolumescales = "55.0 4.0 55.0",
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
				[1] = "tcormove",
			},
			select = {
				[1] = "tcorsel",
			},
		},
		weapondefs = {
			cormabm_weapon = {
				areaofeffect = 420,
				avoidfeature = false,
				avoidfriendly = false,
				collidefriendly = false,
									cegtag = "cruisemissiletrail-tacnuke",

				coverage = 1600,
				craterareaofeffect = 420,
				craterboost = 0,
				cratermult = 0,
				energypershot = 6500,
				explosiongenerator = "custom:BLANK",
				firestarter = 100,
				flighttime = 120,
				impulseboost = 0.123,
				impulsefactor = 0.123,
				interceptor = 1,
				metalpershot = 150,
				model = "fmdmisl",
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
				weapontimer = 2,
				weapontype = "StarburstLauncher",
				weaponvelocity = 6000,
				damage = {
					default = 500,
				},
					customparams = {
					expl_light_color = "1 0.85 0.55",
					expl_light_life_mult = 2.2,
					expl_light_mult = 1.4,
					expl_light_radius_mult = 1.5,
					light_color = "1 0.6 0.2",
					light_mult = 2.1,
					light_radius_mult = 2,
				},	
			},
					
		},
		weapons = {
			[1] = {
				badtargetcategory = "ALL",
				def = "CORMABM_WEAPON",
			},
		},
	},
}
