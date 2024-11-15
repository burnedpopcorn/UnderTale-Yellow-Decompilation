var battle_box, type;

if (live_call())
    return global.live_result;

battle_box = 3154;
type = choose(1, 2, 3);

switch (type)
{
    case 1:
        instance_create_depth(battle_box.bbox_left + 60, -50, -100, obj_battle_enemy_attack_asgore_sinusoid);
        instance_create_depth(battle_box.bbox_right - 60, -120, -100, obj_battle_enemy_attack_asgore_sinusoid);
        break;
    
    case 2:
        instance_create_depth(battle_box.bbox_left + 40, battle_box.bbox_top - 60, -100, obj_battle_enemy_attack_asgore_sinusoid);
        instance_create_depth(battle_box.x, battle_box.bbox_top - 100, -100, obj_battle_enemy_attack_asgore_sinusoid);
        instance_create_depth(battle_box.bbox_right - 40, battle_box.bbox_top - 140, -100, obj_battle_enemy_attack_asgore_sinusoid);
        break;
    
    case 3:
        instance_create_depth(battle_box.bbox_right - 40, battle_box.bbox_top - 60, -100, obj_battle_enemy_attack_asgore_sinusoid);
        instance_create_depth(battle_box.x, battle_box.bbox_top - 100, -100, obj_battle_enemy_attack_asgore_sinusoid);
        instance_create_depth(battle_box.bbox_left + 40, battle_box.bbox_top - 140, -100, obj_battle_enemy_attack_asgore_sinusoid);
        break;
}

attack_count--;

if (attack_count > 0)
{
    alarm[0] = 80;
}
else
{
    obj_battle_enemy_attack_asgore_checker.alarm[0] = 60;
    instance_destroy();
}
