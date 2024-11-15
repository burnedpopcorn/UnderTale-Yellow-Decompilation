function scr_battle_core_directory_enemy_attack_alarms()
{
    var battle_enemy_name, enemy_attack, game_mode;
    
    battle_enemy_name = global.battle_enemy_name;
    enemy_attack = global.enemy_attack;
    game_mode = global.game_mode;
    
    if (game_mode == "customs")
    {
        if (battle_enemy_name == "craniex")
        {
            alarm[0] = 235;
        }
        else if (battle_enemy_name == "ms mettaton")
        {
            if (enemy_attack == "Ms. Mettaton Happy Breaktime")
                alarm[0] = 150;
        }
    }
    else if (game_mode == "yellow")
    {
        if (battle_enemy_name == "flier solo" || battle_enemy_name == "flier trio")
        {
            alarm[0] = 200;
        }
        else if (battle_enemy_name == "penilla solo")
        {
            alarm[0] = 210;
        }
        else if (battle_enemy_name == "flier penilla duo")
        {
            if (enemy_attack == "Flier Flies" || enemy_attack == "Flier Fire")
                alarm[0] = 200;
            else
                alarm[0] = 300;
        }
        else if (battle_enemy_name == "sweet corn solo")
        {
            alarm[0] = 200;
        }
        else if (battle_enemy_name == "sweet corn duo")
        {
            alarm[0] = 200;
        }
        else if (battle_enemy_name == "sweet corn penilla duo")
        {
            if (enemy_attack == "Penilla Drawing")
                alarm[0] = 230;
            else
                alarm[0] = 200;
        }
        else if (battle_enemy_name == "crispy scroll solo")
        {
            if (enemy_attack == "Crispy Slash")
                alarm[0] = 150;
            else
                alarm[0] = 200;
        }
        else if (battle_enemy_name == "crispy scroll penilla duo")
        {
            if (enemy_attack == "Penilla Drawing")
                alarm[0] = 230;
            else if (enemy_attack == "Crispy Slash Drawing")
                alarm[0] = 230;
            else
                alarm[0] = 200;
        }
        else if (battle_enemy_name == "rorrim solo")
        {
            alarm[0] = 200;
        }
        else if (battle_enemy_name == "decibat")
        {
            if (enemy_attack == "Decibat Wave Blue" || enemy_attack == "Decibat Wave Orange")
                alarm[0] = 115;
            else
                alarm[0] = 200;
        }
        else if (battle_enemy_name == "dalv")
        {
            if (enemy_attack == "Dalv Lightning Spinner")
                alarm[0] = 300;
            else if (enemy_attack != "Dalv Lightning Bolt")
                alarm[0] = 200;
        }
        else if (battle_enemy_name == "micro froggit")
        {
            alarm[0] = 200;
        }
        else if (battle_enemy_name == "insomnitot solo")
        {
            if (enemy_attack != "Insomnitot Sheep")
                alarm[0] = 200;
        }
        else if (battle_enemy_name == "insomnitot duo")
        {
            if (enemy_attack != "Insomnitot Sheep" && enemy_attack != "Insomnitot Sheep ZZZ" && enemy_attack != "Insomnitot Sheep Stars")
                alarm[0] = 200;
        }
        else if (battle_enemy_name == "know cone solo")
        {
            if (enemy_attack != "Know Cone Cherries" && enemy_attack != "Know Cone Fig")
                alarm[0] = 200;
        }
        else if (battle_enemy_name == "know cone insomnitot duo")
        {
            if (enemy_attack != "Know Cone Cherries" && enemy_attack != "Know Cone Fig" && enemy_attack != "Insomnitot Sheep")
                alarm[0] = 200;
        }
        else if (battle_enemy_name == "frostermit solo")
        {
            if (enemy_attack == "Frostermit Snowflakes")
                alarm[0] = 200;
            else if (enemy_attack == "Frostermit Pinchers")
                alarm[0] = 300;
        }
        else if (battle_enemy_name == "frostermit know cone duo")
        {
            if (enemy_attack == "Frostermit Pinchers")
                alarm[0] = 300;
            else if (enemy_attack != "Frostermit Ice Cubes" && enemy_attack != "Know Cone Cherries" && enemy_attack != "Know Cone Fig")
                alarm[0] = 200;
        }
        else if (battle_enemy_name == "trihecta together" || battle_enemy_name == "trihecta separated")
        {
            if (enemy_attack == "Trihecta Circle Reflect")
                alarm[0] = 200;
            else if (enemy_attack == "Trihecta Circle Stack")
                alarm[0] = 300;
        }
        else if (battle_enemy_name == "martlet pacifist" || battle_enemy_name == "martlet genocide")
        {
        }
        else if (battle_enemy_name == "dunebud solo")
        {
        }
        else if (battle_enemy_name == "cactony solo" || battle_enemy_name == "cactony slither duo")
        {
            if (enemy_attack != "Cactony Needle Green")
            {
            }
            else if (enemy_attack == "Cactony Needle Green")
            {
                alarm[0] = 200;
            }
        }
        else if (battle_enemy_name == "bowll solo")
        {
        }
        else if (battle_enemy_name == "el bailador")
        {
        }
        else if (battle_enemy_name == "flower girls")
        {
        }
        else if (battle_enemy_name == "starlo")
        {
        }
        else if (battle_enemy_name == "feisty five")
        {
        }
        else if (battle_enemy_name == "tellyvis")
        {
        }
        else if (battle_enemy_name == "axis" || battle_enemy_name == "axis genocide")
        {
        }
        else if (battle_enemy_name == "macro froggit")
        {
        }
    }
}
