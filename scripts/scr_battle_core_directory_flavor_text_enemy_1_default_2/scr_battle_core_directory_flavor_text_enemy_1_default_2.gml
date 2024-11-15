function scr_battle_core_directory_flavor_text_enemy_1_default_2()
{
    var battle_enemy_name, enemy_mode, game_mode;
    
    battle_enemy_name = global.battle_enemy_name;
    enemy_mode = global.enemy_mode;
    game_mode = global.game_mode;
    
    if (game_mode == "customs")
    {
        if (battle_enemy_name == "craniex")
            message[0] = "* When will this semester end?!";
        else if (battle_enemy_name == "ms mettaton")
            message[0] = "* Like, totally!";
    }
    else if (game_mode == "yellow")
    {
        if (battle_enemy_name == "flier solo")
        {
            message[0] = "* Flier uses hip slang like the#  kids.";
        }
        else if (battle_enemy_name == "flier trio")
        {
            message[0] = "* Flier uses hip slang like the#  kids.";
        }
        else if (battle_enemy_name == "penilla solo")
        {
            message[0] = "* Penilla scraps her drawing and#  starts over.";
        }
        else if (battle_enemy_name == "flier penilla duo")
        {
            message[0] = "* Flier uses hip slang like the#  kids.";
        }
        else if (battle_enemy_name == "sweet corn solo")
        {
            message[0] = "* It seems that Sweet Corn can't#  stop twitching.";
        }
        else if (battle_enemy_name == "sweet corn duo")
        {
            message[0] = "* It seems that Sweet Corn can't#  stop twitching.";
        }
        else if (battle_enemy_name == "sweet corn penilla duo")
        {
            message[0] = "* It seems that Sweet Corn can't#  stop twitching.";
        }
        else if (battle_enemy_name == "crispy scroll solo")
        {
            message[0] = "* Crispy Scroll makes an obscure#  reference.";
        }
        else if (battle_enemy_name == "crispy scroll penilla duo")
        {
            message[0] = "* Crispy Scroll makes an obscure#  reference.";
        }
        else if (battle_enemy_name == "rorrim solo")
        {
            message[0] = "* Rorrim reflects on his current#  circumstances.";
        }
        else if (battle_enemy_name == "decibat")
        {
            message[0] = "* Decibat is whispering something#  too quiet to hear.";
        }
        else if (battle_enemy_name == "dalv")
        {
            message[0] = "* Dalv takes a break to brush off#  his cloak.";
        }
        else if (battle_enemy_name == "micro froggit")
        {
            message[0] = "* You catch a faint whiff of#  mustard seed.";
        }
        else if (battle_enemy_name == "insomnitot solo")
        {
            message[0] = "* The smell of french fries wafts#  past you.";
        }
        else if (battle_enemy_name == "insomnitot duo")
        {
            message[0] = "* The smell of french fries wafts#  past you.";
        }
        else if (battle_enemy_name == "know cone solo")
        {
            message[0] = "* Know Cone starts doing a#  primitive dance.";
        }
        else if (battle_enemy_name == "know cone insomnitot duo")
        {
            message[0] = "* Know Cone starts doing a#  primitive dance.";
        }
        else if (battle_enemy_name == "frostermit solo")
        {
            switch (enemy_mode)
            {
                case 0:
                    message[0] = "* The igloo towers over you#  menacingly.#* Kidding. It's just an igloo.";
                    break;
                
                case 1:
                    message[0] = "* Frostermit is coming out of its#  shell a bit.";
                    break;
            }
        }
        else if (battle_enemy_name == "frostermit know cone duo")
        {
            switch (enemy_mode)
            {
                case 0:
                    message[0] = "* The igloo towers over you#  menacingly.#* Kidding. It's just an igloo.";
                    break;
                
                case 1:
                    message[0] = "* Frostermit is coming out of its#  shell a bit.";
                    break;
            }
        }
        else if (battle_enemy_name == "trihecta together")
        {
            message[0] = "* Trihecta seem to be pushing#  each other's buttons.";
        }
        else if (battle_enemy_name == "trihecta separated")
        {
            message[0] = "* Tri is fretting over the others'#  bumps and bruises.";
        }
        else if (battle_enemy_name == "martlet pacifist")
        {
            message[0] = "* Everything smells like#  bird-seed with a tasteful hint#  of vanilla and orange blossom.";
        }
        else if (battle_enemy_name == "martlet genocide")
        {
            switch (enemy_mode)
            {
                case 3:
                    message[0] = "* Martlet is searching for her#  guide book for first-aid#  procedures.";
                    break;
                
                case 4:
                    message[0] = "* Martlet is pacing.";
                    break;
                
                default:
                    message[0] = "* Martlet paranoidly glances#  around.";
            }
        }
        else if (battle_enemy_name == "dunebud solo" || battle_enemy_name == "dunebud duo")
        {
            message[0] = "* Dunebud is getting antsy.";
        }
        else if (battle_enemy_name == "cactony solo" || battle_enemy_name == "cactony slither duo")
        {
            message[0] = "* Cactony stares into your soul.";
        }
        else if (battle_enemy_name == "slither solo")
        {
            message[0] = "* Sir Slither lost access to his#  bank account. He wonders if he#  could borrow yours.";
        }
        else if (battle_enemy_name == "bowll solo")
        {
            message[0] = "* Bowll notices a red object but#  fights against the temptation#  to run at it.";
        }
        else if (battle_enemy_name == "el bailador")
        {
            if (global.route == 3)
                message[0] = "* You're getting annoyed by the#  music.";
            else
                message[0] = "* El Bailador strikes a#  motivating pose!";
        }
        else if (battle_enemy_name == "dummy training pacifist")
        {
            message[0] = "* The dummy does nothing.";
        }
        else if (battle_enemy_name == "flower girls")
        {
            switch (global.dunes_flag[31])
            {
                case 1:
                    message[0] = "* Violetta is looking everywhere#  else but at you.";
                    break;
                
                case 2:
                    message[0] = "* Pedla twirls around the sand.";
                    break;
                
                case 3:
                    message[0] = "* Rosa dances through life's#  dangers with stunning#  confidence!";
                    break;
            }
        }
        else if (battle_enemy_name == "ceroba genocide")
        {
            message[0] = "* She wipes sweat from#  her brow.";
        }
        else if (battle_enemy_name == "starlo")
        {
            if (global.attack_cycle < 10)
                message[0] = "* Starlo's fingers itch for his#  six-shooter.";
            else
                message[0] = "* Starlo grinds his teeth#  together in frustration.";
        }
        else if (battle_enemy_name == "tellyvis")
        {
            message[0] = "* Telly pushes Vis' mouth-flap#  back and forth for amusement.#  Vis isn't having it.";
        }
        else if (battle_enemy_name == "jandroid" || battle_enemy_name == "jandroid duo" || battle_enemy_name == "jandroid goosic duo")
        {
            message[0] = "* Jandroid tries to whistle to#  the music.";
        }
        else if (battle_enemy_name == "goosic")
        {
            message[0] = "* Goosic begins spinning in#  circles.";
        }
        else if (battle_enemy_name == "sousborg")
        {
            message[0] = "* Sousborg is juggling cleavers.";
        }
        else if (battle_enemy_name == "axis")
        {
            message[0] = "* Death by metal & magic.";
        }
        else if (battle_enemy_name == "axis genocide")
        {
            message[0] = "* In your way.";
        }
        else if (battle_enemy_name == "macro froggit")
        {
            message[0] = "* Smells like frog.";
        }
        else if (battle_enemy_name == "guardener")
        {
            if (global.enemy_mode == 0)
                message[0] = "* Guardener waters your cage.";
            else if (global.enemy_mode >= 1)
                message[0] = "* Guardener slams her arms into#  the floor in agitation.";
        }
        else if (battle_enemy_name == "flowey")
        {
            message[0] = "* smells like Aa;1rW4,je2FpA,,.";
        }
        else if (battle_enemy_name == "ceroba")
        {
            switch (global.hotland_flag[2])
            {
                case 0:
                    message[0] = "* Ceroba wipes sweat from her#  brow.";
                    break;
                
                case 1:
                    message[0] = "* Petals rain from the heavens.";
                    break;
                
                case 2:
                    message[0] = "* Ceroba radiates with anger.";
                    break;
                
                case 3:
                    message[0] = "* The end is near.";
                    break;
            }
        }
        else if (battle_enemy_name == "martlet genocide final")
        {
            message[0] = "* The enemy tries to persist.";
            
            if (global.hotland_flag[9] >= 2)
                message[0] = "* Closure.";
        }
    }
}
