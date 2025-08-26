function scr_battle_core_directory_flavor_text_enemy_1_default_7()
{
    var battle_enemy_name = global.battle_enemy_name;
    var enemy_mode = global.enemy_mode;
    var game_mode = global.game_mode;
    
    if (game_mode == "customs")
    {
    }
    else if (game_mode == "yellow")
    {
        if (battle_enemy_name == "flier trio")
        {
            message[0] = "* The Fliers start talking about#  politics.";
        }
        else if (battle_enemy_name == "crispy scroll penilla duo")
        {
            message[0] = "* Crispy Scroll attempts to speak another language.#* Penilla winces.";
        }
        else if (battle_enemy_name == "insomnitot duo")
        {
            message[0] = "* The Insomnitots have#  a conversation exclusively#  through yawns.";
        }
        else if (battle_enemy_name == "know cone insomnitot duo")
        {
            message[0] = "* Know Cone showcases his stick#  collection to Insomnitot.";
        }
        else if (battle_enemy_name == "frostermit know cone duo")
        {
            switch (enemy_mode)
            {
                case 0:
                    message[0] = "* Know Cone wonders if fire would help him.";
                    break;
                
                case 1:
                    message[0] = "* Know Cone wants to show Frostermit his favorite element.";
                    break;
            }
        }
        else if (battle_enemy_name == "cactony slither duo")
        {
            message[0] = "* Sir Slither compliments#  Cactony's bullet patterns.";
        }
        else if (battle_enemy_name == "el bailador")
        {
            message[0] = "* The sounds of a thousand#  trumpets echo around you.";
        }
        else if (battle_enemy_name == "jandroid goosic duo")
        {
            message[0] = "* Metallic mania fills the air!";
        }
        else if (battle_enemy_name == "jandroid duo")
        {
            message[0] = "* Smells like a landfill.";
        }
        else if (battle_enemy_name == "ceroba genocide")
        {
            message[0] = "* The atmosphere chills with#  ire.";
        }
        else if (battle_enemy_name == "starlo")
        {
            if (global.attack_cycle < 10)
                message[0] = "* A gust of sand momentarily#  blinds you.";
            else
                message[0] = "* You hear Starlo talking to#  himself under his breath.";
        }
        else if (battle_enemy_name == "axis")
        {
            message[0] = "* Axis is having trouble charging#  up his next attack.";
        }
        else if (battle_enemy_name == "axis genocide")
        {
            message[0] = "* A road ahead.";
        }
        else if (battle_enemy_name == "macro froggit")
        {
            message[0] = "* His greenness.";
        }
        else if (battle_enemy_name == "sousborg")
        {
            message[0] = "* Sousborg stares down a frozen#  TV dinner with great malice.";
        }
        else if (battle_enemy_name == "flowey")
        {
            message[0] = "* clover is giving fighting a try";
        }
        else if (battle_enemy_name == "ceroba")
        {
            message[0] = "* The echoes of Ceroba's magic#  ring out.";
        }
        else if (battle_enemy_name == "martlet genocide final")
        {
            message[0] = "* The enemy will know justice.";
            
            if (global.hotland_flag[9] >= 2)
                message[0] = "* Vindication.";
        }
    }
}
