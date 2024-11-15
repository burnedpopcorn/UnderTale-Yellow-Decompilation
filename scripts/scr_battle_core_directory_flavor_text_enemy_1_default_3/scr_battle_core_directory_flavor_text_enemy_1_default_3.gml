function scr_battle_core_directory_flavor_text_enemy_1_default_3()
{
    var battle_enemy_name, enemy_mode, game_mode;
    
    battle_enemy_name = global.battle_enemy_name;
    enemy_mode = global.enemy_mode;
    game_mode = global.game_mode;
    
    if (game_mode == "customs")
    {
        if (battle_enemy_name == "craniex")
            message[0] = "* You are nervous about the next#  midterm.";
        
        if (battle_enemy_name == "ms mettaton")
            message[0] = "* Glitz and glamour.";
    }
    else if (game_mode == "yellow")
    {
        if (battle_enemy_name == "flier solo")
        {
            message[0] = "* Flier doesn't think the#  position of \"enemy\" fits him.";
        }
        else if (battle_enemy_name == "flier trio")
        {
            message[0] = "* Flier doesn't think the#  position of \"enemy\" fits him.";
        }
        else if (battle_enemy_name == "penilla solo")
        {
            message[0] = "* The battlefield is covered in#  eraser shavings.";
        }
        else if (battle_enemy_name == "flier penilla duo")
        {
            message[0] = "* Flier doesn't think the#  position of \"enemy\" fits him.";
        }
        else if (battle_enemy_name == "sweet corn solo")
        {
            message[0] = "* Sweet Corn tries to encourage#  you to smile.";
        }
        else if (battle_enemy_name == "sweet corn duo")
        {
            message[0] = "* Sweet Corn tries to encourage#  you to smile.";
        }
        else if (battle_enemy_name == "sweet corn penilla duo")
        {
            message[0] = "* Sweet Corn tries to encourage#  you to smile.";
        }
        else if (battle_enemy_name == "crispy scroll solo")
        {
            message[0] = "* Crispy Scroll is trying to be#  cute.";
        }
        else if (battle_enemy_name == "crispy scroll penilla duo")
        {
            message[0] = "* Crispy Scroll is trying to be#  cute.";
        }
        else if (battle_enemy_name == "rorrim solo")
        {
            message[0] = "* Rorrim mimics your movements.";
        }
        else if (battle_enemy_name == "dalv")
        {
            message[0] = "* Dalv assumes an intimidating#  facade.";
        }
        else if (battle_enemy_name == "micro froggit")
        {
            message[0] = "* You momentarily lose track of#  Micro Froggit.";
        }
        else if (battle_enemy_name == "insomnitot solo")
        {
            message[0] = "* Insomnitot catches itself#  nodding off.";
        }
        else if (battle_enemy_name == "insomnitot duo")
        {
            message[0] = "* Insomnitot catches itself#  nodding off.";
        }
        else if (battle_enemy_name == "know cone solo")
        {
            message[0] = "* Know Cone is yelling random#  noises that sound like they#  could be a made-up language.";
        }
        else if (battle_enemy_name == "know cone insomnitot duo")
        {
            message[0] = "* Know Cone is yelling random#  noises that sound like they#  could be a made-up language.";
        }
        else if (battle_enemy_name == "frostermit solo")
        {
            switch (enemy_mode)
            {
                case 0:
                    message[0] = "* There is an igloo here.";
                    break;
                
                case 1:
                    message[0] = "* Frostermit is tapping out a#  rhythm with his pincers.";
                    break;
            }
        }
        else if (battle_enemy_name == "frostermit know cone duo")
        {
            switch (enemy_mode)
            {
                case 0:
                    message[0] = "* There is an igloo here.";
                    break;
                
                case 1:
                    message[0] = "* Frostermit is tapping out a#  rhythm with his pincers.";
                    break;
            }
        }
        else if (battle_enemy_name == "trihecta together")
        {
            message[0] = "* A gust of wind threatens to#  topple Trihecta's pile.";
        }
        else if (battle_enemy_name == "trihecta separated")
        {
            message[0] = "* Tri, Hec, and Ta are friendly#  and free.";
        }
        else if (battle_enemy_name == "martlet pacifist")
        {
            message[0] = "* A gust of wind blows a little#  blue feather in your face.#* Martlet looks embarrassed.";
        }
        else if (battle_enemy_name == "martlet genocide")
        {
            switch (enemy_mode)
            {
                case 3:
                    message[0] = "* Martlet is nursing her wounds.";
                    break;
                
                default:
                    message[0] = "* The sound of the chilled wind#  surrounds you.";
            }
        }
        else if (battle_enemy_name == "dunebud solo" || battle_enemy_name == "dunebud duo")
        {
            message[0] = "* Dunebud begins to gargle a song.";
        }
        else if (battle_enemy_name == "cactony solo" || battle_enemy_name == "cactony slither duo")
        {
            message[0] = "* Cactony tries to gather some#  needles he dropped.";
        }
        else if (battle_enemy_name == "slither solo")
        {
            message[0] = "* Sir Slither looks you up and#  down.";
        }
        else if (battle_enemy_name == "bowll solo")
        {
            message[0] = "* Huffs and puffs and other#  stuffs.";
        }
        else if (battle_enemy_name == "el bailador")
        {
            if (global.route == 3)
                message[0] = "* Get this over with.";
            else
                message[0] = "* Smells like disco.";
        }
        else if (battle_enemy_name == "flower girls")
        {
            switch (global.dunes_flag[31])
            {
                case 1:
                    message[0] = "* Violetta nervously shuffles#  her feet.";
                    break;
                
                case 2:
                    message[0] = "* Pedla wants you to know that#  you are loved!";
                    break;
                
                case 3:
                    message[0] = "* Rosa bursts into laughter but#  you have no idea why.";
                    break;
            }
        }
        else if (battle_enemy_name == "dummy training pacifist")
        {
            message[0] = "* Smells like lead and burlap.";
        }
        else if (battle_enemy_name == "ceroba genocide")
        {
            message[0] = "* The sand swirls around you.";
        }
        else if (battle_enemy_name == "starlo")
        {
            if (global.attack_cycle < 10)
                message[0] = "* Smells like leather boots and#  dashing looks.";
            else
                message[0] = "* Smells like leather boots and#  broken dreams.";
        }
        else if (battle_enemy_name == "tellyvis")
        {
            message[0] = "* Vis reminds Telly what time his#  favorite show airs but she only#  makes fun of him.";
        }
        else if (battle_enemy_name == "jandroid" || battle_enemy_name == "jandroid duo" || battle_enemy_name == "jandroid goosic duo")
        {
            message[0] = "* Smells like poor choices.";
        }
        else if (battle_enemy_name == "goosic")
        {
            message[0] = "* Goosic blasts battle music from#  its beak.";
        }
        else if (battle_enemy_name == "sousborg")
        {
            message[0] = "* Sousborg cooks you some#  spaghetti! ...without water.";
        }
        else if (battle_enemy_name == "axis")
        {
            message[0] = "* You feel the furnace's heat#  waves engulf you.";
        }
        else if (battle_enemy_name == "axis genocide")
        {
            message[0] = "* Outlast his efforts.";
        }
        else if (battle_enemy_name == "macro froggit")
        {
            message[0] = "* Ribbit???";
        }
        else if (battle_enemy_name == "guardener")
        {
            if (global.enemy_mode == 0)
                message[0] = "* A great hostility is#  blossoming!";
            else if (global.enemy_mode >= 1)
                message[0] = "* Vines weave in and out of the#  ground all around you.";
        }
        else if (battle_enemy_name == "flowey")
        {
            message[0] = "* r3537 7ry 4641n r3537 7ry 4641n#  r3537 7ry 4641n r3537 7ry 4641n#  r3537";
        }
        else if (battle_enemy_name == "ceroba")
        {
            switch (global.hotland_flag[2])
            {
                case 0:
                    message[0] = "* A chilling breeze envelops the#  area.";
                    break;
                
                case 1:
                    message[0] = "* Ceroba gazes down upon the#  Underground.";
                    break;
                
                case 2:
                    message[0] = "* You prepare yourself for#  whatever comes next.";
                    break;
                
                case 3:
                    message[0] = "* Ceroba's emotions wane, but#  she stays resolute.";
                    break;
            }
        }
        else if (battle_enemy_name == "martlet genocide final")
        {
            message[0] = "* The enemy prepares to attack.";
            
            if (global.hotland_flag[9] >= 2)
                message[0] = "* Home.";
        }
    }
}
