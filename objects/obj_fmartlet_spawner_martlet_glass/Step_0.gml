var battle_box;

if (live_call())
    return global.live_result;

battle_box = 3154;

switch (attack_tick)
{
    case 60:
        instance_create_depth(battle_box.x - (glass_width * 0.5) - glass_width, battle_box.bbox_top - 20, -100, obj_martlet_attack_glass);
        instance_create_depth(battle_box.x - (glass_width * 0.5), battle_box.bbox_top - 20, -100, obj_martlet_attack_glass);
        instance_create_depth((battle_box.x - (glass_width * 0.5)) + glass_width, battle_box.bbox_top - 20, -100, obj_martlet_attack_glass);
        attack_tick = 0;
        break;
}

attack_tick += 1;
