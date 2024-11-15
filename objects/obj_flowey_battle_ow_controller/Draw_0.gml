if (live_call())
    return global.live_result;

draw_set_alpha(player_alpha);

if (instance_exists(obj_player_npc))
{
    with (obj_player_npc)
        draw_outline(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, 0, 1);
}
else if (instance_exists(obj_pl))
{
    with (obj_pl)
        draw_outline(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, 0, 1);
}

shader_set(sh_yellow);

if (instance_exists(obj_player_npc))
    draw_sprite(obj_player_npc.sprite_index, obj_player_npc.image_index, obj_player_npc.x, obj_player_npc.y);
else if (instance_exists(obj_pl))
    draw_sprite(obj_pl.sprite_index, obj_pl.image_index, obj_pl.x, obj_pl.y);

shader_reset();
draw_set_alpha(1);
