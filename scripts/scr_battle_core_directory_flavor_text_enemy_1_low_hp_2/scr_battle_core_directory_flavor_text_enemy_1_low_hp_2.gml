function scr_battle_core_directory_flavor_text_enemy_1_low_hp_2()
{
    var battle_enemy_name = global.battle_enemy_name;
    var enemy_mode = global.enemy_mode;
    var game_mode = global.game_mode;
    
    if (game_mode == "customs")
    {
    }
    else if (game_mode == "yellow")
    {
        if (battle_enemy_name == "flier solo")
        {
            message[0] = "* Flier seems to have several#  regrets.";
        }
        else if (battle_enemy_name == "flier trio")
        {
            message[0] = "* Flier seems to have several#  regrets.";
        }
        else if (battle_enemy_name == "penilla solo")
        {
            message[0] = "* Penilla tries to bite the#  bullet.";
        }
        else if (battle_enemy_name == "flier penilla duo")
        {
            message[0] = "* Flier seems to have several#  regrets.";
        }
        else if (battle_enemy_name == "sweet corn solo")
        {
            message[0] = "* Sweet Corn is trying to stay#  positive.";
        }
        else if (battle_enemy_name == "sweet corn duo")
        {
            message[0] = "* Sweet Corn is trying to stay#  positive.";
        }
        else if (battle_enemy_name == "sweet corn penilla duo")
        {
            message[0] = "* Sweet Corn is trying to stay#  positive.";
        }
        else if (battle_enemy_name == "crispy scroll solo")
        {
            message[0] = "* Crispy Scroll is trying to#  teleport away.";
        }
        else if (battle_enemy_name == "crispy scroll penilla duo")
        {
            message[0] = "* Crispy Scroll is trying to#  teleport away.";
        }
        else if (battle_enemy_name == "rorrim solo")
        {
            message[0] = "* Rorrim regrets approaching you.";
        }
        else if (battle_enemy_name == "insomnitot solo")
        {
            message[0] = "* Insomnitot is drifting in and#  out of consciousness.";
        }
        else if (battle_enemy_name == "insomnitot duo")
        {
            message[0] = "* Insomnitot is drifting in and#  out of consciousness.";
        }
        else if (battle_enemy_name == "know cone solo")
        {
            message[0] = "* Know Cone stomps his feet in a#  huff.";
        }
        else if (battle_enemy_name == "know cone insomnitot duo")
        {
            message[0] = "* Know Cone stomps his feet in a#  huff.";
        }
        else if (battle_enemy_name == "frostermit solo")
        {
            switch (enemy_mode)
            {
                case 0:
                    message[0] = "* The igloo is making distressed#  noises.";
                    break;
                
                case 1:
                    message[0] = "* Frostermit retreats inside for a#  moment to address a possible#  cave in.";
                    break;
            }
        }
        else if (battle_enemy_name == "frostermit know cone duo")
        {
            switch (enemy_mode)
            {
                case 0:
                    message[0] = "* The igloo is making distressed#  noises.";
                    break;
                
                case 1:
                    message[0] = "* Frostermit retreats inside for a#  moment to address a possible#  cave in.";
                    break;
            }
        }
        else if (battle_enemy_name == "trihecta together")
        {
            message[0] = "* Hec is blaming their#  situation on Tri.";
        }
        else if (battle_enemy_name == "trihecta separated")
        {
            message[0] = "* Now they are truly split apart.";
        }
        else if (battle_enemy_name == "dunebud solo" || battle_enemy_name == "dunebud duo")
        {
            message[0] = "* Sand is spilling everywhere.";
        }
        else if (battle_enemy_name == "cactony solo" || battle_enemy_name == "cactony slither duo")
        {
            message[0] = "* Cactony sheds a tear and a few#  needles.";
        }
        else if (battle_enemy_name == "slither solo")
        {
            message[0] = "* Sir Slither can't slither away#  from this.";
        }
        else if (battle_enemy_name == "bowll solo")
        {
            message[0] = "* Bowll may break into tears soon.";
        }
        else if (battle_enemy_name == "flower girls")
        {
            message[0] = "* Petals fall around your feet.";
        }
        else if (battle_enemy_name == "tellyvis")
        {
            message[0] = "* Vis spits out a broken video#  cassette.";
        }
        else if (battle_enemy_name == "jandroid" || battle_enemy_name == "jandroid duo")
        {
            message[0] = "* You hear metallic and#  electrical noises as Jandroid#  twitches.";
        }
        else if (battle_enemy_name == "goosic" || battle_enemy_name == "jandroid goosic duo")
        {
            message[0] = "* Goosic's music bends in and out#  of tune.";
        }
        else if (battle_enemy_name == "sousborg")
        {
            message[0] = "* Sousborg is leaking oil.#  Vegetable oil.";
        }
    }
}
