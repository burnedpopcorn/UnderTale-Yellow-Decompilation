function scr_battle_core_directory_flavor_text_enemy_1_low_hp_1()
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
        if (battle_enemy_name == "flier solo")
        {
            message[0] = "* Flier is reconsidering his life#  choices.";
        }
        else if (battle_enemy_name == "flier trio")
        {
            message[0] = "* Flier is reconsidering his life#  choices.";
        }
        else if (battle_enemy_name == "penilla solo")
        {
            message[0] = "* Penilla looks like she might#  crack under the pressure.";
        }
        else if (battle_enemy_name == "flier penilla duo")
        {
            message[0] = "* Flier is reconsidering his life#  choices.";
        }
        else if (battle_enemy_name == "sweet corn solo")
        {
            message[0] = "* Sweet Corn's smile looks forced.";
        }
        else if (battle_enemy_name == "sweet corn duo")
        {
            message[0] = "* Sweet Corn's smile looks forced.";
        }
        else if (battle_enemy_name == "sweet corn penilla duo")
        {
            message[0] = "* Sweet Corn's smile looks forced.";
        }
        else if (battle_enemy_name == "crispy scroll solo")
        {
            message[0] = "* Crispy Scroll is relying on his#  self-imposed plot armor.";
        }
        else if (battle_enemy_name == "crispy scroll penilla duo")
        {
            message[0] = "* Crispy Scroll is relying on his#  self-imposed plot armor.";
        }
        else if (battle_enemy_name == "rorrim solo")
        {
            message[0] = "* Your reflection is skewed.";
        }
        else if (battle_enemy_name == "insomnitot solo")
        {
            message[0] = "* Insomnitot is hoping it'll feel#  better in the morning.";
        }
        else if (battle_enemy_name == "insomnitot duo")
        {
            message[0] = "* Insomnitot is hoping it'll feel#  better in the morning.";
        }
        else if (battle_enemy_name == "know cone solo")
        {
            message[0] = "* Know Cone is quite enraged.";
        }
        else if (battle_enemy_name == "know cone insomnitot duo")
        {
            message[0] = "* Know Cone is quite enraged.";
        }
        else if (battle_enemy_name == "frostermit solo")
        {
            switch (enemy_mode)
            {
                case 0:
                    message[0] = "* The igloo does not appear to be#  structurally sound anymore.";
                    break;
                
                case 1:
                    message[0] = "* Frostermit is looking a bit#  crabby with you.";
                    break;
            }
        }
        else if (battle_enemy_name == "frostermit know cone duo")
        {
            switch (enemy_mode)
            {
                case 0:
                    message[0] = "* The igloo does not appear to be#  structurally sound anymore.";
                    break;
                
                case 1:
                    message[0] = "* Frostermit is looking a bit#  crabby with you.";
                    break;
            }
        }
        else if (battle_enemy_name == "trihecta together")
        {
            message[0] = "* Trihecta is teetering this way#  and that.";
        }
        else if (battle_enemy_name == "trihecta separated")
        {
            message[0] = "* They're scrambling frantically.";
        }
        else if (battle_enemy_name == "dunebud solo" || battle_enemy_name == "dunebud duo")
        {
            message[0] = "* Dunebud is dazed.";
        }
        else if (battle_enemy_name == "cactony solo" || battle_enemy_name == "cactony slither duo")
        {
            message[0] = "* Cactony is swaying back and#  forth.";
        }
        else if (battle_enemy_name == "slither solo")
        {
            message[0] = "* Sir Slither tries to keep#  whatever's in his pot from#  spilling.";
        }
        else if (battle_enemy_name == "bowll solo")
        {
            message[0] = "* A few new ravines have surfaced.";
        }
        else if (battle_enemy_name == "flower girls")
        {
            switch (global.dunes_flag[31])
            {
                case 1:
                    message[0] = "* Violetta tries not to cry.";
                    break;
                
                case 2:
                    message[0] = "* Pedla tries to stay positive.";
                    break;
                
                case 3:
                    message[0] = "* Rosa tries to stay strong.";
                    break;
            }
        }
        else if (battle_enemy_name == "tellyvis")
        {
            message[0] = "* Telly is frantically flipping#  channels.";
        }
        else if (battle_enemy_name == "jandroid" || battle_enemy_name == "jandroid duo" || battle_enemy_name == "jandroid goosic duo")
        {
            message[0] = "* Jandroid doesn't seem to know#  what they're doing anymore.";
        }
        else if (battle_enemy_name == "goosic")
        {
            message[0] = "* Goosic struggles to keep#  dancing.";
        }
        else if (battle_enemy_name == "sousborg")
        {
            message[0] = "* Sousborg pours onion powder on#  his wounds.";
        }
    }
}
