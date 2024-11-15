if (live_call())
    return global.live_result;

draw_set_alpha(draw_alpha);
draw_set_color(c_black);
draw_rectangle(0, 0, room_width, room_height, false);
draw_set_alpha(1);
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, 1);

with (obj_asgore_npc)
    draw_sprite(sprite_index, image_index, x, y);

with (obj_player_npc)
    draw_sprite(sprite_index, image_index, x, y);

draw_set_alpha(draw_alpha);
shader_set(sh_silhouette);

with (obj_asgore_npc)
{
    draw_sprite(sprite_index, image_index, x + 1, y);
    draw_sprite(sprite_index, image_index, x + 1, y + 1);
    draw_sprite(sprite_index, image_index, x, y + 1);
    draw_sprite(sprite_index, image_index, x - 1, y + 1);
    draw_sprite(sprite_index, image_index, x - 1, y);
    draw_sprite(sprite_index, image_index, x - 1, y - 1);
    draw_sprite(sprite_index, image_index, x, y - 1);
    draw_sprite(sprite_index, image_index, x + 1, y - 1);
}

shader_set(sh_flash);

with (obj_asgore_npc)
    draw_sprite(sprite_index, image_index, x, y);

with (obj_player_npc)
    draw_sprite(sprite_index, image_index, x, y);

shader_reset();
draw_set_alpha(1);
