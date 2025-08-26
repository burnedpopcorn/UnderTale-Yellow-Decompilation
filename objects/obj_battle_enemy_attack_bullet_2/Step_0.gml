if (live_call())
    return global.live_result;

if (!instance_exists(obj_dialogue_box_battle_transformation_any))
{
    instance_destroy();
    exit;
}

var battle_box = obj_dialogue_box_battle_transformation_any;

if (aim > 0)
{
    direction += (angle_difference(point_direction(x, y, target_x, target_y), direction) * turn_rate);
    aim--;
}

if ((y + 23) >= battle_box.bbox_bottom && destroy_on_contact == true)
{
    scr_screenshake_battle(8, 2);
    instance_create_depth(x, battle_box.bbox_bottom - 4, -100, obj_battle_enemy_attack_bullet_impact);
    var deg_dec = 26;
    
    for (var i = 155; i > 0; i -= deg_dec)
    {
        var residue = instance_create_depth(x, battle_box.bbox_bottom - 4, -100, obj_battle_enemy_attack_bullet_residue);
        residue.speed = 5;
        residue.direction = i;
    }
    
    instance_destroy();
}
