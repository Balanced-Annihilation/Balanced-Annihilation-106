return {
	armrectr = {
		acceleration = 0.2,
		brakerate = 0.75,
		buildcostenergy = 1493,
		buildcostmetal = 109,
		builddistance = 96,
		builder = true,
		buildpic = "ARMRECTR.DDS",
		buildtime = 2400,
		canassist = false,
		canmove = true,
		canresurrect = true,
		category = "KBOT MOBILE ALL NOTSUB NOWEAPON NOTAIR NOTHOVER SURFACE",
		collisionvolumeoffsets = "0 0 0",
		collisionvolumescales = "21 32 21",
		collisionvolumetype = "box",
		corpse = "DEAD",
		description = "Stealthy Rez Kbot",
		energymake = 1.75,
		energyuse = 1.75,
		explodeas = "FLEA_EX",
		footprintx = 2,
		footprintz = 2,
		idleautoheal = 5,
		idletime = 60,
		maxdamage = 200,
		maxslope = 14,
		maxvelocity = 2.6,
		maxwaterdepth = 22,
		movementclass = "REZ",
		name = "Rector",
		objectname = "ARMRECTR",
		radardistance = 50,
		seismicsignature = 0,
		selfdestructas = "big_unit",
		sightdistance = 430,
		stealth = true,
		terraformspeed = 1000,
		turninplaceanglelimit = 140,
		turninplacespeedlimit = 1.716,
		turnrate = 1122,
		upright = true,
		workertime = 200,
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "0.0 -5.0193 1.03799438477",
				collisionvolumescales = "20.0 11.0 10.0759887695",
				collisionvolumetype = "Box",
				damage = 764,
				description = "Rector Wreckage",
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 2,
				footprintz = 2,
				height = 20,
				hitdensity = 100,
				metal = 72,
				object = "ARMRECTR_DEAD",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				damage = 344,
				description = "Rector Heap",
				featurereclamate = "SMUDGE01",
				footprintx = 2,
				footprintz = 2,
				height = 4,
				hitdensity = 100,
				metal = 36,
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
				[1] = "necrok1",
			},
			select = {
				[1] = "necrsel1",
			},
		},
	},
}