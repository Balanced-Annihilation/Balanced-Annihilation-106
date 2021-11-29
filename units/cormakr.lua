return {
	cormakr = {
		acceleration = 0,
		activatewhenbuilt = true,
		brakerate = 0,
		buildangle = 8192,
		buildcostenergy = 1233,
		buildcostmetal = 1,
		buildpic = "CORMAKR.DDS",
		buildtime = 2682,
		category = "ALL NOTLAND NOTSUB NOWEAPON NOTSHIP NOTAIR NOTHOVER SURFACE",
		collisionvolumeoffsets = "0 -1 0",
		collisionvolumescales = "46 22 35",
		collisionvolumetype = "Box",
		description = "Converts up to 70 energy into 1 metal per second",
		explodeas = "ARMESTOR_BUILDINGEX",
		footprintx = 4,
		footprintz = 3,
		icontype = "building",
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 150,
		maxslope = 10,
		maxwaterdepth = 0,
		name = "Energy Converter",
		objectname = "CORMAKR",
		seismicsignature = 0,
		selfdestructas = "ARMESTOR_BUILDING",
		sightdistance = 273,
		usebuildinggrounddecal = false,
		yardmap = "oooooooooooo",
		sounds = {
			activate = "metlon2",
			canceldestruct = "cancel2",
			deactivate = "metloff2",
			underattack = "warning1",
			working = "metlrun2",
			count = {
				[1] = "count6",
				[2] = "count5",
				[3] = "count4",
				[4] = "count3",
				[5] = "count2",
				[6] = "count1",
			},
			select = {
				[1] = "metlon2",
			},
		},
	},
}
