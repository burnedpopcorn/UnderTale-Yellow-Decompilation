draw_set_alpha(yellow_overlay_alpha);

with (obj_player_npc)
{
    shader_set(sh_yellow);
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, other.yellow_overlay_alpha);
    shader_reset();
}

draw_set_alpha(1);
