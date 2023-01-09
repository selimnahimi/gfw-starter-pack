-- Please make this unique to avoid conflicts. On conflict, the last loaded pack will be used.
local pack_name = "L4D2"

-- nil if you don't want a custom icon
local pack_icon = ""

-- For all material types, check: https://wiki.facepunch.com/gmod/Enums/MAT
-- There HAS to be 2 sounds listed, one for the left, and one for the right foot.
local pack_sounds = {
    ["default"] = { -- Default sound if the material is unknown
        pack_name..".GFW.Concrete.Left",
        pack_name..".GFW.Concrete.Right"
    },
	[MAT_CONCRETE] = {
        pack_name..".GFW.Concrete.Left",
        pack_name..".GFW.Concrete.Right"
    },
	[MAT_DIRT] = {
        pack_name..".GFW.Dirt.Left",
        pack_name..".GFW.Dirt.Right"
    },
	[MAT_FOLIAGE] = {
        pack_name..".GFW.Foliage.Left",
        pack_name..".GFW.Foliage.Right"
    },
	[MAT_GRASS] = {
        pack_name..".GFW.Grass.Left",
        pack_name..".GFW.Grass.Right"
    },
	[MAT_SAND] = {
        pack_name..".GFW.Sand.Left",
        pack_name..".GFW.Sand.Right"
    },
    [MAT_METAL] = {
        pack_name..".GFW.Metal.Left",
        pack_name..".GFW.Metal.Right"
    },
    [MAT_TILE] = {
        pack_name..".GFW.Tile.Left",
        pack_name..".GFW.Tile.Right"
    },
    [MAT_VENT] = {
        pack_name..".GFW.Vent.Left",
        pack_name..".GFW.Vent.Right"
    },
    [MAT_GRATE] = {
        pack_name..".GFW.MetalGrate.Left",
        pack_name..".GFW.MetalGrate.Right"
    },
    [MAT_SLOSH] = {
        pack_name..".GFW.Slosh.Left",
        pack_name..".GFW.Slosh.Right"
    },
    [MAT_FLESH] = {
        pack_name..".GFW.Flesh.Left",
        pack_name..".GFW.Flesh.Right"
    },
    [MAT_GLASS] = {
        pack_name..".GFW.Glass.Left",
        pack_name..".GFW.Glass.Right"
    },
    [MAT_WOOD] = {
        pack_name..".GFW.Wood.Left",
        pack_name..".GFW.Wood.Right"
    },
    ["ladder"] = {
        pack_name..".GFW.Ladder.Left",
        pack_name..".GFW.Ladder.Right"
    },
    ["falldmg"] = {
        pack_name..".GFW.FallDmg"
    }
--  [MAT_WOOD] = nil -- if you don't want a sound to play on a given surface
}

local function custom_callback(ply, pos, foot, sound, volume, rf)
    if SERVER then
        PrintMessage(HUD_PRINTTALK, "[GFW] custom callback called")
    end
end

if SERVER then
    PrintMessage(HUD_PRINTCONSOLE, "[GFW] Trying to register "..pack_name)
end

GFW_RegisterFootstepPack(pack_name, pack_sounds, pack_icon)


-- You can register sounds below

sound.Add( {
	name = pack_name..".GFW.Concrete.Left",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 70,
	sound = {
        "player/l4d2/footsteps/walk/concrete1.wav",
		"player/l4d2/footsteps/walk/concrete2.wav"
    }
} )

sound.Add( {
	name = pack_name..".GFW.Concrete.Right",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 70,
	sound = {
		"player/l4d2/footsteps/walk/concrete3.wav",
		"player/l4d2/footsteps/walk/concrete4.wav"
    }
} )

sound.Add( {
	name = pack_name..".GFW.Dirt.Left",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 70,
	sound = {
		"player/l4d2/footsteps/walk/dirt1.wav",
		"player/l4d2/footsteps/walk/dirt2.wav"
    }
} )

sound.Add( {
	name = pack_name..".GFW.Dirt.Right",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 70,
	sound = {
		"player/l4d2/footsteps/walk/dirt3.wav",
		"player/l4d2/footsteps/walk/dirt4.wav"
    }
} )

sound.Add( {
	name = pack_name..".GFW.Tile.Left",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 70,
	sound = {
        "player/l4d2/footsteps/walk/tile1.wav",
        "player/l4d2/footsteps/walk/tile2.wav"
    }
} )

sound.Add( {
	name = pack_name..".GFW.Tile.Right",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 70,
	sound = {
        "player/l4d2/footsteps/walk/tile3.wav",
        "player/l4d2/footsteps/walk/tile4.wav"
    }
} )

sound.Add( {
	name = pack_name..".GFW.Metal.Left",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 70,
	sound = {
        "player/l4d2/footsteps/walk/metal1.wav",
        "player/l4d2/footsteps/walk/metal2.wav"
    }
} )

sound.Add( {
	name = pack_name..".GFW.Metal.Right",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 70,
	sound = {
        "player/l4d2/footsteps/walk/metal3.wav",
        "player/l4d2/footsteps/walk/metal4.wav"
    }
} )

