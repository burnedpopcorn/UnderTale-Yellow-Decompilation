function scr_determine_low_hp_enemy_sparing()
{
    var enemy_count;
    
    enemy_count = global.enemy_count;
    
    if (enemy_count >= 1)
    {
        if (global.enemy_low_hp == true)
            global.enemy_sparing = true;
    }
    
    if (enemy_count >= 2)
    {
        if (global.enemy_low_hp_2 == true)
            global.enemy_sparing_2 = true;
    }
    
    if (enemy_count >= 3)
    {
        if (global.enemy_low_hp_3 == true)
            global.enemy_sparing_3 = true;
    }
}
