if (live_call())
    return global.live_result;

draw_self();

if (laser_active == true)
{
    draw_sprite_ext(spr_battle_enemy_attack_axis_laser_1, 0, x, y, 1, 1, image_angle, c_white, image_alpha);
    draw_sprite_ext(spr_battle_enemy_attack_axis_laser_2, floor(laser_frame_current), x, y, laser_length, 1, image_angle, c_white, image_alpha);
    draw_sprite_ext(spr_battle_enemy_attack_axis_laser_3, 0, x + lengthdir_x(laser_length, direction), y + lengthdir_y(laser_length, direction), 1, 1, image_angle, c_white, image_alpha);
    
    if (laser_blocked)
        draw_sprite_ext(spr_battle_enemy_attack_axis_laser_impact, floor(impact_frame_current), obj_battle_enemy_attack_axis_shield.x + lengthdir_x(14, obj_battle_enemy_attack_axis_shield.direction), obj_battle_enemy_attack_axis_shield.y + lengthdir_y(14, obj_battle_enemy_attack_axis_shield.direction), 1, 1, obj_battle_enemy_attack_axis_shield.direction - 180, c_white, 1);
}
