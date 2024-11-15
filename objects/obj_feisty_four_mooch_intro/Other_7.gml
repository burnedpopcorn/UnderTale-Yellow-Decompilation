with (obj_enemy_controller_feisty_four)
{
    if (global.attack_cycle == 3)
    {
        case_exec = "T3 Obj Mooch";
        event_user(0);
        case_exec = "T3 Quote Mooch 2";
        event_user(0);
    }
    else if (global.attack_cycle == 7)
    {
        case_exec = "T7 Obj Mooch";
        event_user(0);
        
        with (obj_heart_battle_fighting_parent)
            moveable = true;
    }
    else if (global.attack_cycle == 9)
    {
        case_exec = "T9 Obj Mooch";
        event_user(0);
        case_exec = "T9 Quote Mooch 2";
        event_user(0);
    }
}

instance_destroy();
exit;
