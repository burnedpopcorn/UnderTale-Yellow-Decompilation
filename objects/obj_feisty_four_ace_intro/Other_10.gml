with (obj_enemy_controller_feisty_four)
{
    if (global.attack_cycle == 2)
        case_exec = "T2 Obj Ace";
    else if (global.attack_cycle == 6)
        case_exec = "T6 Obj Ace";
    else if (global.attack_cycle == 9)
        case_exec = "T9 Obj Ace";
    
    event_user(0);
}
