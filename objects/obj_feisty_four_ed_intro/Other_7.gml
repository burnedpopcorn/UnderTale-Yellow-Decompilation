with (obj_enemy_controller_feisty_four)
{
    if (global.attack_cycle == 4)
    {
        case_exec = "T4 Obj Ed";
        event_user(0);
        case_exec = "T4 Quote Ed";
        event_user(0);
    }
    else if (global.attack_cycle == 8)
    {
        case_exec = "T8 Obj Ed";
        event_user(0);
        case_exec = "T8 Quote Ed";
        event_user(0);
    }
    else if (global.attack_cycle == 10)
    {
        case_exec = "T10 Obj Ed";
        event_user(0);
        case_exec = "T10 Quote Ed";
        event_user(0);
    }
}

instance_destroy();
exit;
