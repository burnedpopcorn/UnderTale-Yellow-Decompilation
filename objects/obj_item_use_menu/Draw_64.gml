var xx, yy, n;

xx = 160;
yy = 60;
draw_sprite_ext(spr_dialoguebox, 1, xx, yy + 56, 2.6, 2.6, image_angle, c_white, image_alpha);
draw_sprite_ext(spr_dialoguebox, 0, xx, yy + 56, 2.5, 2.5, image_angle, c_white, image_alpha);
draw_set_colour(c_white);
draw_set_font(fnt_battle);

for (n = 1; n <= 8; n++)
{
    if (global.item_slot[n] != "Nothing")
        draw_text(xx - 60, (yy - 30) + (n * 15), string_hash_to_newline(global.item_slot[n]));
}

draw_sprite(encounter_heart, 0, xx - 70, (yy - 22) + (15 * item_selected));
