function scr_battle_core_directory_flavor_text_enemy_1_default_9()
{
    var battle_enemy_name = global.battle_enemy_name;
    var enemy_mode = global.enemy_mode;
    var game_mode = global.game_mode;
    
    if (game_mode == "customs")
    {
    }
    else if (game_mode == "yellow")
    {
        if (battle_enemy_name == "frostermit know cone duo")
        {
            switch (enemy_mode)
            {
                case 0:
                    message[0] = "* Know Cone tries hugging the igloo, hoping it will spring to life.";
                    break;
                
                case 1:
                    message[0] = "* Know Cone is dancing, hoping to befriend Frostermit.";
                    break;
            }
        }
        else if (battle_enemy_name == "axis")
        {
            var random_number = irandom_range(0, 1);
            
            switch (random_number)
            {
                case 0:
                    message[0] = "* Axis pinches the end of one of#  his gloves and releases the air.#  He finds it amusing.";
                    break;
                
                case 1:
                    message[0] = "* Axis thinks this music is a bit#  intense for his tastes.";
                    break;
            }
        }
        else if (battle_enemy_name == "axis genocide")
        {
            message[0] = "* Axis geno flavor 9.";
        }
        else if (battle_enemy_name == "flowey")
        {
            message[0] = "* clover would like to cry but#  they have no eyes";
        }
    }
}
