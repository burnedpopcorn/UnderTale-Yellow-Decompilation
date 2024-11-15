function scr_end_enemy_attacking_axis()
{
    var turns_passed;
    
    turns_passed = global.special_action_count;
    
    if (turns_passed != global.special_action_count_last)
    {
        instance_create(402, 68, obj_quote_bubble_battle_yellow_2);
        instance_create(0, 0, obj_quote_battle_axis_attack_end);
        return true;
    }
    else
    {
        return false;
    }
}
