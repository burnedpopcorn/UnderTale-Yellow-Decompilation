with (obj_feisty_four_ace_head)
    instance_destroy();

with (obj_feisty_four_ace_arm)
    instance_destroy();

with (obj_enemy_controller_feisty_four)
{
    if (global.attack_cycle == 3)
        case_exec = "T3 Appear Mooch";
    else if (global.attack_cycle == 7)
        case_exec = "T7 Appear Mooch";
    else if (global.attack_cycle == 10)
        case_exec = "T10 Appear Ed";
    
    event_user(0);
}