sound.Add( {
	name = pack_name..".GFW.MetalGrate.Left",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 70,
	sound = {
        "player/l4d2/footsteps/walk/metalgrate1.wav",
        "player/l4d2/footsteps/walk/metalgrate2.wav"
    }
} )

sound.Add( {
	name = pack_name..".GFW.MetalGrate.Right",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 70,
	sound = {
        "player/l4d2/footsteps/walk/metalgrate3.wav",
        "player/l4d2/footsteps/walk/metalgrate4.wav"
    }
} )

sound.Add( {
	name = pack_name..".GFW.Slosh.Left",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 70,
	sound = {
        "player/l4d2/footsteps/walk/slosh1.wav",
        "player/l4d2/footsteps/walk/slosh2.wav"
    }
} )

sound.Add( {
	name = pack_name..".GFW.Slosh.Right",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 70,
	sound = {
        "player/l4d2/footsteps/walk/slosh3.wav",
        "player/l4d2/footsteps/walk/slosh4.wav"
    }
} )

sound.Add( {
	name = pack_name..".GFW.Ladder.Left",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 70,
	sound = {
        "player/l4d2/footsteps/walk/ladder1.wav",
        "player/l4d2/footsteps/walk/ladder2.wav"
    }
} )

sound.Add( {
	name = pack_name..".GFW.Ladder.Right",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 70,
	sound = {
        "player/l4d2/footsteps/walk/ladder3.wav",
        "player/l4d2/footsteps/walk/ladder4.wav"
    }
} )

sound.Add( {
	name = pack_name..".GFW.Wood.Right",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 70,
	sound = {
        "player/l4d2/footsteps/walk/wood1.wav",
        "player/l4d2/footsteps/walk/wood2.wav"
    }
} )

sound.Add( {
	name = pack_name..".GFW.Wood.Left",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 70,
	sound = {
        "player/l4d2/footsteps/walk/wood3.wav",
        "player/l4d2/footsteps/walk/wood4.wav"
    }
} )

sound.Add( {
	name = pack_name..".GFW.Vent.Right",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 70,
	sound = {
        "player/l4d2/footsteps/walk/duct1.wav",
        "player/l4d2/footsteps/walk/duct2.wav"
    }
} )

sound.Add( {
	name = pack_name..".GFW.Vent.Left",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 70,
	sound = {
        "player/l4d2/footsteps/walk/duct3.wav",
        "player/l4d2/footsteps/walk/duct4.wav"
    }
} )

sound.Add( {
	name = pack_name..".GFW.Foliage.Right",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 70,
	sound = {
        "player/l4d2/footsteps/walk/foliage1.wav",
        "player/l4d2/footsteps/walk/foliage2.wav"
    }
} )

sound.Add( {
	name = pack_name..".GFW.Foliage.Left",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 70,
	sound = {
        "player/l4d2/footsteps/walk/foliage3.wav",
        "player/l4d2/footsteps/walk/foliage4.wav"
    }
} )

sound.Add( {
	name = pack_name..".GFW.Plastic.Right",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 70,
	sound = {
        "player/l4d2/footsteps/walk/plaster1.wav",
        "player/l4d2/footsteps/walk/plaster2.wav"
    }
} )

sound.Add( {
	name = pack_name..".GFW.Plastic.Left",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 70,
	sound = {
        "player/l4d2/footsteps/walk/plaster3.wav",
        "player/l4d2/footsteps/walk/plaster4.wav"
    }
} )

sound.Add( {
	name = pack_name..".GFW.Sand.Right",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 70,
	sound = {
        "player/l4d2/footsteps/walk/sand1.wav",
        "player/l4d2/footsteps/walk/sand2.wav"
    }
} )

sound.Add( {
	name = pack_name..".GFW.Sand.Left",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 70,
	sound = {
        "player/l4d2/footsteps/walk/sand3.wav",
        "player/l4d2/footsteps/walk/sand4.wav"
    }
} )

sound.Add( {
	name = pack_name..".GFW.Grass.Right",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 70,
	sound = {
        "player/l4d2/footsteps/walk/grass1.wav",
        "player/l4d2/footsteps/walk/grass2.wav"
    }
} )

sound.Add( {
	name = pack_name..".GFW.Grass.Left",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 70,
	sound = {
        "player/l4d2/footsteps/walk/grass3.wav",
        "player/l4d2/footsteps/walk/grass4.wav"
    }
} )

sound.Add( {
	name = pack_name..".GFW.Glass.Right",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 70,
	sound = {
        "player/l4d2/footsteps/walk/glass1.wav",
        "player/l4d2/footsteps/walk/glass2.wav"
    }
} )

sound.Add( {
	name = pack_name..".GFW.Glass.Left",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 70,
	sound = {
        "player/l4d2/footsteps/walk/glass3.wav",
        "player/l4d2/footsteps/walk/glass4.wav"
    }
} )

sound.Add( {
	name = pack_name..".GFW.FallDmg",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 80,
	sound = {
        "player/l4d2/bhit_flesh-1.wav",
        "player/l4d2/bhit_flesh-2.wav",
        "player/l4d2/bhit_flesh-3.wav"
    }
} )
