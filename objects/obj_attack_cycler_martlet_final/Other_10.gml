if (global.hotland_flag[9] < 2)
{
    if (global.enemy_mode == 0)
    {
        global.attack_cycle += 1;
        
        if (global.attack_cycle >= global.attack_cycle_max)
            global.enemy_mode = 1;
    }
    else if (global.enemy_mode == 1)
    {
        with (obj_martlet_final_attack_controller)
            event_user(0);
    }
}
else
{
    with (obj_martlet_final_2_attack_controller)
        event_user(0);
}
