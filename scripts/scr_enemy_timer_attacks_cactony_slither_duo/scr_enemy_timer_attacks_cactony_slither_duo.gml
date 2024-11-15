function scr_enemy_timer_attacks_cactony_slither_duo()
{
    var enemy_attack;
    
    enemy_attack = global.enemy_attack;
    
    if (instance_exists(obj_dialogue_box_battle_transformation_any) && obj_heart_battle_fighting_parent.moveable == true)
    {
        if (enemy_attack == "Cactony Slither Attack 1" && !instance_exists(obj_battle_enemy_attack_cs_1))
            instance_create(0, 0, obj_battle_enemy_attack_cs_1);
        else if (enemy_attack == "Cactony Slither Attack 2" && !instance_exists(obj_battle_enemy_attack_cs_2))
            instance_create(0, 0, obj_battle_enemy_attack_cs_2);
        else if (enemy_attack == "Slither Pottery" || enemy_attack == "Slither Snake")
            script_execute(scr_enemy_timer_attacks_slither_solo);
        else if (enemy_attack == "Cactony Needle Side" || enemy_attack == "Cactony Needle Top" || enemy_attack == "Cactony Needle Green")
            script_execute(scr_enemy_timer_attacks_cactony_solo);
    }
}
