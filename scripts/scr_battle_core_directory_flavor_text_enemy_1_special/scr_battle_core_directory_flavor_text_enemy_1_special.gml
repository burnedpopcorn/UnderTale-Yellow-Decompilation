function scr_battle_core_directory_flavor_text_enemy_1_special()
{
    var battle_enemy_name = global.battle_enemy_name;
    var game_mode = global.game_mode;
    
    if (game_mode == "customs")
    {
        if (battle_enemy_name == "ms mettaton")
            message[0] = "* It seems that Ms. Mettaton is#  getting bored of you.";
    }
    else if (game_mode == "yellow")
    {
        if (battle_enemy_name == "sweet corn solo")
        {
            message[0] = "* Sweet Corn jumps up and down in#  celebration.";
        }
        else if (battle_enemy_name == "sweet corn duo")
        {
            message[0] = "* Sweet Corn jumps up and down in#  celebration.";
        }
        else if (battle_enemy_name == "decibat")
        {
            if ((global.action_1_selected_count + global.action_3_selected_count) == 5)
                message[0] = "* Decibat is shaking with anger.";
            else if ((global.action_1_selected_count + global.action_3_selected_count) == 4)
                message[0] = "* Decibat grinds his teeth#  angrily and flinches at the#  ruckus he caused.";
            else if ((global.action_1_selected_count + global.action_3_selected_count) == 3)
                message[0] = "* Decibat can't hear himself#  think.";
            else if ((global.action_1_selected_count + global.action_3_selected_count) == 2)
                message[0] = "* Decibat is losing his patience#  with you.";
            else if ((global.action_1_selected_count + global.action_3_selected_count) == 1)
                message[0] = "* Decibat twitches his large ears.";
            else if (global.action_2_selected_count == 4)
                message[0] = "* Decibat is being lulled to#  sleep.";
            else if (global.action_2_selected_count == 3)
                message[0] = "* Decibat is enjoying the silence.";
            else if (global.action_2_selected_count == 2)
                message[0] = "* Decibat gives you a nod of#  approval.";
            else if (global.action_2_selected_count == 1)
                message[0] = "* Decibat looks slightly more at#  ease.";
        }
        else if (battle_enemy_name == "dalv")
        {
            message[0] = "* Dalv looks unsure of what to do.";
        }
        else if (battle_enemy_name == "micro froggit")
        {
            message[0] = "* Micro Froggit is shocked you#  managed to land a hit.";
        }
        else if (battle_enemy_name == "frostermit know cone duo")
        {
            message[0] = "* Know Cone knew someone was#  there!";
        }
        else if (battle_enemy_name == "martlet pacifist")
        {
            message[0] = "* A couple feathers litter the#  ground.";
        }
        else if (battle_enemy_name == "goosic")
        {
            message[0] = "* Goosic is liking the new tune.";
        }
        else if (battle_enemy_name == "axis")
        {
            message[0] = "* Axis is staring at you blankly#  until you do something.";
        }
    }
}
