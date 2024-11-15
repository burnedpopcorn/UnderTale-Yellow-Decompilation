function scr_determine_enemy_attack_yellow()
{
    var determine_attack_priority, battle_enemy_name, turns_passed, enemy_dead, enemy_spared, enemy_dead_2, enemy_spared_2, enemy_dead_3, enemy_spared_3, enemy_mode;
    
    if (live_call())
        return global.live_result;
    
    determine_attack_priority = global.determine_attack_priority;
    battle_enemy_name = global.battle_enemy_name;
    turns_passed = global.turns_passed;
    enemy_dead = global.enemy_dead;
    enemy_spared = global.enemy_spared;
    
    if (global.enemy_count >= 2)
    {
        enemy_dead_2 = global.enemy_dead_2;
        enemy_spared_2 = global.enemy_spared_2;
    }
    
    if (global.enemy_count >= 3)
    {
        enemy_dead_3 = global.enemy_dead_3;
        enemy_spared_3 = global.enemy_spared_3;
    }
    
    if (battle_enemy_name == "flier solo")
    {
        random_range_value = irandom_range(0, 2);
        
        if (random_range_value == 0)
        {
            global.enemy_attack = "Flier Flies";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (random_range_value == 1)
        {
            global.enemy_attack = "Flier Swarm";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (random_range_value == 2)
        {
            global.enemy_attack = "Flier Fire";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
    }
    else if (battle_enemy_name == "flier trio")
    {
        if ((enemy_dead + enemy_spared + enemy_dead_2 + enemy_spared_2 + enemy_dead_3 + enemy_spared_2) < 2)
        {
            random_range_value = irandom_range(0, 2);
            
            if (random_range_value == 0)
            {
                global.enemy_attack = "Flier Flies Double";
                global.soul_mode = "Red";
                global.image_alpha_enemy_attacking_immunity = false;
            }
            else if (random_range_value == 1)
            {
                global.enemy_attack = "Flier Swarm Double";
                global.soul_mode = "Red";
                global.image_alpha_enemy_attacking_immunity = false;
            }
            else if (random_range_value == 2)
            {
                global.enemy_attack = "Flier Fire Flies";
                global.soul_mode = "Red";
                global.image_alpha_enemy_attacking_immunity = false;
            }
        }
        else
        {
            random_range_value = irandom_range(0, 2);
            
            if (random_range_value == 0)
            {
                global.enemy_attack = "Flier Flies";
                global.soul_mode = "Red";
                global.image_alpha_enemy_attacking_immunity = false;
            }
            else if (random_range_value == 1)
            {
                global.enemy_attack = "Flier Swarm";
                global.soul_mode = "Red";
                global.image_alpha_enemy_attacking_immunity = false;
            }
            else if (random_range_value == 2)
            {
                global.enemy_attack = "Flier Fire";
                global.soul_mode = "Red";
                global.image_alpha_enemy_attacking_immunity = false;
            }
        }
    }
    else if (battle_enemy_name == "penilla solo")
    {
        random_range_value = irandom_range(0, 1);
        
        if (random_range_value == 0)
        {
            global.enemy_attack = "Penilla Drawing";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (random_range_value == 1)
        {
            global.enemy_attack = "Penilla Lines";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
    }
    else if (battle_enemy_name == "flier penilla duo")
    {
        if ((enemy_dead + enemy_spared + enemy_dead_2 + enemy_spared_2) < 1)
        {
            global.enemy_attack = "Flier Flies Drawing";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if ((enemy_dead_2 + enemy_spared_2) >= 1)
        {
            random_range_value = irandom_range(0, 1);
            
            if (random_range_value == 0)
            {
                global.enemy_attack = "Flier Flies";
                global.soul_mode = "Red";
                global.image_alpha_enemy_attacking_immunity = false;
            }
            else if (random_range_value == 1)
            {
                global.enemy_attack = "Flier Fire";
                global.soul_mode = "Red";
                global.image_alpha_enemy_attacking_immunity = false;
            }
        }
        else if ((enemy_dead + enemy_spared) >= 1)
        {
            random_range_value = irandom_range(0, 1);
            
            if (random_range_value == 0)
            {
                global.enemy_attack = "Penilla Drawing";
                global.soul_mode = "Red";
                global.image_alpha_enemy_attacking_immunity = false;
            }
            else if (random_range_value == 1)
            {
                global.enemy_attack = "Penilla Lines";
                global.soul_mode = "Red";
                global.image_alpha_enemy_attacking_immunity = false;
            }
        }
    }
    else if (battle_enemy_name == "sweet corn solo")
    {
        random_range_value = irandom_range(0, 2);
        
        if (random_range_value == 0)
        {
            global.enemy_attack = "Candy Corn";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (random_range_value == 1)
        {
            global.enemy_attack = "Spear Corn";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (random_range_value == 2)
        {
            global.enemy_attack = "Homing Corn";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
    }
    else if (battle_enemy_name == "sweet corn duo")
    {
        if ((enemy_dead + enemy_spared + enemy_dead_2 + enemy_spared_2) < 1)
        {
            random_range_value = irandom_range(0, 1);
            
            if (random_range_value == 0)
            {
                global.enemy_attack = "Candy Spear Corn";
                global.soul_mode = "Red";
                global.image_alpha_enemy_attacking_immunity = false;
            }
            else if (random_range_value == 1)
            {
                global.enemy_attack = "Homing Spear Corn";
                global.soul_mode = "Red";
                global.image_alpha_enemy_attacking_immunity = false;
            }
        }
        else
        {
            random_range_value = irandom_range(0, 2);
            
            if (random_range_value == 0)
            {
                global.enemy_attack = "Candy Corn";
                global.soul_mode = "Red";
                global.image_alpha_enemy_attacking_immunity = false;
            }
            else if (random_range_value == 1)
            {
                global.enemy_attack = "Spear Corn";
                global.soul_mode = "Red";
                global.image_alpha_enemy_attacking_immunity = false;
            }
            else if (random_range_value == 2)
            {
                global.enemy_attack = "Homing Corn";
                global.soul_mode = "Red";
                global.image_alpha_enemy_attacking_immunity = false;
            }
        }
    }
    else if (battle_enemy_name == "sweet corn penilla duo")
    {
        if ((enemy_dead + enemy_spared + enemy_dead_2 + enemy_spared_2) < 1)
        {
            global.enemy_attack = "Drawing Spear Corn";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if ((enemy_dead_2 + enemy_spared_2) >= 1)
        {
            random_range_value = irandom_range(0, 2);
            
            if (random_range_value == 0)
            {
                global.enemy_attack = "Candy Corn";
                global.soul_mode = "Red";
                global.image_alpha_enemy_attacking_immunity = false;
            }
            else if (random_range_value == 1)
            {
                global.enemy_attack = "Spear Corn";
                global.soul_mode = "Red";
                global.image_alpha_enemy_attacking_immunity = false;
            }
            else if (random_range_value == 2)
            {
                global.enemy_attack = "Homing Corn";
                global.soul_mode = "Red";
                global.image_alpha_enemy_attacking_immunity = false;
            }
        }
        else if ((enemy_dead + enemy_spared) >= 1)
        {
            random_range_value = irandom_range(0, 1);
            
            if (random_range_value == 0)
            {
                global.enemy_attack = "Penilla Drawing";
                global.soul_mode = "Red";
                global.image_alpha_enemy_attacking_immunity = false;
            }
            else if (random_range_value == 1)
            {
                global.enemy_attack = "Penilla Lines";
                global.soul_mode = "Red";
                global.image_alpha_enemy_attacking_immunity = false;
            }
        }
    }
    else if (battle_enemy_name == "crispy scroll solo")
    {
        random_range_value = irandom_range(0, 2);
        
        if (random_range_value == 0)
        {
            global.enemy_attack = "Crispy Slash";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (random_range_value == 1)
        {
            global.enemy_attack = "Crispy Laser";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (random_range_value == 2)
        {
            global.enemy_attack = "Crispy Tub";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
    }
    else if (battle_enemy_name == "crispy scroll penilla duo")
    {
        if ((enemy_dead + enemy_spared + enemy_dead_2 + enemy_spared_2) < 1)
        {
            global.enemy_attack = "Crispy Slash Drawing";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if ((enemy_dead_2 + enemy_spared_2) >= 1)
        {
            random_range_value = irandom_range(0, 2);
            
            if (random_range_value == 0)
            {
                global.enemy_attack = "Crispy Slash";
                global.soul_mode = "Red";
                global.image_alpha_enemy_attacking_immunity = false;
            }
            else if (random_range_value == 1)
            {
                global.enemy_attack = "Crispy Laser";
                global.soul_mode = "Red";
                global.image_alpha_enemy_attacking_immunity = false;
            }
            else if (random_range_value == 2)
            {
                global.enemy_attack = "Crispy Tub";
                global.soul_mode = "Red";
                global.image_alpha_enemy_attacking_immunity = false;
            }
        }
        else if ((enemy_dead + enemy_spared) >= 1)
        {
            random_range_value = irandom_range(0, 1);
            
            if (random_range_value == 0)
            {
                global.enemy_attack = "Penilla Drawing";
                global.soul_mode = "Red";
                global.image_alpha_enemy_attacking_immunity = false;
            }
            else if (random_range_value == 1)
            {
                global.enemy_attack = "Penilla Lines";
                global.soul_mode = "Red";
                global.image_alpha_enemy_attacking_immunity = false;
            }
        }
    }
    else if (battle_enemy_name == "rorrim solo")
    {
        random_range_value = irandom_range(0, 1);
        
        if (random_range_value == 0)
        {
            global.enemy_attack = "Rorrim Mirror";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (random_range_value == 1)
        {
            global.enemy_attack = "Rorrim Sparkle";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
    }
    else if (battle_enemy_name == "decibat")
    {
        if (turns_passed > 5)
        {
            global.turns_passed = 5;
            turns_passed = global.turns_passed;
        }
        
        if (turns_passed == 0)
        {
            global.enemy_attack = "Decibat Wave Blue";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = true;
        }
        else if (turns_passed == 1)
        {
            global.enemy_attack = "Decibat Wave Orange";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = true;
        }
        else if (turns_passed == 2)
        {
            global.enemy_attack = "Decibat Wave Multi";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = true;
        }
        else if (turns_passed == 3)
        {
            global.enemy_attack = "Decibat Wave Mini";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = true;
        }
        else if (turns_passed == 4)
        {
            global.enemy_attack = "Decibat Stalagmite";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (turns_passed == 5)
        {
            random_range_value = irandom_range(0, 2);
            
            if (random_range_value == 0)
            {
                global.enemy_attack = "Decibat Wave Multi";
                global.soul_mode = "Red";
                global.image_alpha_enemy_attacking_immunity = true;
            }
            else if (random_range_value == 1)
            {
                global.enemy_attack = "Decibat Wave Mini";
                global.soul_mode = "Red";
                global.image_alpha_enemy_attacking_immunity = true;
            }
            else if (random_range_value == 2)
            {
                global.enemy_attack = "Decibat Stalagmite";
                global.soul_mode = "Red";
                global.image_alpha_enemy_attacking_immunity = false;
            }
        }
    }
    else if (battle_enemy_name == "dalv")
    {
        if (turns_passed > 11)
        {
            global.turns_passed = 11;
            turns_passed = global.turns_passed;
        }
        
        if (global.determine_attack_priority == 1)
        {
            if (turns_passed <= 11)
            {
                if (global.enemy_attack == "Dalv Start" || global.enemy_attack == "Dalv Lightning Bolt")
                {
                    global.enemy_attack = "Dalv Lightning Vertical";
                    global.soul_mode = "Red";
                    global.image_alpha_enemy_attacking_immunity = false;
                }
                else if (global.enemy_attack == "Dalv Lightning Vertical")
                {
                    global.enemy_attack = "Dalv Lightning Dual";
                    global.soul_mode = "Red";
                    global.image_alpha_enemy_attacking_immunity = false;
                }
                else if (global.enemy_attack == "Dalv Lightning Dual")
                {
                    global.enemy_attack = "Dalv Lightning Balls";
                    global.soul_mode = "Red";
                    global.image_alpha_enemy_attacking_immunity = false;
                }
                else if (global.enemy_attack == "Dalv Lightning Balls")
                {
                    global.enemy_attack = "Dalv Lightning Shift";
                    global.soul_mode = "Red";
                    global.image_alpha_enemy_attacking_immunity = false;
                }
                else if (global.enemy_attack == "Dalv Lightning Shift")
                {
                    global.enemy_attack = "Dalv Lightning Spinner";
                    global.soul_mode = "Red";
                    global.image_alpha_enemy_attacking_immunity = false;
                }
                else if (global.enemy_attack == "Dalv Lightning Spinner")
                {
                    global.enemy_attack = "Dalv Lightning Bolt";
                    global.soul_mode = "Red";
                    global.image_alpha_enemy_attacking_immunity = true;
                }
            }
            
            if (turns_passed == 8)
            {
                enemy_mode = global.enemy_mode;
                
                switch (enemy_mode)
                {
                    case 2:
                        global.enemy_sparing = true;
                        break;
                }
            }
            else if (turns_passed == 9 && global.enemy_mode == 1 && global.enemy_mode_gen == 0)
            {
                global.enemy_sparing = true;
            }
            else if (turns_passed == 10)
            {
                enemy_mode = global.enemy_mode;
                
                switch (enemy_mode)
                {
                    case 0:
                        if (global.enemy_sparing == false && global.enemy_mode_gen == 0)
                            global.action_2_important = true;
                }
            }
        }
    }
    else if (battle_enemy_name == "micro froggit")
    {
        random_range_value = irandom_range(0, 1);
        
        if (random_range_value == 0)
        {
            global.enemy_attack = "Micro Fly";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (random_range_value == 1)
        {
            global.enemy_attack = "Micro Barrage";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
    }
    else if (battle_enemy_name == "insomnitot solo")
    {
        random_range_value = irandom_range(0, 2);
        
        if (random_range_value == 0)
        {
            global.enemy_attack = "Insomnitot Sheep";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (random_range_value == 1)
        {
            global.enemy_attack = "Insomnitot ZZZ";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (random_range_value == 2)
        {
            global.enemy_attack = "Insomnitot Stars";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
    }
    else if (battle_enemy_name == "insomnitot duo")
    {
        if ((enemy_dead + enemy_spared + enemy_dead_2 + enemy_spared_2) < 1 && !(global.enemy_sparing == true && global.enemy_low_hp == false) && !(global.enemy_sparing_2 == true && global.enemy_low_hp_2 == false))
        {
            random_range_value = 1;
            
            if (random_range_value == 0)
            {
                global.enemy_attack = "Insomnitot Sheep ZZZ";
                global.soul_mode = "Red";
                global.image_alpha_enemy_attacking_immunity = false;
            }
            else if (random_range_value == 1)
            {
                global.enemy_attack = "Insomnitot Sheep Stars";
                global.soul_mode = "Red";
                global.image_alpha_enemy_attacking_immunity = false;
            }
        }
        else
        {
            random_range_value = irandom_range(0, 2);
            
            if (random_range_value == 0)
            {
                global.enemy_attack = "Insomnitot Sheep";
                global.soul_mode = "Red";
                global.image_alpha_enemy_attacking_immunity = false;
            }
            else if (random_range_value == 1)
            {
                global.enemy_attack = "Insomnitot ZZZ";
                global.soul_mode = "Red";
                global.image_alpha_enemy_attacking_immunity = false;
            }
            else if (random_range_value == 2)
            {
                global.enemy_attack = "Insomnitot Stars";
                global.soul_mode = "Red";
                global.image_alpha_enemy_attacking_immunity = false;
            }
        }
    }
    else if (battle_enemy_name == "know cone solo")
    {
        random_range_value = irandom_range(0, 9);
        
        if (random_range_value >= 0 && random_range_value <= 2)
        {
            global.enemy_attack = "Know Cone Blueberries";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (random_range_value >= 3 && random_range_value <= 5)
        {
            global.enemy_attack = "Know Cone Oranges";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (random_range_value >= 6 && random_range_value <= 8)
        {
            global.enemy_attack = "Know Cone Cherries";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (random_range_value == 9)
        {
            global.enemy_attack = "Know Cone Fig";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
    }
    else if (battle_enemy_name == "know cone insomnitot duo")
    {
        if ((enemy_dead + enemy_spared + enemy_dead_2 + enemy_spared_2) < 1 && !(global.enemy_sparing_2 == true && global.enemy_low_hp_2 == false))
        {
            random_range_value = irandom_range(0, 1);
            
            if (random_range_value == 0)
            {
                global.enemy_attack = "Know Cone Blueberries ZZZ";
                global.soul_mode = "Red";
                global.image_alpha_enemy_attacking_immunity = false;
            }
            else if (random_range_value == 1)
            {
                global.enemy_attack = "Know Cone Oranges Stars";
                global.soul_mode = "Red";
                global.image_alpha_enemy_attacking_immunity = false;
            }
        }
        else if ((enemy_dead_2 + enemy_spared_2) >= 1 || (global.enemy_sparing_2 == true && global.enemy_low_hp_2 == false))
        {
            random_range_value = irandom_range(0, 9);
            
            if (random_range_value >= 0 && random_range_value <= 2)
            {
                global.enemy_attack = "Know Cone Blueberries";
                global.soul_mode = "Red";
                global.image_alpha_enemy_attacking_immunity = false;
            }
            else if (random_range_value >= 3 && random_range_value <= 5)
            {
                global.enemy_attack = "Know Cone Oranges";
                global.soul_mode = "Red";
                global.image_alpha_enemy_attacking_immunity = false;
            }
            else if (random_range_value >= 6 && random_range_value <= 8)
            {
                global.enemy_attack = "Know Cone Cherries";
                global.soul_mode = "Red";
                global.image_alpha_enemy_attacking_immunity = false;
            }
            else if (random_range_value == 9)
            {
                global.enemy_attack = "Know Cone Fig";
                global.soul_mode = "Red";
                global.image_alpha_enemy_attacking_immunity = false;
            }
        }
        else if ((enemy_dead + enemy_spared) >= 1)
        {
            random_range_value = irandom_range(0, 2);
            
            if (random_range_value == 0)
            {
                global.enemy_attack = "Insomnitot Sheep";
                global.soul_mode = "Red";
                global.image_alpha_enemy_attacking_immunity = false;
            }
            else if (random_range_value == 1)
            {
                global.enemy_attack = "Insomnitot ZZZ";
                global.soul_mode = "Red";
                global.image_alpha_enemy_attacking_immunity = false;
            }
            else if (random_range_value == 2)
            {
                global.enemy_attack = "Insomnitot Stars";
                global.soul_mode = "Red";
                global.image_alpha_enemy_attacking_immunity = false;
            }
        }
    }
    else if (battle_enemy_name == "frostermit solo")
    {
        enemy_mode = global.enemy_mode;
        
        switch (enemy_mode)
        {
            case 0:
                random_range_value = irandom_range(0, 1);
                break;
            
            case 1:
                random_range_value = irandom_range(0, 2);
                break;
            
            default:
                random_range_value = irandom_range(0, 1);
        }
        
        if (random_range_value == 0)
        {
            global.enemy_attack = "Frostermit Snowflakes";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (random_range_value == 1)
        {
            global.enemy_attack = "Frostermit Ice Cubes";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (random_range_value == 2)
        {
            global.enemy_attack = "Frostermit Pinchers";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
    }
    else if (battle_enemy_name == "frostermit know cone duo")
    {
        if ((enemy_dead + enemy_spared + enemy_dead_2 + enemy_spared_2) < 1)
        {
            random_range_value = irandom_range(0, 1);
            
            if (random_range_value == 0)
            {
                global.enemy_attack = "Frostermit Snowflakes Blueberries";
                global.soul_mode = "Red";
                global.image_alpha_enemy_attacking_immunity = false;
            }
            else if (random_range_value == 1)
            {
                global.enemy_attack = "Frostermit Snowflakes Oranges";
                global.soul_mode = "Red";
                global.image_alpha_enemy_attacking_immunity = false;
            }
        }
        else if ((enemy_dead_2 + enemy_spared_2) >= 1)
        {
            enemy_mode = global.enemy_mode;
            
            switch (enemy_mode)
            {
                case 0:
                    random_range_value = irandom_range(0, 1);
                    break;
                
                case 1:
                    random_range_value = irandom_range(0, 2);
                    break;
                
                default:
                    random_range_value = irandom_range(0, 1);
            }
            
            if (random_range_value == 0)
            {
                global.enemy_attack = "Frostermit Snowflakes";
                global.soul_mode = "Red";
                global.image_alpha_enemy_attacking_immunity = false;
            }
            else if (random_range_value == 1)
            {
                global.enemy_attack = "Frostermit Ice Cubes";
                global.soul_mode = "Red";
                global.image_alpha_enemy_attacking_immunity = false;
            }
            else if (random_range_value == 2)
            {
                global.enemy_attack = "Frostermit Pinchers";
                global.soul_mode = "Red";
                global.image_alpha_enemy_attacking_immunity = false;
            }
        }
        else if ((enemy_dead + enemy_spared) >= 1)
        {
            random_range_value = irandom_range(0, 9);
            
            if (random_range_value >= 0 && random_range_value <= 2)
            {
                global.enemy_attack = "Know Cone Blueberries";
                global.soul_mode = "Red";
                global.image_alpha_enemy_attacking_immunity = false;
            }
            else if (random_range_value >= 3 && random_range_value <= 5)
            {
                global.enemy_attack = "Know Cone Oranges";
                global.soul_mode = "Red";
                global.image_alpha_enemy_attacking_immunity = false;
            }
            else if (random_range_value >= 6 && random_range_value <= 8)
            {
                global.enemy_attack = "Know Cone Cherries";
                global.soul_mode = "Red";
                global.image_alpha_enemy_attacking_immunity = false;
            }
            else if (random_range_value == 9)
            {
                global.enemy_attack = "Know Cone Fig";
                global.soul_mode = "Red";
                global.image_alpha_enemy_attacking_immunity = false;
            }
        }
    }
    else if (battle_enemy_name == "trihecta together" || battle_enemy_name == "trihecta separated")
    {
        random_range_value = irandom_range(0, 2);
        
        if (random_range_value == 0)
        {
            global.enemy_attack = "Trihecta Circle Bounce";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (random_range_value == 1)
        {
            global.enemy_attack = "Trihecta Circle Reflect";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (random_range_value == 2)
        {
            global.enemy_attack = "Trihecta Circle Stack";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
    }
    else if (battle_enemy_name == "martlet pacifist")
    {
        if (global.attack_cycle == 0)
        {
            global.enemy_attack = "Martlet Feather Fall";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (global.attack_cycle == 1)
        {
            global.enemy_attack = "Martlet Package";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (global.attack_cycle == 2)
        {
            global.enemy_attack = "Martlet Feather Circle";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (global.attack_cycle == 3)
        {
            global.enemy_attack = "Martlet Feather Spiral";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (global.attack_cycle == 4)
        {
            global.enemy_attack = "Martlet Feather Flow";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (global.attack_cycle == 5)
        {
            global.enemy_attack = "Martlet Wing Gust";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = true;
        }
        else if (global.attack_cycle == 6)
        {
            global.enemy_attack = "Martlet Tornado";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
    }
    else if (battle_enemy_name == "martlet genocide")
    {
        if (global.enemy_mode == 3 && turns_passed == 5)
        {
            global.enemy_attack = "Martlet Feather Finale";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (global.attack_cycle == 0)
        {
            global.enemy_attack = "Martlet Feather Fall";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (global.attack_cycle == 1)
        {
            global.enemy_attack = "Martlet Package";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (global.attack_cycle == 2)
        {
            global.enemy_attack = "Martlet Feather Circle";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (global.attack_cycle == 3)
        {
            global.enemy_attack = "Martlet Feather Flow";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (global.attack_cycle == 4)
        {
            global.enemy_attack = "Martlet Feather Spiral";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (global.attack_cycle == 5)
        {
            global.enemy_attack = "Martlet Wing Gust";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = true;
        }
        else if (global.attack_cycle == 6)
        {
            global.enemy_attack = "Martlet Tornado";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
    }
    else if (battle_enemy_name == "dunebud solo")
    {
        random_range_value = irandom_range(0, 2);
        
        if (random_range_value == 0)
        {
            global.enemy_attack = "Dunebud Chase";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (random_range_value == 1)
        {
            global.enemy_attack = "Dunebud Sandcastle";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (random_range_value == 2)
        {
            global.enemy_attack = "Dunebud Tumbleweeds";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
    }
    else if (battle_enemy_name == "dunebud duo")
    {
        if ((enemy_dead + enemy_spared + enemy_dead_2 + enemy_spared_2) < 1 && !(global.enemy_spared == true && global.enemy_low_hp == false) && !(global.enemy_spared_2 == true && global.enemy_low_hp_2 == false))
        {
            random_range_value = 0;
            
            if (random_range_value == 0)
            {
                global.enemy_attack = "Dunebud Chase Tumbleweeds";
                global.soul_mode = "Red";
                global.image_alpha_enemy_attacking_immunity = false;
            }
            else if (random_range_value == 1)
            {
                global.enemy_attack = "Dunebud Tumbleweeds";
                global.soul_mode = "Red";
                global.image_alpha_enemy_attacking_immunity = false;
            }
        }
        else
        {
            random_range_value = irandom_range(0, 2);
            
            if (random_range_value == 0)
            {
                global.enemy_attack = "Dunebud Chase";
                global.soul_mode = "Red";
                global.image_alpha_enemy_attacking_immunity = false;
            }
            else if (random_range_value == 1)
            {
                global.enemy_attack = "Dunebud Sandcastle";
                global.soul_mode = "Red";
                global.image_alpha_enemy_attacking_immunity = false;
            }
            else if (random_range_value == 2)
            {
                global.enemy_attack = "Dunebud Tumbleweeds";
                global.soul_mode = "Red";
                global.image_alpha_enemy_attacking_immunity = false;
            }
        }
    }
    else if (battle_enemy_name == "cactony solo")
    {
        if (global.action_1_selected_count >= 1 && global.last_action_selected == "Action 1 Message 0")
        {
            global.enemy_attack = "Cactony Needle Green";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else
        {
            random_range_value = irandom_range(0, 1);
            
            if (random_range_value == 0)
            {
                global.enemy_attack = "Cactony Needle Side";
                global.soul_mode = "Red";
                global.image_alpha_enemy_attacking_immunity = false;
            }
            else if (random_range_value == 1)
            {
                global.enemy_attack = "Cactony Needle Top";
                global.soul_mode = "Red";
                global.image_alpha_enemy_attacking_immunity = false;
            }
        }
    }
    else if (battle_enemy_name == "slither solo")
    {
        random_range_value = irandom_range(0, 1);
        
        if (random_range_value == 0)
        {
            global.enemy_attack = "Slither Pottery";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (random_range_value == 1)
        {
            global.enemy_attack = "Slither Snake";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
    }
    else if (battle_enemy_name == "cactony slither duo")
    {
        if ((enemy_dead + enemy_spared + enemy_dead_2 + enemy_spared_2) < 1)
        {
            if (global.action_1_selected_count >= 1 && global.last_action_selected == "Action 1 Message 0")
            {
                global.enemy_attack = "Cactony Slither Attack 2";
                global.soul_mode = "Red";
                global.image_alpha_enemy_attacking_immunity = false;
            }
            else
            {
                global.enemy_attack = "Cactony Slither Attack 1";
                global.soul_mode = "Red";
                global.image_alpha_enemy_attacking_immunity = false;
            }
        }
        else if ((enemy_dead_2 + enemy_spared_2) >= 1)
        {
            if (global.action_1_selected_count >= 1 && global.last_action_selected == "Action 1 Message 0")
            {
                global.enemy_attack = "Cactony Needle Green";
                global.soul_mode = "Red";
                global.image_alpha_enemy_attacking_immunity = false;
            }
            else
            {
                random_range_value = irandom_range(0, 1);
                
                if (random_range_value == 0)
                {
                    global.enemy_attack = "Cactony Needle Side";
                    global.soul_mode = "Red";
                    global.image_alpha_enemy_attacking_immunity = false;
                }
                else if (random_range_value == 1)
                {
                    global.enemy_attack = "Cactony Needle Top";
                    global.soul_mode = "Red";
                    global.image_alpha_enemy_attacking_immunity = false;
                }
            }
        }
        else if ((enemy_dead + enemy_spared) >= 1)
        {
            random_range_value = irandom_range(0, 1);
            
            if (random_range_value == 0)
            {
                global.enemy_attack = "Slither Pottery";
                global.soul_mode = "Red";
                global.image_alpha_enemy_attacking_immunity = false;
            }
            else if (random_range_value == 1)
            {
                global.enemy_attack = "Slither Snake";
                global.soul_mode = "Red";
                global.image_alpha_enemy_attacking_immunity = false;
            }
        }
    }
    else if (battle_enemy_name == "bowll solo")
    {
        random_range_value = irandom_range(0, 2);
        
        if (random_range_value == 0)
        {
            global.enemy_attack = "Bowll Liquid";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (random_range_value == 1)
        {
            global.enemy_attack = "Bowll Silverware";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (random_range_value == 2)
        {
            global.enemy_attack = "Bowll Bull";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (random_range_value == 3)
        {
            global.enemy_attack = "Bowll Test Song";
            global.soul_mode = "Yellow Rhythm";
            global.image_alpha_enemy_attacking_immunity = false;
        }
    }
    else if (battle_enemy_name == "el bailador")
    {
        global.enemy_attack = "El Bailador Song";
        global.soul_mode = "Yellow Rhythm";
        global.image_alpha_enemy_attacking_immunity = true;
        
        if (global.route == 3)
        {
            global.soul_mode = "Red";
            
            if (global.enemy_sparing)
                global.enemy_attack = "Bailador No Attack";
        }
    }
    else if (battle_enemy_name == "flower girls")
    {
        if ((global.dunes_flag[31] == 1 && global.action_2_selected_count > 0) || (global.dunes_flag[31] == 2 && global.action_1_selected_count > 0) || (global.dunes_flag[31] == 3 && global.action_2_selected_count > 0))
        {
            global.enemy_attack = "Falling Flowers";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
            exit;
        }
        
        random_range_value = irandom_range(0, 2);
        
        if (random_range_value == 0)
        {
            global.enemy_attack = "Colored Flowers";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (random_range_value == 1)
        {
            global.enemy_attack = "Growing Flowers";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (random_range_value == 2)
        {
            global.enemy_attack = "Spinning Flowers";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
    }
    else if (battle_enemy_name == "dummy training pacifist")
    {
        global.enemy_attack = "Nothing";
        global.soul_mode = "Red";
        global.image_alpha_enemy_attacking_immunity = true;
    }
    else if (battle_enemy_name == "ceroba genocide")
    {
        if (global.current_hp_enemy <= (global.max_hp_enemy * 0.5) && global.battle_phase == 1)
        {
            global.enemy_attack = "Ceroba Phase Switcher";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
            exit;
        }
        
        if (global.attack_cycle == 0)
        {
            global.enemy_attack = "Ceroba Opener";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (global.attack_cycle == 1)
        {
            global.enemy_attack = "Ceroba Flower Barrage";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (global.attack_cycle == 2)
        {
            global.enemy_attack = "Ceroba Diamond Attack";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (global.attack_cycle == 3)
        {
            global.enemy_attack = "Ceroba Flower Spray";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (global.attack_cycle == 4)
        {
            global.enemy_attack = "Ceroba Fire Circle";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (global.attack_cycle == 5)
        {
            global.enemy_attack = "Ceroba Flower Spiral";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (global.attack_cycle == 6)
        {
            global.enemy_attack = "Ceroba Jumping Flowers";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = true;
        }
        else if (global.attack_cycle == 7)
        {
            global.enemy_attack = "Ceroba Pillars G";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
    }
    else if (battle_enemy_name == "starlo")
    {
        if (global.attack_cycle == -1)
        {
            global.enemy_attack = "Starlo Intro";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (global.attack_cycle == 0)
        {
            global.enemy_attack = "Starlo Guns Horizontal";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (global.attack_cycle == 1)
        {
            global.enemy_attack = "Starlo Bullet Rain";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (global.attack_cycle == 2)
        {
            global.enemy_attack = "Starlo Dynamite";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (global.attack_cycle == 3)
        {
            global.enemy_attack = "Starlo Horseshoe";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (global.attack_cycle == 4)
        {
            global.enemy_attack = "Starlo Guns n Dynamite";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (global.attack_cycle == 5)
        {
            global.enemy_attack = "Starlo Bell";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (global.attack_cycle == 6)
        {
            global.enemy_attack = "Starlo Bottles";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (global.attack_cycle == 7)
        {
            global.enemy_attack = "Starlo Train";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (global.attack_cycle == 8)
        {
            global.enemy_attack = "Starlo Take Aim One";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (global.attack_cycle == 9)
        {
            global.enemy_attack = "Starlo Take Aim";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (global.attack_cycle == 10)
        {
            global.enemy_attack = "Starlo Guns Surround";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (global.attack_cycle == 11)
        {
            global.enemy_attack = "Starlo Bell and Guns";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (global.attack_cycle == 12)
        {
            global.enemy_attack = "Starlo Take Aim Slow";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (global.attack_cycle == 13)
        {
            global.enemy_attack = "Starlo Shooting Dynamite";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (global.attack_cycle == 14)
        {
            global.enemy_attack = "Starlo Surround Slow";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (global.attack_cycle == 15)
        {
            global.enemy_attack = "Starlo Finale";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (global.attack_cycle == 16)
        {
            global.enemy_attack = "Starlo No Attack";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
    }
    else if (battle_enemy_name == "boulders minifight")
    {
        global.enemy_attack = "Falling Boulders";
        global.soul_mode = "Red";
        global.image_alpha_enemy_attacking_immunity = false;
    }
    else if (battle_enemy_name == "feisty five")
    {
        switch (global.attack_cycle)
        {
            case 0:
                global.enemy_attack = "Ed Smash";
                break;
            
            case 1:
                global.enemy_attack = "Moray Balls";
                break;
            
            case 2:
                global.enemy_attack = "Ace Dealing";
                break;
            
            case 3:
                global.enemy_attack = "Mooch Bag";
                break;
            
            case 4:
                global.enemy_attack = "Ed Grab";
                break;
            
            case 5:
                global.enemy_attack = "Moray Spin";
                break;
            
            case 6:
                global.enemy_attack = "Ace Cards";
                break;
            
            case 7:
                global.enemy_attack = "Coin Rain";
                break;
            
            case 8:
                global.enemy_attack = "Grab & Moray";
                break;
            
            case 9:
                global.enemy_attack = "Coin Rain & Ace Cards";
                break;
            
            case 10:
                global.enemy_attack = "Ed Smash";
                break;
        }
        
        global.soul_mode = "Red";
        global.image_alpha_enemy_attacking_immunity = false;
    }
    else if (battle_enemy_name == "steam minifight")
    {
        global.enemy_attack = "Steam Puffs";
        global.soul_mode = "Red";
        global.image_alpha_enemy_attacking_immunity = false;
    }
    else if (battle_enemy_name == "energy balls minifight")
    {
        global.enemy_attack = "Energy Balls";
        global.soul_mode = "Red";
        global.image_alpha_enemy_attacking_immunity = false;
    }
    else if (battle_enemy_name == "jandroid" || (battle_enemy_name == "jandroid goosic duo" && (enemy_dead_2 + enemy_spared_2) >= 1) || (battle_enemy_name == "jandroid duo" && (enemy_dead_2 + enemy_spared_2 + enemy_dead + enemy_spared) >= 1))
    {
        if (global.last_action_selected == "Action 2 Message 0" || global.last_action_selected_2 == "Action 2 Message 0")
        {
            global.enemy_attack = "Garbage Cans";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else
        {
            random_range_value = irandom_range(0, 1);
            
            if (random_range_value == 0)
            {
                global.enemy_attack = "Spray Bottle";
                global.soul_mode = "Red";
                global.image_alpha_enemy_attacking_immunity = false;
            }
            else if (random_range_value == 1)
            {
                global.enemy_attack = "Slippery Floor";
                global.soul_mode = "Red";
                global.image_alpha_enemy_attacking_immunity = false;
            }
        }
    }
    else if (battle_enemy_name == "jandroid duo")
    {
        if (global.last_action_selected == "Action 2 Message 0" || global.last_action_selected_2 == "Action 2 Message 0")
        {
            global.enemy_attack = "Double Jandroid Gargbage Cans";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else
        {
            random_range_value = irandom_range(0, 0);
            
            if (random_range_value == 0)
            {
                global.enemy_attack = "Double Jandroid Slippery Floor";
                global.soul_mode = "Red";
                global.image_alpha_enemy_attacking_immunity = false;
            }
        }
    }
    else if (battle_enemy_name == "goosic" || (battle_enemy_name == "jandroid goosic duo" && (enemy_dead + enemy_spared) >= 1))
    {
        random_range_value = irandom_range(0, 2);
        
        if (random_range_value == 0)
        {
            global.enemy_attack = "Goosic Speaker";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (random_range_value == 1)
        {
            global.enemy_attack = "Goosic Disk";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (random_range_value == 2)
        {
            global.enemy_attack = "Goosic EQ Visualizer";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
    }
    else if (battle_enemy_name == "jandroid goosic duo")
    {
        show_debug_message(global.last_action_selected);
        
        if (global.last_action_selected == "Action 2 Message 0")
        {
            global.enemy_attack = "Jandroid Goosic Attack 2";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else
        {
            global.enemy_attack = "Jandroid Goosic Attack 1";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
    }
    else if (battle_enemy_name == "tellyvis")
    {
        random_range_value = irandom_range(0, 2);
        
        if (random_range_value == 0)
        {
            global.enemy_attack = "Tellyvis Logo";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (random_range_value == 1)
        {
            global.enemy_attack = "Tellyvis Remote";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (random_range_value == 2)
        {
            global.enemy_attack = "Tellyvis Tape";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
    }
    else if (battle_enemy_name == "sousborg")
    {
        global.soul_mode = "Red";
        global.image_alpha_enemy_attacking_immunity = false;
    }
    else if (battle_enemy_name == "axis")
    {
        turns_passed = global.special_action_count;
        
        if (global.enemy_sparing)
            global.enemy_attack = "Guardener No Attack";
        
        if ((instance_exists(obj_battlebox_controller_axis) && obj_battlebox_controller_axis.axis_trash_meter >= 100) || turns_passed != global.special_action_count_last)
        {
            global.enemy_attack = "Super Ball 1";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else
        {
            switch (global.attack_cycle)
            {
                case 0:
                    global.enemy_attack = "Introductory Attack";
                    break;
                
                case 1:
                    global.enemy_attack = "Energy Balls 1";
                    break;
                
                case 2:
                    global.enemy_attack = "Energy Balls 2";
                    break;
                
                case 3:
                    global.enemy_attack = "Energy Balls Spin 1";
                    break;
                
                case 4:
                    global.enemy_attack = "Hand Laser";
                    break;
                
                case 5:
                    global.enemy_attack = "Color Lasers";
                    break;
                
                case 6:
                    global.enemy_attack = "Color Lasers 2";
                    break;
                
                case 7:
                    global.enemy_attack = "Steam Walls Spin";
                    break;
                
                case 8:
                    global.enemy_attack = "Lobbing Bombs";
                    break;
                
                case 9:
                    global.enemy_attack = "X Colors";
                    break;
                
                case 10:
                    global.enemy_attack = "Lobbing Bombs 2";
                    break;
                
                case 11:
                    global.enemy_attack = "Magnetic Orbs";
                    break;
                
                case 12:
                    global.enemy_attack = "Axis Turrets";
                    break;
                
                case 13:
                    global.enemy_attack = "Axis Turrets 2";
                    break;
                
                case 14:
                    global.enemy_attack = "Laser Grid";
                    break;
                
                case 15:
                    global.enemy_attack = "Pulse Energy";
                    break;
                
                case 16:
                    global.enemy_attack = "Axis Turrets 3";
                    break;
            }
            
            global.image_alpha_enemy_attacking_immunity = false;
        }
        
        global.soul_mode = "Red";
    }
    else if (battle_enemy_name == "axis genocide")
    {
        if (global.enemy_sparing)
        {
            global.enemy_attack = "Guardener No Attack";
        }
        else
        {
            switch (global.attack_cycle)
            {
                case 0:
                    global.enemy_attack = "Axis Geno At 1";
                    break;
                
                case 1:
                    global.enemy_attack = "Axis Geno At 2";
                    break;
                
                case 2:
                    global.enemy_attack = "Axis Geno At 3";
                    break;
                
                case 3:
                    global.enemy_attack = "Axis Geno At 4";
                    break;
                
                case 4:
                    global.enemy_attack = "Axis Geno At 5";
                    break;
                
                case 5:
                    global.enemy_attack = "Axis Geno At 6";
                    break;
                
                case 6:
                    global.enemy_attack = "Axis Geno At 7";
                    break;
                
                case 7:
                    global.enemy_attack = "Axis Geno At 8";
                    break;
                
                case 8:
                    global.enemy_attack = "Axis Geno At 9";
                    break;
                
                case 9:
                    global.enemy_attack = "Axis Geno At 10";
                    break;
            }
            
            global.image_alpha_enemy_attacking_immunity = false;
        }
        
        global.soul_mode = "Red";
    }
    else if (battle_enemy_name == "macro froggit")
    {
        switch (global.turns_passed)
        {
            case 0:
                global.enemy_attack = "Macro Transform";
                break;
            
            case 1:
                global.enemy_attack = "Tongue Attack";
                break;
            
            case 2:
                global.enemy_attack = "Frogger";
                break;
            
            case 3:
                global.enemy_attack = "Flies Bullet Hell";
                break;
            
            case 4:
                global.enemy_attack = "Log Frogs";
                break;
            
            case 5:
                global.enemy_attack = "Gun Flies";
                break;
            
            case 6:
                global.enemy_attack = "Space Frog";
                break;
            
            case 7:
                global.enemy_attack = "Big Frogs";
                break;
            
            case 8:
                global.enemy_attack = "Frog Choir";
                break;
            
            case 9:
                global.enemy_attack = "Sword Frog";
                break;
            
            case 10:
                global.enemy_attack = "Mecha Frog";
                break;
        }
        
        global.image_alpha_enemy_attacking_immunity = false;
        global.soul_mode = "Red";
    }
    else if (battle_enemy_name == "guardener")
    {
        if (global.turns_passed > 9 && global.enemy_mode == 0)
            global.turns_passed = 9;
        
        switch (global.turns_passed)
        {
            case 0:
                global.enemy_attack = "Guardener Attack 1";
                break;
            
            case 1:
                global.enemy_attack = "Guardener Attack 2";
                break;
            
            case 2:
                global.enemy_attack = "Guardener Attack 3";
                break;
            
            case 3:
                global.enemy_attack = "Guardener Attack 4";
                break;
            
            case 4:
                global.enemy_attack = "Guardener Attack 5";
                break;
            
            case 5:
                global.enemy_attack = "Guardener Attack 7";
                break;
            
            case 6:
                global.enemy_attack = "Guardener Attack 8";
                break;
            
            case 7:
                global.enemy_attack = "Guardener Attack 6";
                break;
            
            case 8:
                global.enemy_attack = "Guardener Attack 9";
                break;
            
            case 9:
                global.enemy_attack = "Guardener Attack " + string(irandom_range(1, 9));
                break;
            
            case 10:
                global.enemy_attack = "Guardener Attack 10";
                break;
            
            case 11:
                global.enemy_attack = "Guardener Attack " + string(choose(irandom_range(1, 5), irandom_range(7, 8)));
                break;
            
            case 12:
                global.enemy_attack = "Guardener Attack 12";
                break;
            
            case 13:
                global.enemy_attack = "Guardener Attack 11";
                break;
            
            case 14:
            case 15:
            case 16:
                global.enemy_attack = "Guardener Attack " + string(choose(irandom_range(1, 5), irandom_range(7, 8)));
                break;
        }
        
        if (global.enemy_sparing)
            global.enemy_attack = "Guardener No Attack";
        
        global.soul_mode = "Red";
        global.image_alpha_enemy_attacking_immunity = false;
    }
    else if (battle_enemy_name == "flowey")
    {
        switch (global.turns_passed)
        {
            case 0:
                global.enemy_attack = "Flowey Opener";
                break;
        }
        
        global.soul_mode = "Red";
        global.image_alpha_enemy_attacking_immunity = false;
    }
    else if (battle_enemy_name == "ceroba")
    {
        if (instance_exists(obj_ceroba_phase_2_shield))
        {
            if (obj_ceroba_phase_2_shield.scene >= 9)
            {
                global.enemy_attack = "Ceroba Shield Defense";
                global.soul_mode = "Red";
                global.image_alpha_enemy_attacking_immunity = false;
                exit;
            }
        }
        
        switch (global.attack_cycle)
        {
            case 0:
                global.enemy_attack = "Ceroba Bullets";
                break;
            
            case 1:
                global.enemy_attack = "Ceroba Shotgun Pacifist";
                break;
            
            case 2:
                global.enemy_attack = "Ceroba Leaves";
                break;
            
            case 3:
                global.enemy_attack = "Ceroba Diamond Pacifist";
                break;
            
            case 4:
                global.enemy_attack = "Ceroba Flower Circle Pacifist";
                break;
            
            case 5:
                global.enemy_attack = "Ceroba Bells";
                break;
            
            case 6:
                global.enemy_attack = "Ceroba Black Hole";
                break;
            
            case 7:
                global.enemy_attack = "Ceroba Pillars";
                break;
            
            case 8:
                global.enemy_attack = "Ceroba Staff";
                break;
            
            case 9:
                global.enemy_attack = "Ceroba Rotating Bullets";
                break;
            
            case 10:
                global.enemy_attack = "Ceroba Transform 1";
                break;
            
            case 11:
                global.enemy_attack = "Ceroba Phase 2 P1 Lanterns";
                break;
            
            case 12:
                global.enemy_attack = "Ceroba Phase 2 P1 Spawner Mask";
                break;
            
            case 13:
                global.enemy_attack = "Ceroba Phase 2 P1 Circling Lanterns";
                break;
            
            case 14:
                global.enemy_attack = "Ceroba Phase 2 P1 Falling Bells";
                break;
            
            case 15:
                global.attack_cycle = 16;
            
            case 16:
                global.enemy_attack = "Ceroba Phase 2 P1 Obstacles";
                break;
            
            case 17:
                global.enemy_attack = "Ceroba Phase 2 P1 Ribbon Attack";
                break;
            
            case 18:
                global.enemy_attack = "Ceroba Phase 2 Spawner";
                
                if (global.hotland_flag[2] == 3)
                    global.enemy_attack = "Ceroba Phase 2 Spawner 2";
                
                break;
            
            case 19:
                global.enemy_attack = "Ceroba Special Attack";
                break;
        }
        
        if (global.enemy_sparing)
            global.enemy_attack = "Guardener No Attack";
        
        global.soul_mode = "Red";
        global.image_alpha_enemy_attacking_immunity = false;
    }
    else if (battle_enemy_name == "martlet genocide final")
    {
        switch (global.attack_cycle)
        {
            case 0:
                if (global.hotland_flag[9] < 2)
                    global.enemy_attack = "Martlet Final Opener";
                else
                    global.enemy_attack = "Martlet Final 2 Opener";
                
                break;
            
            case 1:
                global.enemy_attack = "Splitting Feathers";
                break;
            
            case 2:
                global.enemy_attack = "Talon Scratch";
                break;
            
            case 3:
                global.enemy_attack = "Martlet Wings";
                break;
            
            case 4:
                global.enemy_attack = "Splitting Feathers + Talon Scratch";
                break;
            
            case 5:
                global.enemy_attack = "Splitting Feathers + Martlet Wings";
                break;
            
            case 6:
                global.enemy_attack = "Talon Scratch + Martlet Wings";
                break;
            
            case 7:
                global.enemy_attack = "Martlet Feather Circle Final";
                break;
            
            case 8:
                global.enemy_attack = "Circular Scratch";
                break;
            
            case 9:
                global.enemy_attack = "Falling Meteors";
                break;
            
            case 10:
                global.enemy_attack = "Feathers Meteors";
                break;
            
            case 11:
                global.enemy_attack = "Splitting Feathers + Talon Scratch 2";
                break;
            
            case 20:
                global.enemy_attack = "Martlet Talon Walls";
                break;
            
            case 21:
                global.enemy_attack = "Wing Gust Final";
                break;
            
            case 30:
                global.enemy_attack = "Martlet Blocks";
                break;
            
            case 31:
                global.enemy_attack = "Martlet Gauntlet 1";
                break;
            
            case 32:
                global.enemy_attack = "Martlet Blocks 2";
                break;
            
            case 33:
                global.enemy_attack = "Martlet Gauntlet 2";
                break;
            
            case 40:
                global.enemy_attack = "Martlet Phase 2 Blocks";
                break;
            
            case 41:
                global.enemy_attack = "Martlet Phase 2 Blocks 2";
                break;
            
            case 42:
                global.enemy_attack = "Martlet Phase 2 Blocks 3";
                break;
            
            case 43:
                global.enemy_attack = "Martlet Phase 2 Blocks 4";
                break;
        }
        
        global.soul_mode = "Red";
        global.image_alpha_enemy_attacking_immunity = false;
    }
}
