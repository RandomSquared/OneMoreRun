/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0A66C866
/// @DnDArgument : "expr" "keyboard_check(ord("D"))-keyboard_check(ord("A"))"
/// @DnDArgument : "var" "keystate"
keystate = keyboard_check(ord("D"))-keyboard_check(ord("A"));

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 488443D6
/// @DnDArgument : "expr" "hsp+(keystate*accel)"
/// @DnDArgument : "var" "hsp"
hsp = hsp+(keystate*accel);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 02B6329D
/// @DnDArgument : "expr" "vsp+grav"
/// @DnDArgument : "var" "vsp"
vsp = vsp+grav;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 70A8FAC9
/// @DnDArgument : "code" "if(place_meeting(x, y+1, tilemap_id)){$(13_10)	vsp = 0$(13_10)}$(13_10)if(place_meeting(x+2, y-2, tilemap_id)){$(13_10)$(13_10)}$(13_10)// Vertical collision$(13_10)if (place_meeting(x, y + vsp, tilemap_id)) {$(13_10)    while (!place_meeting(x, y + sign(vsp), tilemap_id)) {$(13_10)        y += sign(vsp);$(13_10)    }$(13_10)    vsp = 0;$(13_10)}$(13_10)$(13_10)// Horizontal collision$(13_10)if (place_meeting(x + hsp, y, tilemap_id)) {$(13_10)    while (!place_meeting(x + sign(hsp), y, tilemap_id)) {$(13_10)        x += sign(hsp);$(13_10)    }$(13_10)$(13_10)    // cancel only movement INTO the wall$(13_10)    if (hsp > 0) hsp = 0;$(13_10)    if (hsp < 0) hsp = 0;$(13_10)	$(13_10)	$(13_10)}$(13_10)$(13_10)"
if(place_meeting(x, y+1, tilemap_id)){
	vsp = 0
}
if(place_meeting(x+2, y-2, tilemap_id)){

}
// Vertical collision
if (place_meeting(x, y + vsp, tilemap_id)) {
    while (!place_meeting(x, y + sign(vsp), tilemap_id)) {
        y += sign(vsp);
    }
    vsp = 0;
}

