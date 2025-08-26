if (live_call())
    return global.live_result;

var xx = 160;
var yy = 60;
draw_sprite_ext(spr_dialoguebox, 1, xx, yy + 56, 2.6, 2.6, image_angle, c_white, image_alpha);
draw_sprite_ext(spr_dialoguebox, 0, xx, yy + 56, 2.5, 2.5, image_angle, c_white, image_alpha);
draw_set_colour(c_white);
draw_set_font(fnt_battle);

for (var n = 0; n < ds_list_size(global.fast_travel_list); n++)
{
    draw_set_color(c_white);
    draw_text(xx - 60, (yy - 30) + ((n + 1) * 15), string_hash_to_newline(ds_list_find_value(global.fast_travel_list, n)));
}

draw_sprite(encounter_heart, 0, xx - 70, (yy - 22) + (15 * item_selected));
