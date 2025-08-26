function scr_battle_core_directory_flavor_text_enemy_1_default_1()
{
    var battle_enemy_name = global.battle_enemy_name;
    var enemy_mode = global.enemy_mode;
    var game_mode = global.game_mode;
    
    if (game_mode == "customs")
    {
        if (battle_enemy_name == "craniex")
            message[0] = "* Smells like freshly opened#  textbooks!";
        else if (battle_enemy_name == "ms mettaton")
            message[0] = "* Ms. Mettaton.";
    }
    else if (game_mode == "yellow")
    {
        if (battle_enemy_name == "flier solo")
        {
            message[0] = "* Everything has that new car#  smell with a faint whiff of#  bodyspray.";
        }
        else if (battle_enemy_name == "flier trio")
        {
            message[0] = "* Everything has that new car#  smell with a faint whiff of#  bodyspray.";
        }
        else if (battle_enemy_name == "penilla solo")
        {
            message[0] = "* Penilla is drawing a practice#  sketch of you.";
        }
        else if (battle_enemy_name == "flier penilla duo")
        {
            message[0] = "* Everything has that new car#  smell with a faint whiff of#  bodyspray.";
        }
        else if (battle_enemy_name == "sweet corn solo")
        {
            message[0] = "* It smells like burning candle#  wax.";
        }
        else if (battle_enemy_name == "sweet corn duo")
        {
            message[0] = "* It smells like burning candle#  wax.";
        }
        else if (battle_enemy_name == "sweet corn penilla duo")
        {
            message[0] = "* It smells like burning candle#  wax.";
        }
        else if (battle_enemy_name == "crispy scroll solo")
        {
            message[0] = "* Crispy Scroll is asking if he#  can get a picture with you.";
        }
        else if (battle_enemy_name == "crispy scroll penilla duo")
        {
            message[0] = "* Crispy Scroll is asking if he#  can get a picture with you.";
        }
        else if (battle_enemy_name == "rorrim solo")
        {
            message[0] = "* You are momentarily blinded by#  Rorrim's dazzling shine.";
        }
        else if (battle_enemy_name == "decibat")
        {
            message[0] = "* Decibat is not enjoying the#  music.";
        }
        else if (battle_enemy_name == "dalv")
        {
            message[0] = "* Dalv seems to be dreading his#  next attack.";
        }
        else if (battle_enemy_name == "micro froggit")
        {
            message[0] = "* A gentle breeze causes#  Micro Froggit to lose its#  balance.";
        }
        else if (battle_enemy_name == "insomnitot solo")
        {
            message[0] = "* The air is crisp.";
        }
        else if (battle_enemy_name == "insomnitot duo")
        {
            message[0] = "* The air is crisp.";
        }
        else if (battle_enemy_name == "know cone solo")
        {
            message[0] = "* Know Cone is pointing excitedly#  at something in the distance.#* It looks to be a tree.";
        }
        else if (battle_enemy_name == "know cone insomnitot duo")
        {
            message[0] = "* Know Cone is pointing excitedly#  at something in the distance.#* It looks to be a tree.";
        }
        else if (battle_enemy_name == "frostermit solo")
        {
            switch (enemy_mode)
            {
                case 0:
                    message[0] = "* You think you see the igloo#  move a bit.";
                    break;
                
                case 1:
                    message[0] = "* Frostermit seems to be#  contemplating hiding again.";
                    break;
            }
        }
        else if (battle_enemy_name == "frostermit know cone duo")
        {
            switch (enemy_mode)
            {
                case 0:
                    message[0] = "* You think you see the igloo#  move a bit.";
                    break;
                
                case 1:
                    message[0] = "* Frostermit seems to be#  contemplating hiding again.";
                    break;
            }
        }
        else if (battle_enemy_name == "trihecta together")
        {
            message[0] = "* Trihecta bickers amongst itself.";
        }
        else if (battle_enemy_name == "trihecta separated")
        {
            message[0] = "* Tri is exploring their newfound#  freedom.";
        }
        else if (battle_enemy_name == "martlet pacifist")
        {
            message[0] = "* Martlet is blinking a lot.#* Maybe it's a code.#* It probably isn't.";
        }
        else if (battle_enemy_name == "martlet genocide")
        {
            switch (enemy_mode)
            {
                case 3:
                    message[0] = "* Feathers litter the ground.";
                    break;
                
                case 4:
                    message[0] = "* Martlet is deep in thought.";
                    break;
                
                default:
                    message[0] = "* Martlet looks disheveled.";
            }
        }
        else if (battle_enemy_name == "dunebud solo" || battle_enemy_name == "dunebud duo")
        {
            message[0] = "* Dunebud shifts this way and#  that.";
        }
        else if (battle_enemy_name == "cactony solo" || battle_enemy_name == "cactony slither duo")
        {
            message[0] = "* Cactony would like to cry, but#  it's too hot.";
        }
        else if (battle_enemy_name == "slither solo")
        {
            message[0] = "* Sir Slither does his iconic#  side-eyed smirk.";
        }
        else if (battle_enemy_name == "bowll solo")
        {
            message[0] = "* Bowll is applying super glue to#  his head.";
        }
        else if (battle_enemy_name == "el bailador")
        {
            if (global.route == 3)
                message[0] = "* The enemy seems puzzled.";
            else
                message[0] = "* El Bailador glides around the#  dancefloor with ease.";
        }
        else if (battle_enemy_name == "dummy training pacifist")
        {
            message[0] = "* Sand covers the dummy.";
        }
        else if (battle_enemy_name == "flower girls")
        {
            message[0] = "* The pleasant scent of flowers#  fills the air.";
        }
        else if (battle_enemy_name == "ceroba genocide")
        {
            message[0] = "* There is no hope.";
        }
        else if (battle_enemy_name == "starlo")
        {
            if (global.attack_cycle < 10)
                message[0] = "* Starlo keeps a steady eye on#  you.";
            else
                message[0] = "* Starlo keeps two steady eyes#  on you.";
        }
        else if (battle_enemy_name == "tellyvis")
        {
            message[0] = "* Telly-Vis are debating which#  season of the news is superior.";
        }
        else if (battle_enemy_name == "jandroid" || battle_enemy_name == "jandroid duo" || battle_enemy_name == "jandroid goosic duo")
        {
            message[0] = "* Jandroid wrings out their#  mop... over their head.";
        }
        else if (battle_enemy_name == "goosic")
        {
            message[0] = "* Goosic slowly scratches a#  record with its needle. The#  sound is unbearable.";
        }
        else if (battle_enemy_name == "sousborg")
        {
            message[0] = "* Looks like you're on the#  chopping block!";
        }
        else if (battle_enemy_name == "axis")
        {
            message[0] = "* The air thickens.";
        }
        else if (battle_enemy_name == "axis genocide")
        {
            message[0] = "* Can't hold out forever.";
        }
        else if (battle_enemy_name == "macro froggit")
        {
            message[0] = "* Frog.";
        }
        else if (battle_enemy_name == "guardener")
        {
            message[0] = "* White spores swirl through the#  air.";
        }
        else if (battle_enemy_name == "flowey")
        {
            message[0] = "* one two three four five six#  seven Seven sSevVen 7sEv=en sVmn#  0sE7n SevvevvVvvvvVVVVV";
        }
        else if (battle_enemy_name == "ceroba")
        {
            switch (global.hotland_flag[2])
            {
                case 0:
                    message[0] = "* Ceroba tries to ignore the#  condition of her friends.";
                    break;
                
                case 1:
                case 2:
                case 3:
                    message[0] = "* A mother's love.";
                    break;
            }
        }
        else if (battle_enemy_name == "martlet genocide final")
        {
            message[0] = "* The enemy gazes onward.";
            
            if (global.hotland_flag[9] >= 2)
                message[0] = "* Endtimes.";
        }
    }
}