// Horizontal collision
if (place_meeting(x + hsp, y, tilemap_id)) {
    while (!place_meeting(x + sign(hsp), y, tilemap_id)) {
        x += sign(hsp);
    }

    // cancel only movement INTO the wall
    if (hsp > 0) hsp = 0;
    if (hsp < 0) hsp = 0;
	
	
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 5DBC0660
var l5DBC0660_0;l5DBC0660_0 = keyboard_check_pressed(vk_space);if (l5DBC0660_0){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6F8C5620
	/// @DnDParent : 5DBC0660
	/// @DnDArgument : "var" "vsp"
	if(vsp == 0){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5A07D0E7
		/// @DnDParent : 6F8C5620
		/// @DnDArgument : "expr" "vsp+jump_speed"
		/// @DnDArgument : "var" "vsp"
		vsp = vsp+jump_speed;}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 01CDF3CC
/// @DnDArgument : "var" "hsp"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "-1"
if(hsp < -1){	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 1DDF3809
	/// @DnDParent : 01CDF3CC
	/// @DnDArgument : "key" "ord("D")"
	var l1DDF3809_0;l1DDF3809_0 = keyboard_check(ord("D"));if (l1DDF3809_0){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4A0DC606
		/// @DnDParent : 1DDF3809
		/// @DnDArgument : "expr" "hsp-(hsp*fric)"
		/// @DnDArgument : "var" "hsp"
		hsp = hsp-(hsp*fric);}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 078DBA5A
/// @DnDArgument : "var" "hsp"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "1"
if(hsp > 1){	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 5384B076
	/// @DnDParent : 078DBA5A
	/// @DnDArgument : "key" "ord("A")"
	var l5384B076_0;l5384B076_0 = keyboard_check(ord("A"));if (l5384B076_0){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 783824C5
		/// @DnDParent : 5384B076
		/// @DnDArgument : "expr" "hsp-(hsp*fric)"
		/// @DnDArgument : "var" "hsp"
		hsp = hsp-(hsp*fric);}}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 768DEC38
/// @DnDArgument : "key" "vk_anykey"
/// @DnDArgument : "not" "1"
var l768DEC38_0;l768DEC38_0 = keyboard_check(vk_anykey);if (!l768DEC38_0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5360BAE9
	/// @DnDParent : 768DEC38
	/// @DnDArgument : "expr" "hsp-(hsp*fric)"
	/// @DnDArgument : "var" "hsp"
	hsp = hsp-(hsp*fric);}

/// @DnDAction : YoYo Games.Movement.move_and_collide
/// @DnDVersion : 1
/// @DnDHash : 3ED3CA1C
/// @DnDArgument : "xvel" "hsp"
/// @DnDArgument : "yvel" "vsp"
/// @DnDArgument : "maxxmove" "-10"
/// @DnDArgument : "maxymove" "-2"
/// @DnDArgument : "object" "player_obj"
/// @DnDSaveInfo : "object" "player_obj"
move_and_collide(hsp, vsp, [player_obj],4,0,0,-10,-2);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 50C63EF0
/// @DnDArgument : "expr" "time+1"
/// @DnDArgument : "var" "time"
time = time+1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 53E0335B
/// @DnDArgument : "var" "x"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "parallax"
if(x >= parallax){	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 77FDF330
	/// @DnDParent : 53E0335B
	/// @DnDArgument : "code" "// Parallax code$(13_10)var _offset_x = (x-parallax) * 0.8; $(13_10)var _offset_x_stars = (x-parallax) * 0.5; $(13_10)var _offset_x_stars2 = (x-parallax) * 0.1; $(13_10)var _offset_x_clouds = (x-parallax) * -0.5; $(13_10)var _offset_x_stream = (x-parallax) * -0.8; $(13_10)$(13_10)if (layer_exists("Background")) {$(13_10)    layer_x("Background", _offset_x);$(13_10)}$(13_10)if (layer_exists("Background_stars")) {$(13_10)    layer_x("Background_stars", _offset_x_stars);$(13_10)}$(13_10)if (layer_exists("Background_stars2")) {$(13_10)    layer_x("Background_stars2", _offset_x_stars2);$(13_10)}$(13_10)if (layer_exists("Background_clouds")) {$(13_10)    layer_x("Background_clouds", _offset_x_clouds);$(13_10)}$(13_10)if (layer_exists("Background_stream")) {$(13_10)    layer_x("Background_stream", _offset_x_stream);$(13_10)}$(13_10)$(13_10)$(13_10)"
	// Parallax code
	var _offset_x = (x-parallax) * 0.8; 
	var _offset_x_stars = (x-parallax) * 0.5; 
	var _offset_x_stars2 = (x-parallax) * 0.1; 
	var _offset_x_clouds = (x-parallax) * -0.5; 
	var _offset_x_stream = (x-parallax) * -0.8; 
	
	if (layer_exists("Background")) {
	    layer_x("Background", _offset_x);
	}
	if (layer_exists("Background_stars")) {
	    layer_x("Background_stars", _offset_x_stars);
	}
	if (layer_exists("Background_stars2")) {
	    layer_x("Background_stars2", _offset_x_stars2);
	}
	if (layer_exists("Background_clouds")) {
	    layer_x("Background_clouds", _offset_x_clouds);
	}
	if (layer_exists("Background_stream")) {
	    layer_x("Background_stream", _offset_x_stream);
	}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0EE22964
/// @DnDArgument : "var" "y"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "2700"
if(y > 2700){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 731C0506
	/// @DnDParent : 0EE22964
	/// @DnDArgument : "expr" "600"
	/// @DnDArgument : "var" "x"
	x = 600;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 64BB4AC8
	/// @DnDParent : 0EE22964
	/// @DnDArgument : "expr" "1850"
	/// @DnDArgument : "var" "y"
	y = 1850;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2F41E32A
	/// @DnDParent : 0EE22964
	/// @DnDArgument : "var" "hsp"
	hsp = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6DBB36C5
	/// @DnDParent : 0EE22964
	/// @DnDArgument : "var" "time"
	time = 0;

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 432D0176
	/// @DnDParent : 0EE22964
	/// @DnDArgument : "code" "if (layer_exists("Background")) {$(13_10)    layer_x("Background", 0);$(13_10)}$(13_10)if (layer_exists("Background_stars")) {$(13_10)    layer_x("Background_stars", 0);$(13_10)}$(13_10)if (layer_exists("Background_stars2")) {$(13_10)    layer_x("Background_stars2", 0);$(13_10)}$(13_10)if (layer_exists("Background_clouds")) {$(13_10)    layer_x("Background_clouds", 0);$(13_10)}$(13_10)if (layer_exists("Background_stream")) {$(13_10)    layer_x("Background_stream", 0);$(13_10)}"
	if (layer_exists("Background")) {
	    layer_x("Background", 0);
	}
	if (layer_exists("Background_stars")) {
	    layer_x("Background_stars", 0);
	}
	if (layer_exists("Background_stars2")) {
	    layer_x("Background_stars2", 0);
	}
	if (layer_exists("Background_clouds")) {
	    layer_x("Background_clouds", 0);
	}
	if (layer_exists("Background_stream")) {
	    layer_x("Background_stream", 0);
	}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 55522CB1
/// @DnDArgument : "var" "time"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "960"
if(time > 960){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1DED092D
	/// @DnDParent : 55522CB1
	/// @DnDArgument : "var" "x"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "40000"
	if(x >= 40000){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 19537F5F
		/// @DnDParent : 1DED092D
		/// @DnDArgument : "var" "win"
		if(win == 0){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 634B5EF4
			/// @DnDParent : 19537F5F
			/// @DnDArgument : "expr" "600"
			/// @DnDArgument : "var" "x"
			x = 600;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2DD5EDEF
			/// @DnDParent : 19537F5F
			/// @DnDArgument : "expr" "1850"
			/// @DnDArgument : "var" "y"
			y = 1850;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0B73F675
			/// @DnDParent : 19537F5F
			/// @DnDArgument : "var" "hsp"
			hsp = 0;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 469474B7
			/// @DnDParent : 19537F5F
			/// @DnDArgument : "var" "time"
			time = 0;
		
			/// @DnDAction : YoYo Games.Common.Execute_Code
			/// @DnDVersion : 1
			/// @DnDHash : 396C7340
			/// @DnDParent : 19537F5F
			/// @DnDArgument : "code" "if (layer_exists("Background")) {$(13_10)    layer_x("Background", 0);$(13_10)}$(13_10)if (layer_exists("Background_stars")) {$(13_10)    layer_x("Background_stars", 0);$(13_10)}$(13_10)if (layer_exists("Background_stars2")) {$(13_10)    layer_x("Background_stars2", 0);$(13_10)}$(13_10)if (layer_exists("Background_clouds")) {$(13_10)    layer_x("Background_clouds", 0);$(13_10)}$(13_10)if (layer_exists("Background_stream")) {$(13_10)    layer_x("Background_stream", 0);$(13_10)}"
			if (layer_exists("Background")) {
			    layer_x("Background", 0);
			}
			if (layer_exists("Background_stars")) {
			    layer_x("Background_stars", 0);
			}
			if (layer_exists("Background_stars2")) {
			    layer_x("Background_stars2", 0);
			}
			if (layer_exists("Background_clouds")) {
			    layer_x("Background_clouds", 0);
			}
			if (layer_exists("Background_stream")) {
			    layer_x("Background_stream", 0);
			}}}}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 3B44CE7D
/// @DnDArgument : "key" "ord("R")"
var l3B44CE7D_0;l3B44CE7D_0 = keyboard_check_pressed(ord("R"));if (l3B44CE7D_0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6AB40EDF
	/// @DnDParent : 3B44CE7D
	/// @DnDArgument : "expr" "600"
	/// @DnDArgument : "var" "x"
	x = 600;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 03B6EA31
	/// @DnDParent : 3B44CE7D
	/// @DnDArgument : "expr" "1850"
	/// @DnDArgument : "var" "y"
	y = 1850;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4C373132
	/// @DnDParent : 3B44CE7D
	/// @DnDArgument : "var" "hsp"
	hsp = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 608E31FF
	/// @DnDParent : 3B44CE7D
	/// @DnDArgument : "var" "vsp"
	vsp = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1F8C94FD
	/// @DnDParent : 3B44CE7D
	/// @DnDArgument : "var" "time"
	time = 0;

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 19BFFFA3
	/// @DnDParent : 3B44CE7D
	/// @DnDArgument : "code" "if (layer_exists("Background")) {$(13_10)    layer_x("Background", 0);$(13_10)}$(13_10)if (layer_exists("Background_stars")) {$(13_10)    layer_x("Background_stars", 0);$(13_10)}$(13_10)if (layer_exists("Background_stars2")) {$(13_10)    layer_x("Background_stars2", 0);$(13_10)}$(13_10)if (layer_exists("Background_clouds")) {$(13_10)    layer_x("Background_clouds", 0);$(13_10)}$(13_10)if (layer_exists("Background_stream")) {$(13_10)    layer_x("Background_stream", 0);$(13_10)}$(13_10)"
	if (layer_exists("Background")) {
	    layer_x("Background", 0);
	}
	if (layer_exists("Background_stars")) {
	    layer_x("Background_stars", 0);
	}
	if (layer_exists("Background_stars2")) {
	    layer_x("Background_stars2", 0);
	}
	if (layer_exists("Background_clouds")) {
	    layer_x("Background_clouds", 0);
	}
	if (layer_exists("Background_stream")) {
	    layer_x("Background_stream", 0);
	}}