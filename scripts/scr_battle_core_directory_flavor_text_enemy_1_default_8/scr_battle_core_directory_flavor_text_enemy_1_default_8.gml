function scr_battle_core_directory_flavor_text_enemy_1_default_8()
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
            message[0] = "* The Fliers are trading tips on#  how to be \"hip\".";
        }
        else if (battle_enemy_name == "insomnitot duo")
        {
            message[0] = "* The Insomnitots share a cup of#  coffee.";
        }
        else if (battle_enemy_name == "know cone insomnitot duo")
        {
            message[0] = "* Know Cone raves about his passion for fire to Insomnitot.";
        }
        else if (battle_enemy_name == "frostermit know cone duo")
        {
            switch (enemy_mode)
            {
                case 0:
                    message[0] = "* Know Cone doesn't speak igloo.#* Know Cone is upset.";
                    break;
                
                case 1:
                    message[0] = "* Frostermit has never been in the situation before.";
                    break;
            }
        }
        else if (battle_enemy_name == "el bailador")
        {
            message[0] = "* You feel the rhythm in your#  soul!";
        }
        else if (battle_enemy_name == "jandroid goosic duo")
        {
            message[0] = "* Goosic amps up the tunes as#  Jandroid lays down their mop!";
        }
        else if (battle_enemy_name == "jandroid duo")
        {
            message[0] = "* The Jandroid's sway to and#  fro.";
        }
        else if (battle_enemy_name == "ceroba genocide")
        {
            message[0] = "* No mercy.";
        }
        else if (battle_enemy_name == "starlo")
        {
            message[0] = "* Starlo digs his spurs into the#  sand, standing strong.";
        }
        else if (battle_enemy_name == "axis")
        {
            message[0] = "* Axis blows into one of his#  vents to clean some dust. You#  don't know how.";
        }
        else if (battle_enemy_name == "axis genocide")
        {
            message[0] = "* . . .";
        }
        else if (battle_enemy_name == "macro froggit")
        {
            message[0] = "* Your head is spinning.";
        }
        else if (battle_enemy_name == "flowey")
        {
            message[0] = "* clover suddenly feels like#  taking a nap";
        }
        else if (battle_enemy_name == "ceroba")
        {
            message[0] = "* No turning back.";
        }
    }
}
