return {
	corsjam = {
		acceleration = 0.096,
		activatewhenbuilt = true,
		brakerate = 0.066,
		buildcostenergy = 2404,
		buildcostmetal = 144,
		buildpic = "CORSJAM.DDS",
		buildtime = 7025,
		canmove = true,
		category = "ALL NOTLAND MOBILE NOTSUB SHIP NOWEAPON NOTAIR NOTHOVER SURFACE",
		collisionvolumeoffsets = "0 -8 0",
		collisionvolumescales = "28 28 71",
		collisionvolumetype = "CylZ",
		corpse = "DEAD",
		description = "Radar Jammer Ship",
		energymake = 20,
		energyuse = 20,
		explodeas = "small_unitex",
		floater = true,
		footprintx = 3,
		footprintz = 3,
		icontype = "sea",
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 570,
		maxvelocity = 2.88,
		minwaterdepth = 6,
		movementclass = "BOAT4",
		name = "Phantom",
		nochasecategory = "MOBILE",
		objectname = "CORSJAM",
		onoffable = true,
		radardistancejam = 900,
		seismicsignature = 0,
		selfdestructas = "small_unit",
		sightdistance = 403,
		turninplace = 0,
		turninplaceanglelimit = 140,
		turninplacespeedlimit = 1.9008,
		turnrate = 512,
		waterline = 2,
		windgenerator = 0.001,
		featuredefs = {
			dead = {
				blocking = false,
				category = "corpses",
				collisionvolumeoffsets = "-3.9418182373 0.0506627246094 -0.0",
				collisionvolumescales = "41.9625549316 13.4625854492 69.8010559082",
				collisionvolumetype = "Box",
				damage = 342,
				description = "Phantom Wreckage",
				energy = 0,
				featuredead = "HEAP",
				footprintx = 4,
				footprintz = 4,
				height = 20,
				hitdensity = 100,
				metal = 88,
				object = "CORSJAM_DEAD",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				damage = 2016,
				description = "Phantom Heap",
				energy = 0,
				footprintx = 2,
				footprintz = 2,
				height = 4,
				hitdensity = 100,
				metal = 46,
				object = "4X4A",
                collisionvolumescales = "85.0 14.0 6.0",
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
				[1] = "shcormov",
			},
			select = {
				[1] = "radjam2",
			},
		},
	},
}
