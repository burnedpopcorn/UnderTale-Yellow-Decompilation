with (obj_feisty_four_ed_head)
    instance_destroy();

with (obj_feisty_four_ed_body)
    instance_destroy();

with (obj_feisty_four_ed_hand_left)
    instance_destroy();

with (obj_feisty_four_ed_hand_right)
    instance_destroy();

with (obj_enemy_controller_feisty_four)
{
    if (global.attack_cycle == 1)
    {
        case_exec = "T1 Appear Moray";
        event_user(0);
    }
    else if (global.attack_cycle == 5)
    {
        case_exec = "T5 Appear Moray";
        event_user(0);
    }
}
