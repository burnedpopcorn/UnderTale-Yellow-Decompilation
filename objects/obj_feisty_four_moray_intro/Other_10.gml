with (obj_enemy_controller_feisty_four)
{
    if (global.attack_cycle == 1)
    {
        case_exec = "T1 BG Moray";
        event_user(0);
    }
    else if (global.attack_cycle == 5)
    {
        case_exec = "T5 BG Moray";
        event_user(0);
    }
    else if (global.attack_cycle == 8)
    {
        case_exec = "T8 BG Moray";
        event_user(0);
    }
}
