function scr_enemy_timer_attacks_jandroid_goosic_duo()
{
    var enemy_attack;
    
    enemy_attack = global.enemy_attack;
    
    if (instance_exists(obj_dialogue_box_battle_transformation_any) && obj_heart_battle_fighting_parent.moveable == true)
    {
        if (enemy_attack == "Jandroid Goosic Attack 1" && !instance_exists(obj_battle_enemy_attack_jg_1))
            instance_create(0, 0, obj_battle_enemy_attack_jg_1);
        else if (enemy_attack == "Jandroid Goosic Attack 2" && !instance_exists(obj_battle_enemy_attack_jg_2))
            instance_create(0, 0, obj_battle_enemy_attack_jg_2);
        else if (enemy_attack == "Slippery Floor" || enemy_attack == "Garbage Cans" || enemy_attack == "Spray Bottle")
            script_execute(scr_enemy_timer_attacks_jandroid_solo);
        else if (enemy_attack == "Goosic EQ Visualizer" || enemy_attack == "Goosic Disk" || enemy_attack == "Goosic Speaker")
            script_execute(scr_enemy_timer_attacks_goosic_solo);
    }
}
