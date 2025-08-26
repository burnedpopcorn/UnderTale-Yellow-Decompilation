function scr_battle_core_directory_flavor_text_enemy_1_default_6()
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
            message[0] = "* Two of the Fliers are thinking#  about getting girlfriends.";
        }
        else if (battle_enemy_name == "crispy scroll penilla duo")
        {
            message[0] = "* Crispy Scroll is talking#  Penilla's ears off.";
        }
        else if (battle_enemy_name == "micro froggit")
        {
            message[0] = "* Micro Froggit is trying to make#  itself look bigger.";
        }
        else if (battle_enemy_name == "dalv")
        {
            message[0] = "* Echoes of conflict ring#  throughout Dalv's desolate#  estate.";
        }
        else if (battle_enemy_name == "insomnitot duo")
        {
            message[0] = "* The Insomnitots brag to each#  other about how long they've#  been awake.";
        }
        else if (battle_enemy_name == "know cone insomnitot duo")
        {
            message[0] = "* Know Cone is chasing Insomintot's sheep.";
        }
        else if (battle_enemy_name == "frostermit know cone duo")
        {
            switch (enemy_mode)
            {
                case 0:
                    message[0] = "* Know Cone punches the igloo to#  test its durability.";
                    break;
                
                case 1:
                    message[0] = "* Frostermit is contemplating a return into his fortress.";
                    break;
            }
        }
        else if (battle_enemy_name == "martlet pacifist")
        {
            message[0] = "* Martlet is nervously consulting#  her Royal Guard guide book.";
        }
        else if (battle_enemy_name == "cactony slither duo")
        {
            message[0] = "* You're unsure if this#  situation is healthy. For#  anyone.";
        }
        else if (battle_enemy_name == "el bailador")
        {
            message[0] = "* El Bailador throws sand in the#  air like confetti.";
        }
        else if (battle_enemy_name == "starlo")
        {
            if (global.attack_cycle < 10)
                message[0] = "* You hear nothing but gunshots,#  whip cracks, and a mighty#  acoustic guitar.";
            else
                message[0] = "* You begin to sweat under the#  immense heat.";
        }
        else if (battle_enemy_name == "tellyvis")
        {
            message[0] = "* You wonder where the mute#  button is.";
        }
        else if (battle_enemy_name == "axis")
        {
            message[0] = "* Axis is flipping through the#  Royal Guard guide book... in his#  mind.";
        }
        else if (battle_enemy_name == "axis genocide")
        {
            message[0] = "* They are responsible.";
        }
        else if (battle_enemy_name == "macro froggit")
        {
            message[0] = "* Macro Froggit towers above#  all.";
        }
        else if (battle_enemy_name == "jandroid duo")
        {
            message[0] = "* The Jandroid's are mopping#  each other's faces.";
        }
        else if (battle_enemy_name == "jandroid goosic duo")
        {
            message[0] = "* Goosic amps up the tunes as#  Jandroid lays down their mop!";
        }
        else if (battle_enemy_name == "sousborg")
        {
            message[0] = "* Sousborg preheats his next#  attack.";
        }
        else if (battle_enemy_name == "guardener")
        {
            if (global.enemy_mode == 0)
                message[0] = "* Guardener slams her arms into#  the floor in agitation.";
            else if (global.enemy_mode >= 1)
                message[0] = "* Guardener gives it all she's#  got!";
        }
        else if (battle_enemy_name == "flowey")
        {
            message[0] = "* howdy! i'm flowey! flowey the#  flower! hmmm you look confused!#  toriel ought have taught you h";
        }
        else if (battle_enemy_name == "ceroba")
        {
            message[0] = "* Ceroba's focus grows stronger.";
        }
        else if (battle_enemy_name == "martlet genocide final")
        {
            message[0] = "* The enemy can't last forever.";
            
            if (global.hotland_flag[9] >= 2)
                message[0] = "* Finality.";
        }
    }
}
