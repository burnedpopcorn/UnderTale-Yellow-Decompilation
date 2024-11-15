with (obj_enemy_controller_feisty_four)
{
    if (global.attack_cycle == 2)
        case_exec = "T2 BG Ace";
    else if (global.attack_cycle == 6)
        case_exec = "T6 BG Ace";
    else if (global.attack_cycle == 9)
        case_exec = "T9 BG Ace";
    
    event_user(0);
}
