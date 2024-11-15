if (repeat_count <= 0)
{
    instance_destroy();
    
    if (global.battle_phase == 1)
        instance_create(320, 320, obj_battle_enemy_attack_ceroba_flower_barrage_black_hole);
    
    if (instance_exists(obj_battle_enemy_attack_ceroba_flower_barrage_checker))
        obj_battle_enemy_attack_ceroba_flower_barrage_checker.alarm[0] = 1;
}
else
{
    counter = 0;
    repeat_count -= 1;
}
