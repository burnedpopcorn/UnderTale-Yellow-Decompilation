function scr_battle_core_directory_flavor_text_enemy_1_default_4()
{
    var battle_enemy_name = global.battle_enemy_name;
    var enemy_mode = global.enemy_mode;
    var game_mode = global.game_mode;
    
    if (game_mode == "customs")
    {
        if (battle_enemy_name == "craniex")
            message[0] = "* So much information overload!";
        else if (battle_enemy_name == "ms mettaton")
            message[0] = "* You know what I'm saying?!";
    }
    else if (game_mode == "yellow")
    {
        if (battle_enemy_name == "flier solo")
        {
            message[0] = "* Flier is caught up in old#  memories.";
        }
        else if (battle_enemy_name == "flier trio")
        {
            message[0] = "* Flier is caught up in old#  memories.";
        }
        else if (battle_enemy_name == "penilla solo")
        {
            message[0] = "* Penilla signs her sketch and#  starts a new one.";
        }
        else if (battle_enemy_name == "flier penilla duo")
        {
            message[0] = "* Flier is caught up in old#  memories.";
        }
        else if (battle_enemy_name == "sweet corn duo")
        {
            message[0] = "* Your ears are ringing from the#  chatter.";
        }
        else if (battle_enemy_name == "sweet corn penilla duo")
        {
            message[0] = "* Sweet Corn makes her signature#  squeaky toy noise.";
        }
        else if (battle_enemy_name == "crispy scroll solo")
        {
            message[0] = "* Crispy Scroll is talking in#  circles.";
        }
        else if (battle_enemy_name == "crispy scroll penilla duo")
        {
            message[0] = "* Crispy Scroll is talking in#  circles.";
        }
        else if (battle_enemy_name == "rorrim solo")
        {
            message[0] = "* Rorrim is looking around.";
        }
        else if (battle_enemy_name == "dalv")
        {
            message[0] = "* Dalv seems to be in conflict#  with his more humane side.";
        }
        else if (battle_enemy_name == "micro froggit")
        {
            message[0] = "* If you squint, Micro Froggit#  looks happy.";
        }
        else if (battle_enemy_name == "insomnitot solo")
        {
            message[0] = "* Insomnitot is trying to shake#  the sleepiness away.";
        }
        else if (battle_enemy_name == "insomnitot duo")
        {
            message[0] = "* Insomnitot is trying to shake#  the sleepiness away.";
        }
        else if (battle_enemy_name == "know cone solo")
        {
            message[0] = "* Know Cone is banging a rock#  against a fallen branch.#* The branch breaks.";
        }
        else if (battle_enemy_name == "know cone insomnitot duo")
        {
            message[0] = "* Know Cone is banging a rock#  against a fallen branch.#* The branch breaks.";
        }
        else if (battle_enemy_name == "frostermit solo")
        {
            switch (enemy_mode)
            {
                case 0:
                    message[0] = "* Something smells fishy.";
                    break;
                
                case 1:
                    message[0] = "* Frostermit is doing a#  crusta-shuffle.";
                    break;
            }
        }
        else if (battle_enemy_name == "frostermit know cone duo")
        {
            switch (enemy_mode)
            {
                case 0:
                    message[0] = "* Something smells fishy.";
                    break;
                
                case 1:
                    message[0] = "* Frostermit is doing a#  crusta-shuffle.";
                    break;
            }
        }
        else if (battle_enemy_name == "trihecta together")
        {
            message[0] = "* Trihecta is considering#  purchasing a long trench coat.";
        }
        else if (battle_enemy_name == "martlet pacifist")
        {
            message[0] = "* Martlet is trying to strike a#  pose that looks professional#  and imposing.";
        }
        else if (battle_enemy_name == "martlet genocide")
        {
            switch (enemy_mode)
            {
                case 3:
                    message[0] = "* Martlet is holding back tears.";
                    break;
            }
        }
        else if (battle_enemy_name == "dunebud solo" || battle_enemy_name == "dunebud duo")
        {
            message[0] = "* Smells like sandpaper.";
        }
        else if (battle_enemy_name == "cactony solo" || battle_enemy_name == "cactony slither duo")
        {
            message[0] = "* Cactony gives you an empty look.";
        }
        else if (battle_enemy_name == "slither solo")
        {
            message[0] = "* You hear some jingling as Sir#  Slither rattles inside his pot.#  ";
        }
        else if (battle_enemy_name == "bowll solo")
        {
            message[0] = "* Sounds like a hundred toasts.";
        }
        else if (battle_enemy_name == "el bailador")
        {
            if (global.route == 3)
                message[0] = "* The enemy glances around#  awkwardly.";
            else
                message[0] = "* El Bailador flexes his huge#  muscles!";
        }
        else if (battle_enemy_name == "flower girls")
        {
            switch (global.dunes_flag[31])
            {
                case 1:
                    message[0] = "* Violetta takes her time.";
                    break;
                
                case 2:
                    message[0] = "* Pedla starts humming a song#  you recognize.";
                    break;
                
                case 3:
                    message[0] = "* Rosa sways back and forth#  cheerfully.";
                    break;
            }
        }
        else if (battle_enemy_name == "ceroba genocide")
        {
            message[0] = "* She stares into your SOUL.";
        }
        else if (battle_enemy_name == "starlo")
        {
            if (global.attack_cycle < 10)
                message[0] = "* A tumbleweed rolls by. It says#  hello.";
            else
                message[0] = "* A tension in the air grows.";
        }
        else if (battle_enemy_name == "tellyvis")
        {
            message[0] = "* The sound of TV static fills#  your head.";
        }
        else if (battle_enemy_name == "jandroid" || battle_enemy_name == "jandroid duo" || battle_enemy_name == "jandroid goosic duo")
        {
            message[0] = "* Jandroid tosses garbage this#  way and that.";
        }
        else if (battle_enemy_name == "goosic")
        {
            message[0] = "* Your eardrums do not appreciate#  the current situation.";
        }
        else if (battle_enemy_name == "sousborg")
        {
            message[0] = "* Smells like... food? Nice!";
        }
        else if (battle_enemy_name == "axis")
        {
            message[0] = "* Smells like an unfortunate BBQ.";
        }
        else if (battle_enemy_name == "axis genocide")
        {
            message[0] = "* One is all it will take. Keep#  going.";
        }
        else if (battle_enemy_name == "macro froggit")
        {
            message[0] = "* Macro Froggit stomps around,#  shaking the whole room.";
        }
        else if (battle_enemy_name == "guardener")
        {
            if (global.enemy_mode == 0)
                message[0] = "* Guardener looks down upon you,#  twitching slightly.";
            else if (global.enemy_mode >= 1)
                message[0] = "* Guardener twitches at an#  alarming rate. This can't be#  good for her.";
        }
        else if (battle_enemy_name == "flowey")
        {
            message[0] = "* FILE 01 - [REDACTED]";
        }
        else if (battle_enemy_name == "ceroba")
        {
            switch (global.hotland_flag[2])
            {
                case 0:
                    message[0] = "* Ceroba stares into your SOUL#  with regret.";
                    break;
                
                case 1:
                case 2:
                case 3:
                    message[0] = "* Your SOUL pulses with great#  power.";
                    break;
            }
        }
        else if (battle_enemy_name == "martlet genocide final")
        {
            message[0] = "* The enemy's defense can be#  destroyed.";
            
            if (global.hotland_flag[9] >= 2)
                message[0] = "* Freedom.";
        }
    }
}
