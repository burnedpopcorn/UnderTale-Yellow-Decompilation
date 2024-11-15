with (obj_enemy_controller_feisty_four)
{
    if (global.attack_cycle == 3)
        case_exec = "T3 Appear Mooch";
    else if (global.attack_cycle == 7)
        case_exec = "T7 Appear Mooch";
    else if (global.attack_cycle == 8)
        case_exec = "T8 Appear Ed";
    
    event_user(0);
}
