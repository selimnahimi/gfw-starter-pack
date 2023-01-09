-- Please make this unique to avoid conflicts. On conflict, the last loaded pack will be used.
local pack_name = "GoldSrc"

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
	[MAT_SNOW] = {
        pack_name..".GFW.Snow.Left",
        pack_name..".GFW.Snow.Right"
    },
	[MAT_DIRT] = {
        pack_name..".GFW.Dirt.Left",
        pack_name..".GFW.Dirt.Right"
    },
	[MAT_FOLIAGE] = {
        pack_name..".GFW.Dirt.Left",
        pack_name..".GFW.Dirt.Right"
    },
	[MAT_GRASS] = {
        pack_name..".GFW.Dirt.Left",
        pack_name..".GFW.Dirt.Right"
    },
	[MAT_SAND] = {
        pack_name..".GFW.Dirt.Left",
        pack_name..".GFW.Dirt.Right"
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
        pack_name..".GFW.Metal.Left",
        pack_name..".GFW.Metal.Right"
    },
    [MAT_GRATE] = {
        pack_name..".GFW.MetalGrate.Left",
        pack_name..".GFW.MetalGrate.Right"
    },
    [MAT_SLOSH] = {
        pack_name..".GFW.Slosh.Left",
        pack_name..".GFW.Slosh.Right"
    },
    ["ladder"] = {
        pack_name..".GFW.Ladder.Left",
        pack_name..".GFW.Ladder.Right"
    },
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
        "player/gsrc/footsteps/concrete1.wav",
		"player/gsrc/footsteps/concrete2.wav"
    }
} )

sound.Add( {
	name = pack_name..".GFW.Concrete.Right",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 70,
	sound = {
		"player/gsrc/footsteps/concrete3.wav",
		"player/gsrc/footsteps/concrete4.wav"
    }
} )

sound.Add( {
	name = pack_name..".GFW.Dirt.Left",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 70,
	sound = {
		"player/gsrc/footsteps/dirt1.wav",
		"player/gsrc/footsteps/dirt2.wav"
    }
} )

sound.Add( {
	name = pack_name..".GFW.Dirt.Right",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 70,
	sound = {
		"player/gsrc/footsteps/dirt3.wav",
		"player/gsrc/footsteps/dirt4.wav"
    }
} )

sound.Add( {
	name = pack_name..".GFW.Tile.Left",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 70,
	sound = {
        "player/gsrc/footsteps/tile1.wav",
        "player/gsrc/footsteps/tile2.wav"
    }
} )

sound.Add( {
	name = pack_name..".GFW.Tile.Right",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 70,
	sound = {
        "player/gsrc/footsteps/tile3.wav",
        "player/gsrc/footsteps/tile4.wav"
    }
} )

sound.Add( {
	name = pack_name..".GFW.Snow.Left",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 70,
	sound = {
		"player/gsrc/footsteps/pl_snow1.wav",
		"player/gsrc/footsteps/pl_snow2.wav",
		"player/gsrc/footsteps/pl_snow3.wav"
    }
} )

sound.Add( {
	name = pack_name..".GFW.Snow.Right",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 70,
	sound = {
		"player/gsrc/footsteps/pl_snow4.wav",
		"player/gsrc/footsteps/pl_snow5.wav",
		"player/gsrc/footsteps/pl_snow6.wav"
    }
} )

sound.Add( {
	name = pack_name..".GFW.Metal.Left",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 70,
	sound = {
        "player/gsrc/footsteps/metal1.wav",
        "player/gsrc/footsteps/metal2.wav"
    }
} )

sound.Add( {
	name = pack_name..".GFW.Metal.Right",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 70,
	sound = {
        "player/gsrc/footsteps/metal3.wav",
        "player/gsrc/footsteps/metal4.wav"
    }
} )

sound.Add( {
	name = pack_name..".GFW.MetalGrate.Left",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 70,
	sound = {
        "player/gsrc/footsteps/metalgrate1.wav",
        "player/gsrc/footsteps/metalgrate2.wav"
    }
} )

sound.Add( {
	name = pack_name..".GFW.MetalGrate.Right",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 70,
	sound = {
        "player/gsrc/footsteps/metalgrate3.wav",
        "player/gsrc/footsteps/metalgrate4.wav"
    }
} )

sound.Add( {
	name = pack_name..".GFW.Slosh.Left",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 70,
	sound = {
        "player/gsrc/footsteps/slosh1.wav",
        "player/gsrc/footsteps/slosh2.wav"
    }
} )

sound.Add( {
	name = pack_name..".GFW.Slosh.Right",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 70,
	sound = {
        "player/gsrc/footsteps/slosh3.wav",
        "player/gsrc/footsteps/slosh4.wav"
    }
} )

sound.Add( {
	name = pack_name..".GFW.Ladder.Left",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 70,
	sound = {
        "player/gsrc/footsteps/ladder1.wav",
        "player/gsrc/footsteps/ladder2.wav"
    }
} )

sound.Add( {
	name = pack_name..".GFW.Ladder.Right",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 70,
	sound = {
        "player/gsrc/footsteps/ladder3.wav",
        "player/gsrc/footsteps/ladder4.wav"
    }
} )

sound.Add( {
	name = pack_name..".GFW.FallDmg",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 80,
	sound = {
        "player/gsrc/bhit_flesh-1.wav",
        "player/gsrc/bhit_flesh-2.wav",
        "player/gsrc/bhit_flesh-3.wav"
    }
} )
