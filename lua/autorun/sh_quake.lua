-- Please make this unique to avoid conflicts. On conflict, the last loaded pack will be used.
local pack_name = "Quake"

-- nil if you don't want a custom icon
local pack_icon = ""

-- For all material types, check: https://wiki.facepunch.com/gmod/Enums/MAT
-- There HAS to be 2 sounds listed, one for the left, and one for the right foot.
local pack_sounds = {
    ["default"] = { -- Default sound if the material is unknown
        pack_name..".GFW.Concrete.Left",
        pack_name..".GFW.Concrete.Right"
    },
    [MAT_SLOSH] = {
        pack_name..".GFW.Slosh.Left",
        pack_name..".GFW.Slosh.Right"
    },
    ["jump"] = {
        pack_name..".GFW.Jump"
    },
    ["water_enter"] = {
        pack_name..".GFW.WaterEnter"
    },
    ["water_exit"] = {
        pack_name..".GFW.WaterExit"
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
        "player/quake/foot1.wav",
		"player/quake/foot2.wav",
		"player/quake/foot3.wav",
		"player/quake/foot4.wav"
    }
} )

sound.Add( {
	name = pack_name..".GFW.Concrete.Right",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 70,
	sound = {
        "player/quake/foot5.wav",
		"player/quake/foot6.wav",
		"player/quake/foot7.wav"
    }
} )

sound.Add( {
	name = pack_name..".GFW.Slosh.Left",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 70,
	sound = {
        "player/quake/null.wav"
    }
} )

sound.Add( {
	name = pack_name..".GFW.Slosh.Right",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 70,
	sound = {
        "player/quake/null.wav"
    }
} )

sound.Add( {
	name = pack_name..".GFW.FallDmg",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 80,
	sound = {
        "player/quake/land.wav",
        "player/quake/land2.wav"
    }
} )

sound.Add( {
	name = pack_name..".GFW.Jump",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 80,
	sound = {
        "player/quake/jmp.wav"
    }
} )

sound.Add( {
	name = pack_name..".GFW.WaterEnter",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 80,
	sound = {
        "player/quake/inh2o.wav"
    }
} )

sound.Add( {
	name = pack_name..".GFW.WaterExit",
	channel = CHAN_STATIC,
	volume = 1.0,
	level = 80,
	sound = {
        "player/quake/outwater.wav"
    }
} )
