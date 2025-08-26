if (image_index >= index_trigger_bg && trigger_bg == false)
{
    event_user(0);
    trigger_bg = true;
}

if (obj_enemy_controller_feisty_four.vanish_type == "Mooch Smack")
{
    if (image_index >= 10 && mooch_smack_approach == false)
    {
        mooch_smack_approach = true;
        mooch_smack_x_start = x;
    }
}

if (mooch_smack_approach == true && image_index <= 14)
{
    var mooch_smack_x_target = 318;
    var mooch_smack_x_dist = mooch_smack_x_start - mooch_smack_x_target;
    var mooch_smack_x_multi = (image_index - 9) / 5;
    x = mooch_smack_x_start - (mooch_smack_x_dist * mooch_smack_x_multi);
}
