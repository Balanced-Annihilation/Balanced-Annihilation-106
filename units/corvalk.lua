return {
	corvalk = {
		acceleration = 0.09,
		brakerate = 0.75,
		buildcostenergy = 1437,
		buildcostmetal = 74,
		buildpic = "CORVALK.DDS",
		buildtime = 4122,
		canfly = true,
		canmove = true,
		category = "ALL MOBILE WEAPON NOTLAND VTOL ANTIFLAME ANTIEMG ANTILASER NOTSUB NOTSHIP NOTHOVER",
		collide = false,
		collisionvolumeoffsets = "0 0 0",
		collisionvolumescales = "28 16 28",
		collisionvolumetype = "box",
		cruisealt = 70,
		description = "Air Transport",
		energymake = 0.7,
		energyuse = 0.7,
		explodeas = "big_unitex",
		footprintx = 2,
		footprintz = 3,
		
		hoverattack = true,
		bankingAllowed = false, 
		wingDrag =0,
		wingAngle =0,
		frontToSpeed=0,
		speedToFront =0,
		maxBank =0,
		maxPitch =0,
		maxAileron=0,
		maxElevator =0,
		maxRudder =0,
		upright = true,
		
		icontype = "air",
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 250,
		maxslope = 10,
		maxvelocity = 7,
		maxwaterdepth = 0,
		name = "Valkyrie",
		objectname = "CORVALK",
		releaseheld = true,
		seismicsignature = 0,
		selfdestructas = "big_unit",
		sightdistance = 260,
		transportcapacity = 1,
		transportmass = 5000,
		transportsize = 3,
		turninplaceanglelimit = 0,
		turnrate = 550,
		blocking = false,
		customparams = {
			paralyzemultiplier = 0.025,
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
				[1] = "vtolcrmv",
			},
			select = {
				[1] = "vtolcrac",
			},
		},
	},
}
