if (live_call())
    return global.live_result;

with (obj_player_npc)
{
    shader_set(sh_flash);
    draw_sprite(sprite_index, image_index, x, y);
    shader_reset();
}
