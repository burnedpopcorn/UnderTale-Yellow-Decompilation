function scr_end_enemy_attacking_bailador_geno()
{
    var turns_passed;
    
    turns_passed = global.turns_passed;
    
    if (turns_passed == 7 && global.route == 3)
    {
        instance_create(390, 74, obj_quote_bubble_battle_yellow_3);
        instance_create(0, 0, obj_quote_battle_bailador_attack_end);
        return true;
    }
    else
    {
        return false;
    }
}
