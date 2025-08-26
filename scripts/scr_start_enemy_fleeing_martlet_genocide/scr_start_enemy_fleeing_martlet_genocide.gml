function scr_start_enemy_fleeing_martlet_genocide()
{
    scr_audio_fade_out_battle(1000);
    instance_create(380, 74, obj_quote_bubble_battle_yellow_3);
    var enemy_mode = global.enemy_mode;
    
    switch (enemy_mode)
    {
        case 5:
            instance_create(0, 0, obj_quote_battle_martlet_genocide_fight_end);
            break;
        
        case 6:
            break;
    }
}
