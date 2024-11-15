var lava_color, base_height, max_height, max_height_2, xx, yy, ydistance1, xx2, yy2, ydistance2, xx3, yy3, ydistance3, xx4, yy4, ydistance4, xx_needle, yy_needle, i;

lava_color = make_colour_rgb(255, 136, 204);
draw_set_colour(lava_color);
base_height = 10;
max_height = 40;
max_height_2 = 35;
xx = x + 84;
yy = y + 79;
ydistance1 = yy - base_height - (max_height * liquid_amount[0]);
draw_rectangle(xx, yy, xx + 12, ydistance1, false);
draw_sprite(spr_steamworks_04b_liquid, liquid_image_index, xx, ydistance1);
xx2 = x + 115;
yy2 = y + 143;
ydistance2 = yy2 - base_height - (max_height * liquid_amount[1]);
draw_rectangle(xx2, yy2, xx2 + 12, ydistance2, false);
draw_sprite(spr_steamworks_04b_liquid, liquid_image_index, xx2, ydistance2);
xx3 = x + 146;
yy3 = y + 79;
ydistance3 = yy3 - base_height - (max_height * liquid_amount[2]);
draw_rectangle(xx3, yy3, xx3 + 12, ydistance3, false);
draw_sprite(spr_steamworks_04b_liquid, liquid_image_index, xx3, ydistance3);
xx4 = x + 11;
yy4 = y + 86;
ydistance4 = yy4 - base_height - (max_height_2 * liquid_amount[3]);
draw_rectangle(xx4, yy4, xx4 + 48, ydistance4, false);
xx_needle = x + 36;
yy_needle = y + 64;
draw_sprite_ext(spr_steamworks_04c_puzzle_needle, 0, xx_needle, yy_needle, 1, 1, 180 * -liquid_amount[3], c_white, 1);
draw_self();
draw_set_alpha(liquid_overlay_alpha);

for (i = 0; i < array_length_1d(liquid_noloop); i++)
{
    if (liquid_noloop[i] == true)
        draw_sprite(spr_steamworks_04c_puzzle_overlay, i, x, y);
}

draw_set_alpha(1);
