with (obj_enemy_controller_feisty_four)
{
    if (global.attack_cycle == 4)
    {
        case_exec = "T4 Vanish Mooch";
        event_user(0);
        case_exec = "T4 BG Ed";
        event_user(0);
    }
    else if (global.attack_cycle == 8)
    {
        case_exec = "T8 BG Ed";
        event_user(0);
    }
    else if (global.attack_cycle == 10)
    {
        case_exec = "T10 BG Ed";
        event_user(0);
    }
}
