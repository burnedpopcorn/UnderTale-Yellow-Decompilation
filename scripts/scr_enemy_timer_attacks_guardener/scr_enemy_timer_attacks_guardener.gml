function scr_enemy_timer_attacks_guardener()
{
    var enemy_attack;
    
    enemy_attack = global.enemy_attack;
    
    if (instance_exists(obj_dialogue_box_battle_transformation_any) && obj_heart_battle_fighting_parent.moveable == true)
    {
        if (enemy_attack == "Guardener Attack 1" && !instance_exists(obj_battle_enemy_attack_guardener_attack_1))
        {
            instance_create(320, 280, obj_battle_enemy_attack_guardener_attack_1);
        }
        else if (enemy_attack == "Guardener Attack 2" && !instance_exists(obj_battle_enemy_attack_guardener_attack_2))
        {
            instance_create(320, 280, obj_battle_enemy_attack_guardener_attack_2);
        }
        else if (enemy_attack == "Guardener Attack 3" && !instance_exists(obj_battle_enemy_attack_guardener_attack_3))
        {
            instance_create(320, 280, obj_battle_enemy_attack_guardener_attack_3);
        }
        else if (enemy_attack == "Guardener Attack 4" && !instance_exists(obj_battle_enemy_attack_guardener_attack_4))
        {
            instance_create(320, 280, obj_battle_enemy_attack_guardener_attack_4);
        }
        else if (enemy_attack == "Guardener Attack 5" && !instance_exists(obj_battle_enemy_attack_guardener_attack_5))
        {
            instance_create(0, 0, obj_battle_enemy_attack_guardener_attack_5);
        }
        else if (enemy_attack == "Guardener Attack 6" && !instance_exists(obj_battle_enemy_attack_guardener_attack_6))
        {
            instance_create(0, 0, obj_battle_enemy_attack_guardener_attack_6);
        }
        else if (enemy_attack == "Guardener Attack 7" && !instance_exists(obj_battle_enemy_attack_guardener_attack_7))
        {
            instance_create(0, 0, obj_battle_enemy_attack_guardener_attack_7);
        }
        else if (enemy_attack == "Guardener Attack 8" && !instance_exists(obj_battle_enemy_attack_guardener_attack_8))
        {
            instance_create(0, 0, obj_battle_enemy_attack_guardener_attack_8);
        }
        else if (enemy_attack == "Guardener Attack 9" && !instance_exists(obj_battle_enemy_attack_guardener_attack_9))
        {
            instance_create(0, 0, obj_battle_enemy_attack_guardener_attack_9);
        }
        else if (enemy_attack == "Guardener Attack 10" && !instance_exists(obj_battle_enemy_attack_guardener_attack_10))
        {
            instance_create(0, 0, obj_battle_enemy_attack_guardener_attack_10);
        }
        else if (enemy_attack == "Guardener Attack 11" && !instance_exists(obj_battle_enemy_attack_guardener_attack_11))
        {
            instance_create(0, 0, obj_battle_enemy_attack_guardener_attack_11);
        }
        else if (enemy_attack == "Guardener Attack 12" && !instance_exists(obj_battle_enemy_attack_guardener_attack_12))
        {
            instance_create(0, 0, obj_battle_enemy_attack_guardener_attack_12);
        }
        else if (enemy_attack == "Guardener No Attack")
        {
            with (obj_dialogue_box_battle_transformation_any)
                event_user(0);
        }
    }
}
