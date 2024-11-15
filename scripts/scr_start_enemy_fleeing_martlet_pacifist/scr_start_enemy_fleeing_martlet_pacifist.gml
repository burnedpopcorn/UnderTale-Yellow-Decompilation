function scr_start_enemy_fleeing_martlet_pacifist()
{
    var enemy_mode;
    
    scr_audio_fade_out_battle(1000);
    instance_create(380, 74, obj_quote_bubble_battle_yellow_3);
    enemy_mode = global.enemy_mode;
    
    switch (enemy_mode)
    {
        case 10:
            instance_create(0, 0, obj_quote_battle_martlet_pacifist_attack_end);
            break;
        
        case 11:
            instance_create(0, 0, obj_quote_battle_martlet_pacifist_insult_end);
            break;
        
        case 12:
            instance_create(0, 0, obj_quote_battle_martlet_pacifist_confused_end);
            break;
    }
}
