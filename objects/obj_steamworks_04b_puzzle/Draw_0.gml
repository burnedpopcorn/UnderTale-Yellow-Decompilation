var lava_color = make_colour_rgb(255, 136, 204);
draw_set_colour(lava_color);
var xx = x + 6;
var yy = y + 62;
var base_height = 10;
var ydistance1 = yy - base_height - (40 * liquid_amount[0]);
draw_rectangle(xx, yy, xx + 12, ydistance1, false);
draw_sprite(spr_steamworks_04b_liquid, liquid_image_index, xx, ydistance1);
var xx2 = x + 74;
var yy2 = y + 120;
var ydistance2 = yy2 - base_height - (40 * liquid_amount[1]);
draw_rectangle(xx2, yy2, xx2 + 12, ydistance2, false);
draw_sprite(spr_steamworks_04b_liquid, liquid_image_index, xx2, ydistance2);
var xx3 = x + 142;
var yy3 = y + 62;
var ydistance3 = yy3 - base_height - (40 * liquid_amount[2]);
draw_rectangle(xx3, yy3, xx3 + 12, ydistance3, false);
draw_sprite(spr_steamworks_04b_liquid, liquid_image_index, xx3, ydistance3);
draw_self();
draw_set_alpha(liquid_overlay_alpha);

for (var i = 0; i < array_length_1d(liquid_noloop); i++)
{
    if (liquid_noloop[i] == true)
        draw_sprite(spr_steamworks_04b_puzzle_overlay, i, x, y);
}

draw_set_alpha(1);
