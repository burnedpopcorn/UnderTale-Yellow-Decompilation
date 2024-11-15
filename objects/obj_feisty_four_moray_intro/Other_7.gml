with (obj_enemy_controller_feisty_four)
{
    if (global.attack_cycle == 1)
    {
        case_exec = "T1 Obj Moray";
        event_user(0);
        case_exec = "T1 Quote Moray";
        event_user(0);
    }
    else if (global.attack_cycle == 5)
    {
        case_exec = "T5 Obj Moray";
        event_user(0);
        case_exec = "T5 Quote Moray";
        event_user(0);
    }
    else if (global.attack_cycle == 8)
    {
        case_exec = "T8 Obj Moray";
        event_user(0);
        case_exec = "T8 Quote Moray";
        event_user(0);
    }
}

instance_destroy();
exit;
