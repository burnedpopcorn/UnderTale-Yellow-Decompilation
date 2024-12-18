var battle_box, side, xx, yy, twinkle;

if (live_call())
    return global.live_result;

battle_box = 3154;
side = choose(1, 2, 3, 4);
xx = battle_box.x;
yy = battle_box.y;

switch (side)
{
    case 1:
        xx = battle_box.bbox_left - 20;
        yy = battle_box.bbox_top - 20;
        break;
    
    case 2:
        xx = battle_box.bbox_right + 20;
        yy = battle_box.bbox_top - 20;
        break;
    
    case 3:
        xx = battle_box.bbox_right + 20;
        yy = battle_box.bbox_bottom + 20;
        break;
    
    case 4:
        xx = battle_box.bbox_left - 20;
        yy = battle_box.bbox_bottom + 20;
        break;
}

twinkle = instance_create_depth(xx, yy, -100, obj_battle_enemy_attack_axis_turret_twinkle_2);
twinkle.side = side;
turret_count--;

if (turret_count <= 0)
    instance_destroy();
