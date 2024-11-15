function scr_battle_core_directory_flavor_text_enemy_1_action_1()
{
    var action_1_selected_count, battle_enemy_name, game_mode;
    
    action_1_selected_count = global.action_1_selected_count;
    battle_enemy_name = global.battle_enemy_name;
    game_mode = global.game_mode;
    
    if (game_mode == "customs")
    {
        if (battle_enemy_name == "craniex")
            message[0] = "* It seems talking to Craniex#  makes him more friendly towards#  you.";
    }
    else if (game_mode == "yellow")
    {
        if (battle_enemy_name == "crispy scroll solo")
        {
            if (action_1_selected_count >= 2)
                message[0] = "* You have made Crispy Scroll's#  day.";
            else if (action_1_selected_count == 1)
                message[0] = "* Crispy Scroll can't believe#  that just happened.";
        }
        else if (battle_enemy_name == "crispy scroll penilla duo")
        {
            if (action_1_selected_count >= 2)
                message[0] = "* You have made Crispy Scroll's#  day.";
            else if (action_1_selected_count == 1)
                message[0] = "* Crispy Scroll can't believe#  that just happened.";
        }
        else if (battle_enemy_name == "trihecta together")
        {
            if (action_1_selected_count >= 1)
                message[0] = "* Trihecta begins to sway back#  and forth.";
            else
                message[0] = "* Trihecta balances out.";
        }
    }
}
