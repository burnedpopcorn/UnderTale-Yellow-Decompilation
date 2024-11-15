with (obj_feisty_four_moray_head)
    instance_destroy();

with (obj_feisty_four_moray_hand_left)
    instance_destroy();

with (obj_feisty_four_moray_hand_right)
    instance_destroy();

with (obj_enemy_controller_feisty_four)
{
    if (global.attack_cycle == 2)
        case_exec = "T2 Appear Ace";
    else if (global.attack_cycle == 6)
        case_exec = "T6 Appear Ace";
    else if (global.attack_cycle == 9)
        case_exec = "T9 Appear Ace";
    
    event_user(0);
}
