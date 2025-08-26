function scr_battle_core_directory_tb_dimensions()
{
    if (live_call())
        return global.live_result;
    
    var battle_enemy_name = global.battle_enemy_name;
    var enemy_attack = global.enemy_attack;
    var game_mode = global.game_mode;
    
    if (game_mode == "yellow")
    {
        global.determine_attack_priority = 2;
        script_execute(scr_determine_enemy_attack_yellow);
        enemy_attack = global.enemy_attack;
        
        if (battle_enemy_name == "flier solo" || battle_enemy_name == "flier trio")
        {
            if (enemy_attack == "Flier Flies" || enemy_attack == "Flier Swarm" || enemy_attack == "Flier Fire" || enemy_attack == "Flier Flies Double" || enemy_attack == "Flier Swarm Double" || enemy_attack == "Flier Fire Flies")
            {
                instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
                
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 127;
                    sprite_height_destination = 140;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
        }
        else if (battle_enemy_name == "penilla solo")
        {
            if (enemy_attack == "Penilla Drawing")
            {
                instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
                
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 128;
                    sprite_height_destination = 140;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
            else if (enemy_attack == "Penilla Lines")
            {
                instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
                
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 90;
                    sprite_height_destination = 102;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
        }
        else if (battle_enemy_name == "flier penilla duo")
        {
            if (enemy_attack == "Flier Flies Drawing")
            {
                instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
                
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 127;
                    sprite_height_destination = 140;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
            else if (enemy_attack == "Flier Flies" || enemy_attack == "Flier Swarm" || enemy_attack == "Flier Fire")
            {
                instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
                
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 127;
                    sprite_height_destination = 140;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
            else if (enemy_attack == "Penilla Drawing")
            {
                instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
                
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 128;
                    sprite_height_destination = 140;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
            else if (enemy_attack == "Penilla Lines")
            {
                instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
                
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 90;
                    sprite_height_destination = 102;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
        }
        else if (battle_enemy_name == "sweet corn solo" || battle_enemy_name == "sweet corn duo")
        {
            if (enemy_attack == "Candy Corn" || enemy_attack == "Spear Corn" || enemy_attack == "Homing Corn" || enemy_attack == "Candy Spear Corn" || enemy_attack == "Homing Spear Corn")
            {
                instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
                
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 128;
                    sprite_height_destination = 140;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
        }
        else if (battle_enemy_name == "sweet corn penilla duo")
        {
            if (enemy_attack == "Candy Corn" || enemy_attack == "Spear Corn" || enemy_attack == "Homing Corn" || enemy_attack == "Penilla Drawing" || enemy_attack == "Drawing Spear Corn")
            {
                instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
                
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 128;
                    sprite_height_destination = 140;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
            else if (enemy_attack == "Penilla Lines")
            {
                instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
                
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 90;
                    sprite_height_destination = 102;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
        }
        else if (battle_enemy_name == "crispy scroll solo")
        {
            if (enemy_attack == "Crispy Slash" || enemy_attack == "Crispy Laser" || enemy_attack == "Crispy Tub")
            {
                instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
                
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 128;
                    sprite_height_destination = 140;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
        }
        else if (battle_enemy_name == "crispy scroll penilla duo")
        {
            if (enemy_attack == "Crispy Slash Drawing")
            {
                instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
                
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 244;
                    sprite_height_destination = 140;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
            
            if (enemy_attack == "Crispy Slash" || enemy_attack == "Crispy Laser" || enemy_attack == "Crispy Tub" || enemy_attack == "Penilla Drawing")
            {
                instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
                
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 128;
                    sprite_height_destination = 140;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
            else if (enemy_attack == "Penilla Lines")
            {
                instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
                
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 90;
                    sprite_height_destination = 102;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
        }
        else if (battle_enemy_name == "rorrim solo")
        {
            if (enemy_attack == "Rorrim Mirror" || enemy_attack == "Rorrim Sparkle")
            {
                instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
                
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 128;
                    sprite_height_destination = 140;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
        }
        else if (battle_enemy_name == "decibat")
        {
            if (enemy_attack == "Decibat Wave Orange" || enemy_attack == "Decibat Wave Blue" || enemy_attack == "Decibat Wave Multi" || enemy_attack == "Decibat Stalagmite")
            {
                instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
                
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 128;
                    sprite_height_destination = 140;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
            else if (enemy_attack == "Decibat Wave Mini")
            {
                instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
                
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 244;
                    sprite_height_destination = 140;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
        }
        else if (battle_enemy_name == "dalv")
        {
            if (enemy_attack == "Dalv Lightning Balls" || enemy_attack == "Dalv Lightning Spinner" || enemy_attack == "Dalv Lightning Bolt")
            {
                instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
                
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 128;
                    sprite_height_destination = 140;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
            else if (enemy_attack == "Dalv Lightning Vertical")
            {
                instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
                
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 244;
                    sprite_height_destination = 140;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
            else if (enemy_attack == "Dalv Lightning Dual")
            {
                instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
                
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 140;
                    sprite_height_destination = 140;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
            else if (enemy_attack == "Dalv Lightning Shift")
            {
                instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
                
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 128;
                    sprite_height_destination = 218;
                    disjoint_x = 0;
                    disjoint_y = -39;
                }
            }
        }
        else if (battle_enemy_name == "micro froggit")
        {
            if (enemy_attack == "Micro Fly")
            {
                instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
                
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 128;
                    sprite_height_destination = 140;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
            else if (enemy_attack == "Micro Barrage")
            {
                instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
                
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 128;
                    sprite_height_destination = 140;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
        }
        else if (battle_enemy_name == "insomnitot solo" || battle_enemy_name == "insomnitot duo")
        {
            if (enemy_attack == "Insomnitot Sheep")
            {
                instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
                
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 100;
                    sprite_height_destination = 64;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
            else if (enemy_attack == "Insomnitot ZZZ" || enemy_attack == "Insomnitot Stars")
            {
                instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
                
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 128;
                    sprite_height_destination = 140;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
            else if (enemy_attack == "Insomnitot Sheep ZZZ" || enemy_attack == "Insomnitot Sheep Stars")
            {
                instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
                
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 100;
                    sprite_height_destination = 140;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
        }
        else if (battle_enemy_name == "know cone solo")
        {
            if (enemy_attack == "Know Cone Blueberries" || enemy_attack == "Know Cone Oranges" || enemy_attack == "Know Cone Fig")
            {
                instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
                
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 128;
                    sprite_height_destination = 140;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
            else if (enemy_attack == "Know Cone Cherries")
            {
                instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
                
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 77;
                    sprite_height_destination = 140;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
        }
        else if (battle_enemy_name == "know cone insomnitot duo")
        {
            if (enemy_attack == "Know Cone Cherries")
            {
                instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
                
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 77;
                    sprite_height_destination = 140;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
            else if (enemy_attack == "Insomnitot Sheep")
            {
                instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
                
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 100;
                    sprite_height_destination = 64;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
            else if (enemy_attack == "Know Cone Blueberries ZZZ" || enemy_attack == "Know Cone Oranges Stars" || enemy_attack == "Know Cone Blueberries" || enemy_attack == "Know Cone Oranges" || enemy_attack == "Know Cone Fig" || enemy_attack == "Insomnitot ZZZ" || enemy_attack == "Insomnitot Stars")
            {
                instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
                
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 128;
                    sprite_height_destination = 140;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
        }
        else if (battle_enemy_name == "frostermit solo")
        {
            if (enemy_attack == "Frostermit Snowflakes")
            {
                instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
                
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 128;
                    sprite_height_destination = 140;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
            else if (enemy_attack == "Frostermit Ice Cubes")
            {
                instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
                
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 95;
                    sprite_height_destination = 95;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
            else if (enemy_attack == "Frostermit Pinchers")
            {
                instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
                
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 100;
                    sprite_height_destination = 42;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
        }
        else if (battle_enemy_name == "frostermit know cone duo")
        {
            if (enemy_attack == "Frostermit Snowflakes Blueberries" || enemy_attack == "Frostermit Snowflakes Oranges" || enemy_attack == "Frostermit Snowflakes" || enemy_attack == "Know Cone Blueberries" || enemy_attack == "Know Cone Oranges" || enemy_attack == "Know Cone Fig")
            {
                instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
                
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 128;
                    sprite_height_destination = 140;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
            else if (enemy_attack == "Frostermit Ice Cubes")
            {
                instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
                
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 95;
                    sprite_height_destination = 95;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
            else if (enemy_attack == "Frostermit Pinchers")
            {
                instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
                
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 100;
                    sprite_height_destination = 42;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
            else if (enemy_attack == "Know Cone Cherries")
            {
                instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
                
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 77;
                    sprite_height_destination = 140;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
        }
        else if (battle_enemy_name == "trihecta together" || battle_enemy_name == "trihecta separated")
        {
            if (enemy_attack == "Trihecta Circle Bounce")
            {
                instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
                
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 300;
                    sprite_height_destination = 130;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
            else if (enemy_attack == "Trihecta Circle Reflect")
            {
                instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
                
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 160;
                    sprite_height_destination = 160;
                    disjoint_x = 0;
                    disjoint_y = -10;
                }
            }
            else if (enemy_attack == "Trihecta Circle Stack")
            {
                instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
                
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 300;
                    sprite_height_destination = 136;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
        }
        else if (battle_enemy_name == "ceroba genocide")
        {
            if (enemy_attack == "Ceroba Fire Circle" || enemy_attack == "Ceroba Flower Barrage" || enemy_attack == "Ceroba Flower Spiral" || enemy_attack == "Ceroba Flower Spray" || enemy_attack == "Ceroba Split Attack" || enemy_attack == "Ceroba Diamond Attack" || enemy_attack == "Ceroba Phase Switcher")
            {
                instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
                
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 128;
                    sprite_height_destination = 140;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
            else if (enemy_attack == "Ceroba Opener")
            {
                instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
                
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 256;
                    sprite_height_destination = 180;
                    disjoint_x = 0;
                    disjoint_y = -80;
                }
            }
            else if (enemy_attack == "Ceroba Jumping Flowers")
            {
                instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
                
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 220;
                    sprite_height_destination = 140;
                    disjoint_x = 0;
                    disjoint_y = -20;
                }
            }
            else if (enemy_attack == "Ceroba Diamond Circle")
            {
                instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
                
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 200;
                    sprite_height_destination = 140;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
            else if (enemy_attack == "Ceroba Pillars G")
            {
                instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
                
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 300;
                    sprite_height_destination = 80;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
        }
        else if (battle_enemy_name == "martlet pacifist" || battle_enemy_name == "martlet genocide")
        {
            if (enemy_attack == "Martlet Feather Fall")
            {
                instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
                
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 128;
                    sprite_height_destination = 140;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
            else if (enemy_attack == "Martlet Feather Circle" || enemy_attack == "Martlet Feather Spiral" || enemy_attack == "Martlet Tornado" || enemy_attack == "Martlet Feather Finale" || enemy_attack == "Martlet Feather Flow")
            {
                instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
                
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 140;
                    sprite_height_destination = 140;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
            else if (enemy_attack == "Martlet Package")
            {
                instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
                
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 220;
                    sprite_height_destination = 140;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
            else if (enemy_attack == "Martlet Wing Gust")
            {
                instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
                
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 180;
                    sprite_height_destination = 140;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
        }
        else if (battle_enemy_name == "dunebud solo" || battle_enemy_name == "dunebud duo")
        {
            if (enemy_attack == "Dunebud Chase")
            {
                instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
                
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 250;
                    sprite_height_destination = 140;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
            else if (enemy_attack == "Dunebud Chase Tumbleweeds")
            {
                instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
                
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 250;
                    sprite_height_destination = 140;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
            else if (enemy_attack == "Dunebud Sandcastle")
            {
                instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
                
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 260;
                    sprite_height_destination = 180;
                    disjoint_x = 0;
                    disjoint_y = -20;
                }
            }
            else if (enemy_attack == "Dunebud Tumbleweeds")
            {
                instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
                
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 200;
                    sprite_height_destination = 140;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
        }
        else if (battle_enemy_name == "cactony solo" || (battle_enemy_name == "cactony slither duo" && (global.enemy_spared_2 + global.enemy_dead_2) >= 1))
        {
            if (enemy_attack == "Cactony Needle Side")
            {
                instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
                
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 140;
                    sprite_height_destination = 140;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
            else if (enemy_attack == "Cactony Needle Top")
            {
                instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
                
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 180;
                    sprite_height_destination = 180;
                    disjoint_x = 0;
                    disjoint_y = -20;
                }
            }
            else if (enemy_attack == "Cactony Needle Green")
            {
                instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
                
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 140;
                    sprite_height_destination = 140;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
        }
        else if (battle_enemy_name == "slither solo" || (battle_enemy_name == "cactony slither duo" && (global.enemy_spared + global.enemy_dead) >= 1))
        {
            if (enemy_attack == "Slither Snake")
            {
                instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
                
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 160;
                    sprite_height_destination = 160;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
            else if (enemy_attack == "Slither Pottery")
            {
                instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
                
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 140;
                    sprite_height_destination = 180;
                    disjoint_x = 0;
                    disjoint_y = -40;
                }
            }
        }
        else if (battle_enemy_name == "bowll solo")
        {
            if (enemy_attack == "Bowll Liquid")
            {
                instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
                
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 124;
                    sprite_height_destination = 140;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
            else if (enemy_attack == "Bowll Silverware")
            {
                instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
                
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 139;
                    sprite_height_destination = 139;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
            else if (enemy_attack == "Bowll Bull")
            {
                instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
                
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 157;
                    sprite_height_destination = 157;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
            else if (enemy_attack == "Bowll Test Song")
            {
                instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
                
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 158;
                    sprite_height_destination = 221;
                    disjoint_x = 0;
                    disjoint_y = -41;
                }
            }
        }
        else if (battle_enemy_name == "cactony slither duo" && (global.enemy_spared_2 + global.enemy_dead_2 + global.enemy_spared + global.enemy_dead) == 0)
        {
            if (enemy_attack == "Cactony Slither Attack 1")
            {
                instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
                
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 180;
                    sprite_height_destination = 180;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
            else if (enemy_attack == "Cactony Slither Attack 2")
            {
                instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
                
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 140;
                    sprite_height_destination = 140;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
        }
        else if (battle_enemy_name == "el bailador")
        {
            if (enemy_attack == "El Bailador Song")
            {
                instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
                
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 158;
                    sprite_height_destination = 221;
                    disjoint_x = 0;
                    disjoint_y = -41;
                }
            }
            else
            {
                instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
                
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 158;
                    sprite_height_destination = 221;
                    disjoint_x = 0;
                    disjoint_y = -41;
                }
            }
        }
        else if (battle_enemy_name == "flower girls")
        {
            instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
            
            if (enemy_attack == "Colored Flowers")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 200;
                    sprite_height_destination = 126;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
            else if (enemy_attack == "Growing Flowers")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 180;
                    sprite_height_destination = 140;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
            else if (enemy_attack == "Spinning Flowers")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 140;
                    sprite_height_destination = 140;
                    disjoint_x = 0;
                    disjoint_y = -20;
                }
            }
            else
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 140;
                    sprite_height_destination = 140;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
        }
        else if (battle_enemy_name == "starlo")
        {
            instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
            
            if (enemy_attack == "Starlo Guns Horizontal")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 140;
                    sprite_height_destination = 120;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
            else if (enemy_attack == "Starlo Guns Surround")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 120;
                    sprite_height_destination = 120;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
            else if (enemy_attack == "Starlo Shooting Dynamite")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 160;
                    sprite_height_destination = 140;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
            else if (enemy_attack == "Starlo Horseshoe")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 210;
                    sprite_height_destination = 210;
                    disjoint_x = 0;
                    disjoint_y = -60;
                }
            }
            else
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 140;
                    sprite_height_destination = 140;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
        }
        else if (battle_enemy_name == "boulders minifight")
        {
            instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
            
            if (enemy_attack == "Falling Boulders")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 120;
                    sprite_height_destination = 210;
                    disjoint_x = 0;
                    disjoint_y = -60;
                    image_xscale = (sprite_width_destination / sprite_width) * image_xscale_default;
                    image_yscale = (sprite_height_destination / sprite_width) * image_yscale_default;
                    y += disjoint_y;
                }
                
                script_execute(scr_battle_core_directory_enemy_attack_start);
            }
        }
        else if (enemy_attack == "Moray Balls")
        {
            instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
            
            with (obj_dialogue_box_battle_transformation_any_out)
            {
                sprite_width_destination = 200;
                sprite_height_destination = 100;
                disjoint_x = 0;
                disjoint_y = 0;
            }
        }
        else if (enemy_attack == "Ed Smash")
        {
            instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
            
            with (obj_dialogue_box_battle_transformation_any_out)
            {
                sprite_width_destination = 200;
                sprite_height_destination = 140;
                disjoint_x = 0;
                disjoint_y = 0;
            }
        }
        else if (enemy_attack == "Ace Dealing")
        {
            instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
            
            with (obj_dialogue_box_battle_transformation_any_out)
            {
                sprite_width_destination = 210;
                sprite_height_destination = 152;
                disjoint_x = 0;
                disjoint_y = -60;
            }
        }
        else if (enemy_attack == "Ace Cards")
        {
            instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
            
            with (obj_dialogue_box_battle_transformation_any_out)
            {
                sprite_width_destination = 120;
                sprite_height_destination = 140;
                disjoint_x = 0;
                disjoint_y = 0;
            }
        }
        else if (enemy_attack == "Grab & Moray")
        {
            instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
            
            with (obj_dialogue_box_battle_transformation_any_out)
            {
                sprite_width_destination = 100;
                sprite_height_destination = 140;
                disjoint_x = 0;
                disjoint_y = 0;
            }
        }
        else if (enemy_attack == "Mooch Bag")
        {
            instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
            
            with (obj_dialogue_box_battle_transformation_any_out)
            {
                sprite_width_destination = 80;
                sprite_height_destination = 80;
                disjoint_x = 0;
                disjoint_y = -20;
            }
        }
        else if (enemy_attack == "Ed Grab")
        {
            instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
            
            with (obj_dialogue_box_battle_transformation_any_out)
            {
                sprite_width_destination = 160;
                sprite_height_destination = 100;
                disjoint_x = 0;
                disjoint_y = -40;
            }
        }
        else if (enemy_attack == "Moray Spin")
        {
            instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
            
            with (obj_dialogue_box_battle_transformation_any_out)
            {
                sprite_width_destination = 120;
                sprite_height_destination = 180;
                disjoint_x = 0;
                disjoint_y = -40;
            }
        }
        else if (enemy_attack == "Coin Rain" || enemy_attack == "Coin Rain & Ace Cards")
        {
            instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
            
            with (obj_dialogue_box_battle_transformation_any_out)
            {
                sprite_width_destination = 76;
                sprite_height_destination = 140;
                disjoint_x = 0;
                disjoint_y = -20;
            }
        }
        else if (battle_enemy_name == "steam minifight")
        {
            instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
            
            if (enemy_attack == "Steam Puffs")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 140;
                    sprite_height_destination = 180;
                    disjoint_x = 0;
                    disjoint_y = -60;
                    image_xscale = (sprite_width_destination / sprite_width) * image_xscale_default;
                    image_yscale = (sprite_height_destination / sprite_width) * image_yscale_default;
                    y += disjoint_y;
                }
                
                script_execute(scr_battle_core_directory_enemy_attack_start);
            }
        }
        else if (battle_enemy_name == "energy balls minifight")
        {
            instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
            
            if (enemy_attack == "Energy Balls")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 160;
                    sprite_height_destination = 160;
                    disjoint_x = 0;
                    disjoint_y = 0;
                    image_xscale = (sprite_width_destination / sprite_width) * image_xscale_default;
                    image_yscale = (sprite_height_destination / sprite_width) * image_yscale_default;
                    y += disjoint_y;
                }
                
                script_execute(scr_battle_core_directory_enemy_attack_start);
            }
        }
        else if (battle_enemy_name == "jandroid" || (battle_enemy_name == "jandroid goosic duo" && (global.enemy_dead_2 + global.enemy_spared_2) >= 1) || battle_enemy_name == "jandroid duo")
        {
            instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
            
            if (enemy_attack == "Slippery Floor" || enemy_attack == "Double Jandroid Slippery Floor")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 160;
                    sprite_height_destination = 100;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
            else if (enemy_attack == "Garbage Cans" || enemy_attack == "Double Jandroid Gargbage Cans")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 90;
                    sprite_height_destination = 128;
                    disjoint_x = 0;
                    disjoint_y = -10;
                }
            }
            else if (enemy_attack == "Spray Bottle")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 110;
                    sprite_height_destination = 128;
                    disjoint_x = 0;
                    disjoint_y = -10;
                }
            }
        }
        else if (battle_enemy_name == "goosic" || (battle_enemy_name == "jandroid goosic duo" && (global.enemy_dead + global.enemy_spared) >= 1))
        {
            instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
            
            if (enemy_attack == "Goosic EQ Visualizer")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 140;
                    sprite_height_destination = 160;
                    disjoint_x = 0;
                    disjoint_y = -20;
                }
            }
            else if (enemy_attack == "Goosic Disk")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 128;
                    sprite_height_destination = 128;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
            else if (enemy_attack == "Goosic Speaker")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 140;
                    sprite_height_destination = 128;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
        }
        else if (battle_enemy_name == "tellyvis")
        {
            instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
            
            if (enemy_attack == "Tellyvis Logo")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 160;
                    sprite_height_destination = 120;
                    disjoint_x = 0;
                    disjoint_y = -10;
                }
            }
            else if (enemy_attack == "Tellyvis Remote")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 140;
                    sprite_height_destination = 140;
                    disjoint_x = 0;
                    disjoint_y = -10;
                }
            }
            else if (enemy_attack == "Tellyvis Tape")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 140;
                    sprite_height_destination = 140;
                    disjoint_x = 0;
                    disjoint_y = -10;
                }
            }
        }
        else if (battle_enemy_name == "sousborg")
        {
            instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
            
            if (enemy_attack == "Egg Crack")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 148;
                    sprite_height_destination = 160;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
            else if (enemy_attack == "Egg Boil")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 148;
                    sprite_height_destination = 160;
                    disjoint_x = 0;
                    disjoint_y = -20;
                }
            }
            else if (enemy_attack == "Sousborg Season")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 128;
                    sprite_height_destination = 128;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
            else if (enemy_attack == "Sousborg Flip")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 128;
                    sprite_height_destination = 128;
                    disjoint_x = 0;
                    disjoint_y = -60;
                }
            }
        }
        else if (battle_enemy_name == "jandroid goosic duo")
        {
            if (enemy_attack == "Jandroid Goosic Attack 1")
            {
                instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
                
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 140;
                    sprite_height_destination = 128;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
            else if (enemy_attack == "Jandroid Goosic Attack 2")
            {
                instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
                
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 90;
                    sprite_height_destination = 150;
                    disjoint_x = 0;
                    disjoint_y = -30;
                }
            }
        }
        else if (battle_enemy_name == "jandroid duo")
        {
            instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
            
            with (obj_dialogue_box_battle_transformation_any_out)
            {
                sprite_width_destination = 140;
                sprite_height_destination = 140;
                disjoint_x = 0;
                disjoint_y = 0;
            }
        }
        else if (battle_enemy_name == "axis")
        {
            instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
            
            if (enemy_attack == "Introductory Attack")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 160;
                    sprite_height_destination = 170;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
            else if (enemy_attack == "Energy Balls Spin 1" || enemy_attack == "Hand Laser" || enemy_attack == "Super Ball 4" || enemy_attack == "Super Ball 5" || enemy_attack == "Super Ball 6")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 140;
                    sprite_height_destination = 140;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
            else if (enemy_attack == "Energy Balls 1" || enemy_attack == "Energy Balls 2")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 140;
                    sprite_height_destination = 170;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
            else if (enemy_attack == "Super Ball 1")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 140;
                    sprite_height_destination = 180;
                    disjoint_x = 0;
                    disjoint_y = -20;
                }
            }
            else if (enemy_attack == "Super Ball 2")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 180;
                    sprite_height_destination = 180;
                    disjoint_x = 0;
                    disjoint_y = -20;
                }
            }
            else if (enemy_attack == "Color Lasers" || enemy_attack == "Color Lasers 2" || enemy_attack == "X Colors" || enemy_attack == "Super Ball 3")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 150;
                    sprite_height_destination = 150;
                    disjoint_x = 0;
                    disjoint_y = -20;
                }
            }
            else if (enemy_attack == "Steam Walls Spin" || enemy_attack == "Lobbing Bombs 2")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 132;
                    sprite_height_destination = 132;
                    disjoint_x = 0;
                    disjoint_y = -20;
                }
            }
            else if (enemy_attack == "Lobbing Bombs")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 120;
                    sprite_height_destination = 164;
                    disjoint_x = 0;
                    disjoint_y = -30;
                }
            }
            else if (enemy_attack == "Magnetic Orbs")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 220;
                    sprite_height_destination = 220;
                    disjoint_x = 0;
                    disjoint_y = -40;
                }
            }
            else if (enemy_attack == "Axis Turrets" || enemy_attack == "Axis Turrets 3")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 100;
                    sprite_height_destination = 100;
                    disjoint_x = 0;
                    disjoint_y = -40;
                }
            }
            else if (enemy_attack == "Axis Turrets 2")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 140;
                    sprite_height_destination = 140;
                    disjoint_x = 0;
                    disjoint_y = -40;
                }
            }
            else if (enemy_attack == "Laser Grid")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 180;
                    sprite_height_destination = 180;
                    disjoint_x = 0;
                    disjoint_y = -40;
                }
            }
            else if (enemy_attack == "Pulse Energy")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 100;
                    sprite_height_destination = 100;
                    disjoint_x = 0;
                    disjoint_y = -40;
                }
            }
            else
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 120;
                    sprite_height_destination = 140;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
        }
        else if (battle_enemy_name == "axis genocide")
        {
            instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
            
            if (enemy_attack == "Axis Geno At 1" || enemy_attack == "Axis Geno At 7")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 160;
                    sprite_height_destination = 160;
                    disjoint_x = 0;
                    disjoint_y = -40;
                }
            }
            else if (enemy_attack == "Axis Geno At 2" || enemy_attack == "Axis Geno At 3" || enemy_attack == "Axis Geno At 4" || enemy_attack == "Axis Geno At 5" || enemy_attack == "Axis Geno At 6" || enemy_attack == "Axis Geno At 9" || enemy_attack == "Axis Geno At 10")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 140;
                    sprite_height_destination = 140;
                    disjoint_x = 0;
                    disjoint_y = -20;
                    
                    if (enemy_attack == "Axis Geno At 4" || enemy_attack == "Axis Geno At 5" || enemy_attack == "Axis Geno At 6")
                        disjoint_y = -40;
                }
            }
            else if (enemy_attack == "Axis Geno At 8")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 60;
                    sprite_height_destination = 60;
                    disjoint_x = 0;
                    disjoint_y = -40;
                }
            }
            else
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 120;
                    sprite_height_destination = 140;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
        }
        else if (battle_enemy_name == "macro froggit")
        {
            instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
            
            if (enemy_attack == "Macro Transform")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 160;
                    sprite_height_destination = 160;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
            else if (enemy_attack == "Frogger")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 180;
                    sprite_height_destination = 160;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
            else if (enemy_attack == "Log Frogs")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 180;
                    sprite_height_destination = 120;
                    disjoint_x = 0;
                    disjoint_y = -40;
                }
            }
            else if (enemy_attack == "Space Frog")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 280;
                    sprite_height_destination = 120;
                    disjoint_x = 0;
                    disjoint_y = -40;
                }
            }
            else if (enemy_attack == "Gun Flies")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 260;
                    sprite_height_destination = 120;
                    disjoint_x = 0;
                    disjoint_y = -20;
                }
            }
            else if (enemy_attack == "Big Frogs")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 220;
                    sprite_height_destination = 100;
                    disjoint_x = 0;
                    disjoint_y = -20;
                }
            }
            else if (enemy_attack == "Tongue Attack")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 200;
                    sprite_height_destination = 160;
                    disjoint_x = 0;
                    disjoint_y = -20;
                }
            }
            else if (enemy_attack == "Sword Frog")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 260;
                    sprite_height_destination = 130;
                    disjoint_x = 0;
                    disjoint_y = -30;
                }
            }
            else if (enemy_attack == "Frog Choir")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 180;
                    sprite_height_destination = 200;
                    disjoint_x = 0;
                    disjoint_y = -40;
                }
            }
            else if (enemy_attack == "Mecha Frog")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 280;
                    sprite_height_destination = 200;
                    disjoint_x = 0;
                    disjoint_y = -50;
                }
            }
            else
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 140;
                    sprite_height_destination = 140;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
        }
        else if (battle_enemy_name == "guardener")
        {
            if (!instance_exists(obj_dialogue_box_battle_transformation_any_out))
            {
                instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
                
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 575;
                    sprite_height_destination = 140;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
            
            if (enemy_attack == "Guardener Attack 1" || enemy_attack == "Guardener Attack 6" || enemy_attack == "Guardener Attack 12" || enemy_attack == "Guardener Attack 8" || enemy_attack == "Guardener Attack 10")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 140;
                    sprite_height_destination = 140;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
            else if (enemy_attack == "Guardener Attack 2")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 160;
                    sprite_height_destination = 140;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
            else if (enemy_attack == "Guardener Attack 3")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 140;
                    sprite_height_destination = 180;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
            else if (enemy_attack == "Guardener Attack 4" || enemy_attack == "Guardener Attack 5" || enemy_attack == "Guardener Attack 7")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 160;
                    sprite_height_destination = 160;
                    disjoint_x = 0;
                    disjoint_y = -20;
                }
            }
            else if (enemy_attack == "Guardener Attack 9" || enemy_attack == "Guardener Attack 11")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 120;
                    sprite_height_destination = 140;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
            else if (enemy_attack == "Guardener Pacifist Opening")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 575;
                    sprite_height_destination = 140;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
            else
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 120;
                    sprite_height_destination = 140;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
        }
        else if (battle_enemy_name == "flowey")
        {
            instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
            
            if (enemy_attack == "Flowey Opener")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 128;
                    sprite_height_destination = 128;
                    disjoint_x = 0;
                    disjoint_y = 0;
                    image_xscale = (sprite_width_destination / sprite_width) * image_xscale_default;
                    image_yscale = (sprite_height_destination / sprite_width) * image_yscale_default;
                    y += disjoint_y;
                }
                
                script_execute(scr_battle_core_directory_enemy_attack_start);
                exit;
            }
            else if (enemy_attack == "Flowey Attack 1")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 90;
                    sprite_height_destination = 90;
                    disjoint_x = 0;
                    disjoint_y = -50;
                }
            }
            else if (enemy_attack == "Flowey Attack 2")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 128;
                    sprite_height_destination = 128;
                    disjoint_x = 0;
                    disjoint_y = -40;
                }
            }
            else if (enemy_attack == "Flowey Attack 3")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 128;
                    sprite_height_destination = 128;
                    disjoint_x = 0;
                    disjoint_y = -80;
                }
            }
            else if (enemy_attack == "Flowey Attack 4")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 128;
                    sprite_height_destination = 128;
                    disjoint_x = 0;
                    disjoint_y = -50;
                }
            }
            else if (enemy_attack == "Flowey Attack 5")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 128;
                    sprite_height_destination = 128;
                    disjoint_x = 0;
                    disjoint_y = -60;
                }
            }
            else if (enemy_attack == "Flowey Attack 6")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 220;
                    sprite_height_destination = 100;
                    disjoint_x = 0;
                    disjoint_y = -20;
                }
            }
            else if (enemy_attack == "Flowey Attack 7")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 128;
                    sprite_height_destination = 128;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
            else if (enemy_attack == "Flowey Attack 8")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 128;
                    sprite_height_destination = 128;
                    disjoint_x = 0;
                    disjoint_y = -40;
                }
            }
            else if (enemy_attack == "Flowey Attack 9")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 90;
                    sprite_height_destination = 110;
                    disjoint_x = 0;
                    disjoint_y = -60;
                }
            }
            else if (enemy_attack == "Flowey Attack 10")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 640;
                    sprite_height_destination = 480;
                    disjoint_x = 0;
                    disjoint_y = -80;
                }
            }
            else if (enemy_attack == "Flowey Corrupt Attack 1")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 244;
                    sprite_height_destination = 140;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
            else if (enemy_attack == "Flowey Corrupt Attack 2")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 158;
                    sprite_height_destination = 221;
                    disjoint_x = 0;
                    disjoint_y = -41;
                }
            }
            else if (enemy_attack == "Flowey Corrupt Attack 3")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 160;
                    sprite_height_destination = 140;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
            else if (enemy_attack == "Flowey Corrupt Attack 4")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 140;
                    sprite_height_destination = 180;
                    disjoint_x = 0;
                    disjoint_y = -40;
                }
            }
            else if (enemy_attack == "Flowey Corrupt Attack 5")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 140;
                    sprite_height_destination = 140;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
            else if (enemy_attack == "Flowey Corrupt Attack 6")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 140;
                    sprite_height_destination = 140;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
            else if (enemy_attack == "Flowey Corrupt Attack 7")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 140;
                    sprite_height_destination = 140;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
            
            instance_create_depth(0, 0, -999, obj_flowey_battle_screen_glitch_attack_switch);
            
            with (obj_dialogue_box_battle_transformation_any_out)
            {
                image_xscale = (sprite_width_destination / sprite_width) * image_xscale_default;
                image_yscale = (sprite_height_destination / sprite_height) * image_yscale_default;
                y += disjoint_y;
                x += disjoint_x;
                event_perform(ev_alarm, 0);
            }
        }
        else if (battle_enemy_name == "ceroba")
        {
            instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
            
            if (enemy_attack == "Ceroba Bells" || enemy_attack == "Ceroba Leaves")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 160;
                    sprite_height_destination = 128;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
            else if (enemy_attack == "Ceroba Bullets")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 130;
                    sprite_height_destination = 120;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
            else if (enemy_attack == "Ceroba Pillars")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 160;
                    sprite_height_destination = 120;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
            else if (enemy_attack == "Ceroba Staff")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 128;
                    sprite_height_destination = 128;
                    disjoint_x = 0;
                    disjoint_y = -20;
                }
            }
            else if (enemy_attack == "Ceroba Black Hole" || enemy_attack == "Ceroba Flower Circle Pacifist")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 128;
                    sprite_height_destination = 140;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
            else if (enemy_attack == "Ceroba Rotating Bullets")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 128;
                    sprite_height_destination = 128;
                    disjoint_x = 0;
                    disjoint_y = -40;
                }
            }
            else if (enemy_attack == "Ceroba Transform 1")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 60;
                    sprite_height_destination = 40;
                    disjoint_x = 0;
                    disjoint_y = 30;
                }
            }
            else if (enemy_attack == "Ceroba Phase 2 P1 Ribbon Attack")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 100;
                    sprite_height_destination = 140;
                    disjoint_x = 0;
                    disjoint_y = -30;
                }
            }
            else if (enemy_attack == "Ceroba Phase 2 P1 Obstacles")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 75;
                    sprite_height_destination = 140;
                    disjoint_x = 0;
                    disjoint_y = -30;
                }
            }
            else if (enemy_attack == "Ceroba Phase 2 P1 Falling Bells")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 160;
                    sprite_height_destination = 160;
                    disjoint_x = 0;
                    disjoint_y = -40;
                }
            }
            else if (enemy_attack == "Ceroba Shield Defense")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 190;
                    sprite_height_destination = 128;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
            else if (enemy_attack == "Ceroba Phase 2 Spawner" || enemy_attack == "Ceroba Phase 2 Spawner 2")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 300;
                    sprite_height_destination = 140;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
            else if (enemy_attack == "Ceroba Special Attack")
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 240;
                    sprite_height_destination = 140;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
            else
            {
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 140;
                    sprite_height_destination = 140;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
        }
        else if (battle_enemy_name == "martlet genocide final")
        {
            if (enemy_attack == "Martlet Wings" || enemy_attack == "Splitting Feathers + Martlet Wings" || enemy_attack == "Talon Scratch + Martlet Wings")
            {
                instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
                
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 150;
                    sprite_height_destination = 200;
                    disjoint_x = 0;
                    disjoint_y = -30;
                }
            }
            else if (enemy_attack == "Martlet Blocks" || enemy_attack == "Martlet Blocks 2")
            {
                instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
                
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 82;
                    sprite_height_destination = 160;
                    disjoint_x = 0;
                    disjoint_y = -20;
                }
            }
            else if (enemy_attack == "Martlet Talon Walls")
            {
                instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
                
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 200;
                    sprite_height_destination = 180;
                    disjoint_x = 0;
                    disjoint_y = -30;
                }
            }
            else if (enemy_attack == "Splitting Feathers + Talon Scratch" || enemy_attack == "Splitting Feathers + Talon Scratch 2" || enemy_attack == "Circular Scratch")
            {
                instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
                
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 140;
                    sprite_height_destination = 140;
                    disjoint_x = 0;
                    disjoint_y = -30;
                }
            }
            else if (enemy_attack == "Martlet Feather Circle Final")
            {
                instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
                
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 140;
                    sprite_height_destination = 140;
                    disjoint_x = 0;
                    disjoint_y = -40;
                }
            }
            else if (enemy_attack == "Wing Gust Final")
            {
                instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
                
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 180;
                    sprite_height_destination = 140;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
            else if (enemy_attack == "Martlet Phase 2 Blocks" || enemy_attack == "Martlet Phase 2 Blocks 4")
            {
                instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
                
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 106;
                    sprite_height_destination = 160;
                    disjoint_x = 0;
                    disjoint_y = -20;
                }
            }
            else if (enemy_attack == "Martlet Phase 2 Blocks 2")
            {
                instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
                
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 120;
                    sprite_height_destination = 120;
                    disjoint_x = 0;
                    disjoint_y = 20;
                }
            }
            else if (enemy_attack == "Martlet Phase 2 Blocks 3")
            {
                instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
                
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 106;
                    sprite_height_destination = 106;
                    disjoint_x = 0;
                    disjoint_y = -20;
                }
            }
            else
            {
                instance_create(319, 320, obj_dialogue_box_battle_transformation_any_out);
                
                with (obj_dialogue_box_battle_transformation_any_out)
                {
                    sprite_width_destination = 140;
                    sprite_height_destination = 140;
                    disjoint_x = 0;
                    disjoint_y = 0;
                }
            }
        }
        else if (battle_enemy_name == "asgore")
        {
            instance_create(319, 240, obj_dialogue_box_battle_transformation_any_out);
            
            with (obj_dialogue_box_battle_transformation_any_out)
            {
                sprite_width_destination = 200;
                sprite_height_destination = 280;
                disjoint_x = 0;
                disjoint_y = 0;
                image_xscale = (sprite_width_destination / sprite_width) * image_xscale_default;
                image_yscale = (sprite_height_destination / sprite_width) * image_yscale_default;
            }
            
            script_execute(scr_battle_core_directory_enemy_attack_start);
        }
    }
}
