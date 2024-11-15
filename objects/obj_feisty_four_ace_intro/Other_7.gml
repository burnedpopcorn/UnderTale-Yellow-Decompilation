with (obj_enemy_controller_feisty_four)
{
    if (global.attack_cycle == 2)
        case_exec = "T2 Quote Ace";
    else if (global.attack_cycle == 6)
        case_exec = "T6 Quote Ace";
    else if (global.attack_cycle == 9)
        case_exec = "T9 Quote Ace";
    
    event_user(0);
}

instance_destroy();
exit;
