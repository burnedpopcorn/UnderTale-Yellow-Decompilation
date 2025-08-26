if (live_call())
    return global.live_result;

if (room == rm_flashback_03)
{
    shader_set(sh_yellow);
    
    if (instance_exists(obj_player_npc))
        draw_sprite(obj_player_npc.sprite_index, obj_player_npc.image_index, obj_player_npc.x, obj_player_npc.y);
    
    shader_reset();
}

draw_set_alpha(overlay_alpha);
var xx = camera_get_view_x(view_camera[0]);
var yy = camera_get_view_y(view_camera[0]);
draw_set_color(c_black);
draw_rectangle(xx, yy, xx + 640, yy + 480, false);
draw_set_alpha(1);
draw_set_alpha(white_overlay_alpha);
xx = camera_get_view_x(view_camera[0]);
yy = camera_get_view_y(view_camera[0]);
draw_set_color(c_white);
draw_rectangle(xx, yy, xx + 640, yy + 480, false);
draw_set_alpha(1);

if (instance_exists(obj_heart_flowey_battle_dummy) && surface_exists(battle_surf))
{
    surface_set_target(battle_surf);
    
    with (obj_heart_flowey_battle_dummy)
    {
        draw_clear_alpha(c_black, 0);
        draw_sprite(sprite_index, image_index, x, y);
    }
    
    surface_reset_target();
    draw_surface_ext(battle_surf, 0, 0, 0.5, 0.5, 0, c_white, 1);
}
