/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5757C1E9
/// @DnDArgument : "code" "draw_set_font(Font1);$(13_10)$(13_10)$(13_10)if ((time > 960 or x < 40000) and win = 0) {$(13_10)    draw_text(x - 300, 50, "time: " + string(floor(time / 60)) + "." + string_format((time mod 60) * 1.666, 2, 0));$(13_10)    draw_text(x - 900, 200, "Beat within 15 seconds to win");$(13_10)} $(13_10)$(13_10)else if (time < 960 and x > 40000) or win = 1 {$(13_10)$(13_10)    draw_text(x - 200, 50, "YOU WIN!"); $(13_10)    draw_text(x - 200, 200, "YOU WIN!");$(13_10)	win = 1$(13_10)}$(13_10)$(13_10)$(13_10)draw_sprite(Sprite1, 0, x, y);"
draw_set_font(Font1);


if ((time > 960 or x < 40000) and win = 0) {
    draw_text(x - 300, 50, "time: " + string(floor(time / 60)) + "." + string_format((time mod 60) * 1.666, 2, 0));
    draw_text(x - 900, 200, "Beat within 15 seconds to win");
} 

else if (time < 960 and x > 40000) or win = 1 {

    draw_text(x - 200, 50, "YOU WIN!"); 
    draw_text(x - 200, 200, "YOU WIN!");
	win = 1
}


draw_sprite(Sprite1, 0, x, y);