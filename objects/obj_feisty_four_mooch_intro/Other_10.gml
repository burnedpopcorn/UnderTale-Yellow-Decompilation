with (obj_enemy_controller_feisty_four)
{
    if (global.attack_cycle == 3)
    {
        case_exec = "T3 BG Mooch";
        event_user(0);
    }
    else if (global.attack_cycle == 7)
    {
        case_exec = "T7 BG Mooch";
        event_user(0);
    }
    else if (global.attack_cycle == 9)
    {
        case_exec = "T9 BG Mooch";
        event_user(0);
    }
}
