function scr_battle_core_directory_flavor_text_enemy_1_action_2()
{
    var action_2_selected_count = global.action_2_selected_count;
    var battle_enemy_name = global.battle_enemy_name;
    var game_mode = global.game_mode;
    
    if (game_mode == "customs")
    {
        if (battle_enemy_name == "craniex")
            message[0] = "* Craniex doesn't seem too fond#  of your insults.";
    }
    else if (game_mode == "yellow")
    {
        if (battle_enemy_name == "crispy scroll solo")
        {
            if (action_2_selected_count >= 3)
                message[0] = "* Crispy Scroll's power is#  staggering!";
            else if (action_2_selected_count == 2)
                message[0] = "* Crispy Scroll hit 100%! He has#  reached Super Crispy Mode 2K!!";
            else if (action_2_selected_count == 1)
                message[0] = "* Crispy Scroll is 50% powered up.";
        }
        else if (battle_enemy_name == "crispy scroll penilla duo")
        {
            if (action_2_selected_count >= 3)
                message[0] = "* Crispy Scroll's power is#  staggering!";
            else if (action_2_selected_count == 2)
                message[0] = "* Crispy Scroll hit 100%! He has#  reached Super Crispy Mode 2K!!";
            else if (action_2_selected_count == 1)
                message[0] = "* Crispy Scroll is 50% powered up.";
        }
        else if (battle_enemy_name == "micro froggit")
        {
            if (action_2_selected_count >= 1)
                message[0] = "* Micro Froggit is trying to hop#  away.";
        }
        else if (battle_enemy_name == "trihecta together")
        {
            if (action_2_selected_count >= 1)
                message[0] = "* Trihecta begins to sway back#  and forth.";
            else
                message[0] = "* Trihecta balances out.";
        }
    }
}
