draw_set_color(c_black);
draw_set_alpha(draw_alpha);
draw_rectangle(0, 0, room_width, room_height, false);
draw_set_alpha(1);

if (instance_exists(obj_player_npc))
{
    shader_set(sh_yellow);
    draw_set_alpha(draw_clover_yellow_alpha);
    draw_sprite(obj_player_npc.sprite_index, obj_player_npc.image_index, obj_player_npc.x, obj_player_npc.y);
    draw_set_alpha(1);
    shader_reset();
}
