var lava_color = make_colour_rgb(255, 136, 204);
draw_set_colour(lava_color);
var base_height = 10;
var max_height = 40;
var max_height_2 = 35;
var xx = x + 84;
var yy = y + 79;
var ydistance1 = yy - base_height - (max_height * liquid_amount[0]);
draw_rectangle(xx, yy, xx + 12, ydistance1, false);
draw_sprite(spr_steamworks_04b_liquid, liquid_image_index, xx, ydistance1);
var xx2 = x + 115;
var yy2 = y + 143;
var ydistance2 = yy2 - base_height - (max_height * liquid_amount[1]);
draw_rectangle(xx2, yy2, xx2 + 12, ydistance2, false);
draw_sprite(spr_steamworks_04b_liquid, liquid_image_index, xx2, ydistance2);
var xx3 = x + 146;
var yy3 = y + 79;
var ydistance3 = yy3 - base_height - (max_height * liquid_amount[2]);
draw_rectangle(xx3, yy3, xx3 + 12, ydistance3, false);
draw_sprite(spr_steamworks_04b_liquid, liquid_image_index, xx3, ydistance3);
var xx4 = x + 11;
var yy4 = y + 86;
var ydistance4 = yy4 - base_height - (max_height_2 * liquid_amount[3]);
draw_rectangle(xx4, yy4, xx4 + 48, ydistance4, false);
var xx_needle = x + 36;
var yy_needle = y + 64;
draw_sprite_ext(spr_steamworks_04c_puzzle_needle, 0, xx_needle, yy_needle, 1, 1, 180 * -liquid_amount[3], c_white, 1);
draw_self();
draw_set_alpha(liquid_overlay_alpha);

for (var i = 0; i < array_length_1d(liquid_noloop); i++)
{
    if (liquid_noloop[i] == true)
        draw_sprite(spr_steamworks_04c_puzzle_overlay, i, x, y);
}

draw_set_alpha(1);
