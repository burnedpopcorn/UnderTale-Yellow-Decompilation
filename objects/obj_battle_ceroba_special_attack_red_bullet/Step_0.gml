var player_soul, battle_box, angle_diff, impact;

if (live_call())
    return global.live_result;

player_soul = 2979;

if (!instance_exists(obj_dialogue_box_battle_transformation_any))
{
    instance_destroy();
    exit;
}

battle_box = 3154;

if (y >= (target_y - 10))
    aim = 0;

if (aim > 0)
{
    angle_diff = angle_difference(point_direction(x, y, target_x, target_y), direction) * turn_rate;
    
    if (abs(angle_diff) > 1)
        direction += angle_diff;
    
    aim--;
}

if ((y + 23) >= battle_box.bbox_bottom && destroy_on_contact == true)
{
    scr_screenshake_battle(8, 2);
    impact = instance_create_depth(x, battle_box.bbox_bottom - 4, -100, obj_battle_enemy_attack_bullet_impact);
    impact.image_blend = make_color_rgb(255, 0, 55);
    instance_destroy();
}
