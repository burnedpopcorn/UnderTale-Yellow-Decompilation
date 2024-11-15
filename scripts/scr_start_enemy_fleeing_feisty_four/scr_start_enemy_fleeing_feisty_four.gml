function scr_start_enemy_fleeing_feisty_four()
{
    with (obj_enemy_controller_feisty_four)
    {
        case_exec = "T10 Vanish Ace";
        event_user(0);
        case_exec = "T10 Vanish Mooch";
        event_user(0);
    }
}
