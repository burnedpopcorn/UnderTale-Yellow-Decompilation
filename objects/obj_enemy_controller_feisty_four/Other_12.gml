if (vanish_type == "Ed")
{
    with (obj_feisty_four_ed_legs)
    {
        sign_modifier_move = obj_enemy_controller_feisty_four.vanish_direction;
        time_elapsed_move = 0;
        time_max_move = 30;
        time_increase_move = 1;
        max_rise_move = 500;
        vanish = true;
    }
}
else if (vanish_type == "Moray")
{
    with (obj_feisty_four_moray_legs)
    {
        sign_modifier_move = obj_enemy_controller_feisty_four.vanish_direction;
        time_elapsed_move = 0;
        time_max_move = 30;
        time_increase_move = 1;
        max_rise_move = 500;
        vanish = true;
    }
}
else if (vanish_type == "Ace")
{
    with (obj_feisty_four_ace_legs)
    {
        sign_modifier_move = obj_enemy_controller_feisty_four.vanish_direction;
        time_elapsed_move = 0;
        time_max_move = 30;
        time_increase_move = 1;
        max_rise_move = 500;
        vanish = true;
    }
}
else if (vanish_type == "Mooch")
{
    with (obj_feisty_four_mooch_body_full)
    {
        sign_modifier_move = obj_enemy_controller_feisty_four.vanish_direction;
        time_elapsed_move = 0;
        time_max_move = 30;
        time_increase_move = 1;
        max_rise_move = 500;
        vanish = true;
    }
}
else if (vanish_type == "Mooch Smack")
{
    with (obj_feisty_four_mooch_body_full)
        mooch_fly_away = true;
}
