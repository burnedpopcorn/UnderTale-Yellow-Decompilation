function scr_battle_core_directory_flavor_text_enemy_1_sparing_1()
{
    var battle_enemy_name, enemy_mode, game_mode;
    
    battle_enemy_name = global.battle_enemy_name;
    enemy_mode = global.enemy_mode;
    game_mode = global.game_mode;
    
    if (game_mode == "customs")
    {
        if (battle_enemy_name == "craniex")
            message[0] = "* Craniex is sparing you.";
        else if (battle_enemy_name == "ms mettaton")
            message[0] = "* Ms. Mettaton is totally sparing you!";
    }
    else if (game_mode == "yellow")
    {
        if (battle_enemy_name == "flier solo")
        {
            message[0] = "* Flier is ready to return to his#  regular life.";
        }
        else if (battle_enemy_name == "flier trio")
        {
            message[0] = "* Flier is ready to return to his#  regular life.";
        }
        else if (battle_enemy_name == "penilla solo")
        {
            message[0] = "* Penilla is packing up her art#  supplies for the day.";
        }
        else if (battle_enemy_name == "flier penilla duo")
        {
            message[0] = "* Flier is ready to return to his#  regular life.";
        }
        else if (battle_enemy_name == "sweet corn solo")
        {
            message[0] = "* Sweet Corn is smiling#  contentedly.";
        }
        else if (battle_enemy_name == "sweet corn duo")
        {
            message[0] = "* Sweet Corn is smiling#  contentedly.";
        }
        else if (battle_enemy_name == "sweet corn penilla duo")
        {
            message[0] = "* Sweet Corn is smiling#  contentedly.";
        }
        else if (battle_enemy_name == "crispy scroll solo")
        {
            message[0] = "* Crispy Mode 2k!!";
        }
        else if (battle_enemy_name == "crispy scroll penilla duo")
        {
            message[0] = "* Crispy Mode 2k!!";
        }
        else if (battle_enemy_name == "rorrim solo")
        {
            message[0] = "* Rorrim is looking for his next#  big project.";
        }
        else if (battle_enemy_name == "decibat")
        {
            message[0] = "* Decibat is ready to return to#  sleep.";
        }
        else if (battle_enemy_name == "dalv")
        {
            switch (enemy_mode)
            {
                case 2:
                    message[0] = "* Dalv has lost all hope.";
                    break;
                
                default:
                    message[0] = "* Dalv looks unsure of what to do.";
            }
        }
        else if (battle_enemy_name == "micro froggit")
        {
            message[0] = "* Micro Froggit is waving goodbye.";
        }
        else if (battle_enemy_name == "insomnitot solo")
        {
            message[0] = "* Insomnitot is smiling at its#  dream.";
        }
        else if (battle_enemy_name == "insomnitot duo")
        {
            message[0] = "* Insomnitot is smiling at its#  dream.";
        }
        else if (battle_enemy_name == "know cone solo")
        {
            message[0] = "* Know Cone has been enlightened.";
        }
        else if (battle_enemy_name == "know cone insomnitot duo")
        {
            message[0] = "* Know Cone has been enlightened.";
        }
        else if (battle_enemy_name == "frostermit solo")
        {
            switch (enemy_mode)
            {
                case 0:
                    message[0] = "* Frostermit is ready to scuttle#  on its way.";
                    break;
                
                case 1:
                    message[0] = "* Frostermit is ready to scuttle#  on its way.";
                    break;
            }
        }
        else if (battle_enemy_name == "frostermit know cone duo")
        {
            switch (enemy_mode)
            {
                case 0:
                    message[0] = "* Frostermit is ready to scuttle#  on its way.";
                    break;
                
                case 1:
                    message[0] = "* Frostermit is ready to scuttle#  on its way.";
                    break;
            }
        }
        else if (battle_enemy_name == "dunebud solo" || battle_enemy_name == "dunebud duo")
        {
            message[0] = "* Dunebud is giggling.";
        }
        else if (battle_enemy_name == "slither solo")
        {
            message[0] = "* Sir Slither can't convince#  you.";
        }
        else if (battle_enemy_name == "cactony solo" || battle_enemy_name == "cactony slither duo")
        {
            message[0] = "* Cactony feels love for the#  first time.";
        }
        else if (battle_enemy_name == "bowll solo")
        {
            message[0] = "* Bowll is ready to discover his#  true self.";
        }
        else if (battle_enemy_name == "flower girls")
        {
            switch (global.dunes_flag[31])
            {
                case 1:
                    message[0] = "* Violetta blushes.";
                    break;
                
                case 2:
                    message[0] = "* Pedla lets out a warm smile.";
                    break;
                
                case 3:
                    message[0] = "* Rosa gives you a thumbs up.";
                    break;
            }
        }
        else if (battle_enemy_name == "starlo")
        {
            message[0] = "* Starlo's left hand is#  shaking.";
        }
        else if (battle_enemy_name == "tellyvis")
        {
            message[0] = "* Telly-Vis hope you enjoyed the#  program.";
        }
        else if (battle_enemy_name == "jandroid" || battle_enemy_name == "jandroid goosic duo" || battle_enemy_name == "jandroid duo")
        {
            message[0] = "* Jandroid finds you too#  hygienic.";
        }
        else if (battle_enemy_name == "goosic")
        {
            message[0] = "* Goosic is lost in the music.";
        }
        else if (battle_enemy_name == "sousborg")
        {
            message[0] = "* Sousborg bows to your culinary#  mastery!";
        }
        else if (battle_enemy_name == "axis")
        {
            message[0] = "* Axis has cooled off.";
        }
        else if (battle_enemy_name == "axis genocide")
        {
            message[0] = "* Axis has cooled off.";
        }
        else if (battle_enemy_name == "guardener")
        {
            message[0] = "* Guardener cools down as steam#  seeps from her arms.";
        }
    }
}
