function scr_end_enemy_attacking_macro()
{
    var turns_passed = global.turns_passed;
    
    if (turns_passed >= 10 && obj_macro_frog_counter.frog_count <= 0)
    {
        instance_create(402, 68, obj_quote_bubble_battle_yellow_3);
        instance_create(0, 0, obj_quote_battle_macro_froggit_attack_end);
        return true;
    }
    else
    {
        return false;
    }
}
