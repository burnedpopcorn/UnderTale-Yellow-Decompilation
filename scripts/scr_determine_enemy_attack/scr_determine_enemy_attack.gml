function scr_determine_enemy_attack()
{
    var determine_attack_priority = global.determine_attack_priority;
    var battle_enemy_name = global.battle_enemy_name;
    var turns_passed = global.turns_passed;
    
    if (battle_enemy_name == "craniex")
    {
        if (turns_passed > 5)
        {
            global.turns_passed = 3;
            turns_passed = global.turns_passed;
        }
        
        if (turns_passed == 0)
        {
            global.action_amount = 3;
            global.enemy_attack = "Falling Stars";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (turns_passed == 1)
        {
            global.action_amount = 3;
            global.enemy_attack = "Graphing Exercise";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (turns_passed == 2)
        {
            global.action_amount = 3;
            global.enemy_attack = "Virus Dodge";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (turns_passed == 3)
        {
            global.action_amount = 3;
            global.enemy_attack = "Falling Stars Pro";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (turns_passed == 4)
        {
            global.action_amount = 3;
            global.enemy_attack = "Graphing Exercise Pro";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (turns_passed == 5)
        {
            global.action_amount = 3;
            global.enemy_attack = "Virus Dodge Pro";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = false;
        }
    }
    
    if (battle_enemy_name == "ms mettaton")
    {
        var ms_mettaton_transformed = global.ms_mettaton_transformed;
        
        if (ms_mettaton_transformed == false && turns_passed > 4)
        {
            global.turns_passed = 4;
            turns_passed = global.turns_passed;
        }
        else if (ms_mettaton_transformed == true && turns_passed > 19)
        {
            global.turns_passed = 5;
            turns_passed = global.turns_passed;
        }
        
        if (turns_passed == 0)
        {
            global.action_amount = 1;
            global.enemy_attack = "Ms. Mettaton Turn Soul Blue";
            global.soul_mode = "Red";
            global.image_alpha_enemy_attacking_immunity = true;
        }
        else if (turns_passed == 1)
        {
            global.action_amount = 1;
            global.enemy_attack = "Minion Rush 1";
            global.soul_mode = "Blue";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (turns_passed == 2)
        {
            global.action_amount = 1;
            global.enemy_attack = "Minion Ambush 1";
            global.soul_mode = "Blue";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (turns_passed == 3)
        {
            global.action_amount = 1;
            global.enemy_attack = "Ms. Mettaton Fists 1";
            global.soul_mode = "Blue";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (turns_passed == 4)
        {
            global.action_amount = 1;
            global.action_1_important = true;
            global.enemy_attack = "Ms. Mettaton Bored Of Fighting";
            global.soul_mode = "Blue";
            global.image_alpha_enemy_attacking_immunity = true;
        }
        else if (turns_passed == 5)
        {
            global.action_amount = 3;
            global.action_1_important = false;
            global.enemy_attack = "Minion Rush 2";
            global.soul_mode = "Blue";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (turns_passed == 6)
        {
            global.action_amount = 3;
            global.enemy_attack = "Minion Ambush 2";
            global.soul_mode = "Blue";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (turns_passed == 7)
        {
            global.action_amount = 3;
            global.enemy_attack = "Ms. Mettaton Fists 2";
            global.soul_mode = "Blue";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (turns_passed == 8)
        {
            global.action_amount = 3;
            global.enemy_attack = "Ms. Mettaton Fists 3";
            global.soul_mode = "Blue";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (turns_passed == 9)
        {
            global.action_amount = 3;
            global.enemy_attack = "Ms. Mettaton Happy Breaktime";
            global.soul_mode = "Blue";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (turns_passed == 10)
        {
            global.action_amount = 3;
            global.ms_mettaton_popularity_rating = "GOOD!!";
            global.enemy_attack = "Minion Rush 3";
            global.soul_mode = "Blue";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (turns_passed == 11)
        {
            global.action_amount = 3;
            global.enemy_attack = "Minion Ambush 3";
            global.soul_mode = "Blue";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (turns_passed == 12)
        {
            global.action_amount = 3;
            global.enemy_attack = "Ms. Mettaton Fists 4";
            global.soul_mode = "Blue";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (turns_passed == 13)
        {
            global.action_amount = 3;
            global.enemy_attack = "Ms. Mettaton Fists 5";
            global.soul_mode = "Blue";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (turns_passed == 14)
        {
            global.action_amount = 3;
            global.enemy_attack = "Ms. Mettaton Happy Breaktime";
            global.soul_mode = "Blue";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (turns_passed == 15)
        {
            global.action_amount = 3;
            global.ms_mettaton_popularity_rating = "FABU!!";
            global.enemy_attack = "Minion Rush 4";
            global.soul_mode = "Blue";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (turns_passed == 16)
        {
            global.action_amount = 3;
            global.enemy_attack = "Minion Ambush 4";
            global.soul_mode = "Blue";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (turns_passed == 17)
        {
            global.action_amount = 3;
            global.enemy_attack = "Ms. Mettaton Fists 6";
            global.soul_mode = "Blue";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (turns_passed == 18)
        {
            global.action_amount = 3;
            global.enemy_attack = "Ms. Mettaton Fists 7";
            global.soul_mode = "Blue";
            global.image_alpha_enemy_attacking_immunity = false;
        }
        else if (turns_passed == 19)
        {
            global.action_amount = 3;
            global.important_cutscene = true;
        }
    }
}
