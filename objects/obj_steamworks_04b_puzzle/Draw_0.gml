var lava_color, xx, yy, base_height, ydistance1, xx2, yy2, ydistance2, xx3, yy3, ydistance3, i;

lava_color = make_colour_rgb(255, 136, 204);
draw_set_colour(lava_color);
xx = x + 6;
yy = y + 62;
base_height = 10;
ydistance1 = yy - base_height - (40 * liquid_amount[0]);
draw_rectangle(xx, yy, xx + 12, ydistance1, false);
draw_sprite(spr_steamworks_04b_liquid, liquid_image_index, xx, ydistance1);
xx2 = x + 74;
yy2 = y + 120;
ydistance2 = yy2 - base_height - (40 * liquid_amount[1]);
draw_rectangle(xx2, yy2, xx2 + 12, ydistance2, false);
draw_sprite(spr_steamworks_04b_liquid, liquid_image_index, xx2, ydistance2);
xx3 = x + 142;
yy3 = y + 62;
ydistance3 = yy3 - base_height - (40 * liquid_amount[2]);
draw_rectangle(xx3, yy3, xx3 + 12, ydistance3, false);
draw_sprite(spr_steamworks_04b_liquid, liquid_image_index, xx3, ydistance3);
draw_self();
draw_set_alpha(liquid_overlay_alpha);

for (i = 0; i < array_length_1d(liquid_noloop); i++)
{
    if (liquid_noloop[i] == true)
        draw_sprite(spr_steamworks_04b_puzzle_overlay, i, x, y);
}

draw_set_alpha(1);
