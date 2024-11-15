function scr_enemy_attack_crispy_slash()
{
    global.attack_counter_max = 30;
    
    if (global.attack_counter == 0 && global.timer_attacks_counter < 5)
    {
        if (global.timer_attacks_counter == 0)
        {
            instance_create(obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y, obj_battle_enemy_attack_crispy_slash_warning_1);
        }
        else if (global.timer_attacks_counter == 1)
        {
            instance_create(obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y, obj_battle_enemy_attack_crispy_slash_warning_2);
        }
        else if (global.timer_attacks_counter == 2)
        {
            instance_create(obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y, obj_battle_enemy_attack_crispy_slash_warning_1);
        }
        else if (global.timer_attacks_counter == 3)
        {
            instance_create(obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y, obj_battle_enemy_attack_crispy_slash_warning_2);
        }
        else if (global.timer_attacks_counter == 4)
        {
            instance_create(obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y, obj_battle_enemy_attack_crispy_slash_warning_3);
            instance_create(obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y, obj_battle_enemy_attack_crispy_slash_warning_4);
        }
        
        global.timer_attacks_counter += 1;
    }
}
