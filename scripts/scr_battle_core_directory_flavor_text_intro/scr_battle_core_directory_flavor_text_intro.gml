function scr_battle_core_directory_flavor_text_intro()
{
    var battle_enemy_name, game_mode;
    
    battle_enemy_name = global.battle_enemy_name;
    game_mode = global.game_mode;
    
    if (game_mode == "customs")
    {
        if (battle_enemy_name == "craniex")
        {
            message[0] = "* Craniex steps toward the class,#  ready to give another boring#  lecture.";
        }
        else if (battle_enemy_name == "ms mettaton")
        {
            if (global.ms_mettaton_transformed == false)
                message[0] = "* Ms. Mettaton strikes!";
            else if (global.ms_mettaton_transformed == true)
                message[0] = "* Ms. Mettaton EX makes her grand#  debut!";
        }
    }
    else if (game_mode == "yellow")
    {
        if (battle_enemy_name == "froggit intro")
        {
            message[0] = "* Froggit hopped close!";
        }
        else if (battle_enemy_name == "flier solo")
        {
            message[0] = "* Flier is giving fighting a try!";
        }
        else if (battle_enemy_name == "flier trio")
        {
            message[0] = "* You are overwhelmed by#  depressing vibes.";
        }
        else if (battle_enemy_name == "penilla solo")
        {
            message[0] = "* Penilla draws near!";
        }
        else if (battle_enemy_name == "flier penilla duo")
        {
            message[0] = "* Penilla seems to be dreading#  this battle.";
        }
        else if (battle_enemy_name == "sweet corn solo")
        {
            message[0] = "* Sweet Corn hops up excitedly.";
        }
        else if (battle_enemy_name == "sweet corn duo")
        {
            message[0] = "* You can already feel the#  cavities.";
        }
        else if (battle_enemy_name == "sweet corn penilla duo")
        {
            message[0] = "* Penilla encounters you.#* Sweet Corn comes out of nowhere#  acting excited.";
        }
        else if (battle_enemy_name == "crispy scroll solo")
        {
            message[0] = "* Crispy Scroll is looking for#  someone to talk to.";
        }
        else if (battle_enemy_name == "crispy scroll penilla duo")
        {
            message[0] = "* A powerful lone warrior and his#  pencil companion encounter you!";
        }
        else if (battle_enemy_name == "rorrim solo")
        {
            message[0] = "* Rorrim encounters you!";
        }
        else if (battle_enemy_name == "decibat")
        {
            message[0] = "* Decibat makes his presence#  known.";
        }
        else if (battle_enemy_name == "dalv")
        {
            message[0] = "* Dalv musters his fighting#  spirit.";
        }
        else if (battle_enemy_name == "micro froggit")
        {
            message[0] = "* You notice Micro Froggit#  attacking you!";
        }
        else if (battle_enemy_name == "insomnitot solo")
        {
            message[0] = "* Insomnitot staggers forward.";
        }
        else if (battle_enemy_name == "insomnitot duo")
        {
            message[0] = "* You suddenly feel like taking a#  nap.";
        }
        else if (battle_enemy_name == "know cone solo")
        {
            message[0] = "* Know Cone comes to see if you#  are made of fire.#* You aren't.";
        }
        else if (battle_enemy_name == "know cone insomnitot duo")
        {
            message[0] = "* Insomnitot appears!#* Know Cone wanders in, chasing a#  butterfly.";
        }
        else if (battle_enemy_name == "frostermit solo")
        {
            message[0] = "* There is an igloo here.";
        }
        else if (battle_enemy_name == "frostermit know cone duo")
        {
            message[0] = "* Know Cone encounters you, and#  an igloo.";
        }
        else if (battle_enemy_name == "trihecta together")
        {
            message[0] = "* Trihecta wobbles forward!";
        }
        else if (battle_enemy_name == "trihecta separated")
        {
            message[0] = "* Trihecta regroups, then bickers.";
        }
        else if (battle_enemy_name == "martlet pacifist")
        {
            message[0] = "* Martlet of the Royal Guard is#  waiting for your turn.";
        }
        else if (battle_enemy_name == "martlet genocide")
        {
            message[0] = "* Martlet seems puzzled.";
        }
        else if (battle_enemy_name == "dunebud solo")
        {
            message[0] = "* Dunebud popped out of the sand!";
        }
        else if (battle_enemy_name == "dunebud duo")
        {
            message[0] = "* Double trouble!";
        }
        else if (battle_enemy_name == "cactony solo")
        {
            message[0] = "* Cactony comes to share his pain.";
        }
        else if (battle_enemy_name == "slither solo")
        {
            message[0] = "* Sir Slither has a proposition!#  (real)";
        }
        else if (battle_enemy_name == "bowll solo")
        {
            message[0] = "* Bowll charges near you!";
        }
        else if (battle_enemy_name == "cactony slither duo")
        {
            message[0] = "* Cactony wandered in, Sir#  Slither closely following.";
        }
        else if (battle_enemy_name == "el bailador")
        {
            if (global.route != 3)
                message[0] = "* It's time to dance!";
            else
                message[0] = "* Another roadblock.";
        }
        else if (battle_enemy_name == "flower girls")
        {
            switch (global.dunes_flag[31])
            {
                case 1:
                    message[0] = "* Violetta passively approaches#  from the flowerbed.";
                    break;
                
                case 2:
                    message[0] = "* Pedla approaches from the#  flowerbed, offering you a#  flower.";
                    break;
                
                case 3:
                    message[0] = "* Rosa approaches from the#  flowerbed, twisting a flower in#  her hand.";
                    break;
                
                default:
                    message[0] = "* ...";
            }
        }
        else if (battle_enemy_name == "ceroba genocide")
        {
            message[0] = "* The atmosphere chills with ire.";
        }
        else if (battle_enemy_name == "starlo")
        {
            if (global.attack_cycle == 0)
                message[0] = "* Showdown!";
            else
                message[0] = "* Duel!";
        }
        else if (battle_enemy_name == "tellyvis")
        {
            message[0] = "* Telly-Vis tunes in!";
        }
        else if (battle_enemy_name == "jandroid")
        {
            message[0] = "* Jandroid strolls up, whistling#  a pitchy tune.";
        }
        else if (battle_enemy_name == "goosic")
        {
            message[0] = "* Goosic has come to share some#  sounds.";
        }
        else if (battle_enemy_name == "sousborg")
        {
            message[0] = "* Sousborg is ready to put your#  culinary skills to the test!";
        }
        else if (battle_enemy_name == "jandroid goosic duo")
        {
            message[0] = "* The robotic duo, Jandroid and#  Goosic, are here!";
        }
        else if (battle_enemy_name == "jandroid duo")
        {
            message[0] = "* Rinse, repeated.";
        }
        else if (battle_enemy_name == "axis")
        {
            message[0] = "* Axis Model 014, ready to#  attack!";
        }
        else if (battle_enemy_name == "axis genocide")
        {
            message[0] = "* Axis Model 014, ready to#  defend.";
        }
        else if (battle_enemy_name == "macro froggit")
        {
            message[0] = "* You notice Micro Froggit#  attacking you!";
            
            if (global.turns_passed > 0)
                message[0] = "* What the...";
        }
        else if (battle_enemy_name == "guardener")
        {
            message[0] = "* Guardener ensnares you!";
        }
        else if (battle_enemy_name == "ceroba")
        {
            if (global.hotland_flag[2] == 0)
                message[0] = "* No turning back.";
            else if (global.hotland_flag[2] == 1)
                message[0] = "* Let justice be done.";
            else
                message[0] = "* Ceroba is shaken by the#  memory.";
        }
        else if (battle_enemy_name == "martlet genocide final")
        {
            message[0] = "* The zenith of Monsterkind.";
            
            if (global.hotland_flag[9] >= 2)
                message[0] = "* Fallen down.";
        }
    }
}
