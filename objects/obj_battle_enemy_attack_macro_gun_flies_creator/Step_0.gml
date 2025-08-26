if (live_call())
    return global.live_result;

var battle_box = obj_dialogue_box_battle_transformation_any;

switch (attack_tick)
{
    case 0:
        instance_create_depth(battle_box.bbox_left + 30, battle_box.y, -100, obj_battle_enemy_attack_bigfrog_herofly);
        instance_create_depth(battle_box.bbox_right - 30, battle_box.y, -100, obj_battle_enemy_attack_bigfrog_villainfly);
        break;
    
    case 290:
        instance_destroy();
        break;
}

attack_tick += 1;
