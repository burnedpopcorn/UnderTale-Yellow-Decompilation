function scr_battle_core_directory_flavor_text_enemy_1_default_5()
{
    var battle_enemy_name, enemy_mode, game_mode;
    
    battle_enemy_name = global.battle_enemy_name;
    enemy_mode = global.enemy_mode;
    game_mode = global.game_mode;
    
    if (game_mode == "customs")
    {
    }
    else if (game_mode == "yellow")
    {
        if (battle_enemy_name == "flier trio")
        {
            message[0] = "* Flier is telling the other#  monsters about his cool new#  ride.";
        }
        else if (battle_enemy_name == "penilla solo")
        {
            message[0] = "* Penilla seems busy drawing.";
        }
        else if (battle_enemy_name == "flier penilla duo")
        {
            message[0] = "* Penilla rolls her eyes.";
        }
        else if (battle_enemy_name == "sweet corn duo")
        {
            message[0] = "* The Sweet Corns hop to the#  rhythm.";
        }
        else if (battle_enemy_name == "sweet corn penilla duo")
        {
            message[0] = "* Sweet Corn jumps up and down in#  celebration.";
        }
        else if (battle_enemy_name == "crispy scroll solo")
        {
            message[0] = "* Crispy Scroll can't decide what#  genre to role play.";
        }
        else if (battle_enemy_name == "crispy scroll penilla duo")
        {
            message[0] = "* Crispy Scroll can't decide what#  genre to role play.";
        }
        else if (battle_enemy_name == "micro froggit")
        {
            message[0] = "* Micro Froggit ran away. Wait.#  Nope, there it is.";
        }
        else if (battle_enemy_name == "dalv")
        {
            message[0] = "* Electricity crackles and#  whirrs around you.";
        }
        else if (battle_enemy_name == "insomnitot duo")
        {
            message[0] = "* One Insomnitot starts to drift#  off but the other pokes its#  friend awake again.";
        }
        else if (battle_enemy_name == "know cone solo")
        {
            message[0] = "* Know Cone takes a break from#  hunting for fire to gather some#  berries.";
        }
        else if (battle_enemy_name == "know cone insomnitot duo")
        {
            message[0] = "* Know Cone takes a break from#  hunting for fire to gather some#  berries.";
        }
        else if (battle_enemy_name == "frostermit solo")
        {
            switch (enemy_mode)
            {
                case 0:
                    message[0] = "* Frostermit is considering a#  renovation.";
                    break;
                
                case 1:
                    message[0] = "* Frostermit is considering a#  renovation.";
                    break;
            }
        }
        else if (battle_enemy_name == "frostermit know cone duo")
        {
            switch (enemy_mode)
            {
                case 0:
                    message[0] = "* Frostermit is considering a#  renovation.";
                    break;
                
                case 1:
                    message[0] = "* Frostermit is considering a#  renovation.";
                    break;
            }
        }
        else if (battle_enemy_name == "martlet pacifist")
        {
            message[0] = "* Martlet catches herself getting#  lost in the music.";
        }
        else if (battle_enemy_name == "martlet genocide")
        {
            switch (enemy_mode)
            {
                case 3:
                    message[0] = "* Martlet prepares her next#  attack.";
                    break;
            }
        }
        else if (battle_enemy_name == "cactony slither duo")
        {
            message[0] = "* Sir Slither is trying to#  butter Cactony up.";
        }
        else if (battle_enemy_name == "el bailador")
        {
            if (global.route == 3)
                message[0] = "* ...";
            else
                message[0] = "* All the flashing lights make#  you dizzy.";
        }
        else if (battle_enemy_name == "jandroid goosic duo")
        {
            message[0] = "* Goosic's music is making#  Jandroid extra energetic.";
        }
        else if (battle_enemy_name == "jandroid duo")
        {
            message[0] = "* The Jandroid's are trying to#  harmonize.";
        }
        else if (battle_enemy_name == "ceroba genocide")
        {
            message[0] = "* The fight rages.";
        }
        else if (battle_enemy_name == "starlo")
        {
            if (global.attack_cycle < 10)
                message[0] = "* Starlo's lasso grips you#  tightly.";
            else
                message[0] = "* Starlo tries to tape his lasso#  back but can't find the end of#  the tape on his roll.";
        }
        else if (battle_enemy_name == "slither solo")
        {
            message[0] = "* Sir Slither is going through a#  divorce.";
        }
        else if (battle_enemy_name == "tellyvis")
        {
            message[0] = "* Telly starts to sing an anime#  opening. Vis begs her to stop.";
        }
        else if (battle_enemy_name == "goosic")
        {
            message[0] = "* Goosic does a little two-step#  like it's nothing.";
        }
        else if (battle_enemy_name == "sousborg")
        {
            message[0] = "* Sousborg preheats his next#  attack.";
        }
        else if (battle_enemy_name == "axis")
        {
            message[0] = "* Axis seems on edge.";
        }
        else if (battle_enemy_name == "axis genocide")
        {
            message[0] = "* Finish what you started.";
        }
        else if (battle_enemy_name == "macro froggit")
        {
            message[0] = "* Macro Froggit reigns!";
        }
        else if (battle_enemy_name == "guardener")
        {
            if (global.enemy_mode == 0)
                message[0] = "* Smells like lawnmower#  clippings.";
            else if (global.enemy_mode >= 1)
                message[0] = "* You're starting to think you've#  had your fill of plants.";
        }
        else if (battle_enemy_name == "flowey")
        {
            message[0] = "* missing.";
        }
        else if (battle_enemy_name == "ceroba")
        {
            switch (global.hotland_flag[2])
            {
                case 0:
                    message[0] = "* The battle continues.";
                    break;
                
                case 1:
                    message[0] = "* Mayhem has been unleashed.";
                    break;
                
                case 2:
                    message[0] = "* A crack has formed on Ceroba's#  mask.";
                    break;
                
                case 3:
                    message[0] = "* A desperate chaos unfolds all#  around you.";
                    break;
            }
        }
        else if (battle_enemy_name == "martlet genocide final")
        {
            message[0] = "* The enemy grows weaker.";
            
            if (global.hotland_flag[9] >= 2)
                message[0] = "* Righteousness.";
        }
    }
}
