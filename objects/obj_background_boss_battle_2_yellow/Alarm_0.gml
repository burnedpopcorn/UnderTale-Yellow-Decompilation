if (instance_number(obj_background_boss_battle_2_snowflake_parent_yellow) < snowflake_max)
{
    var random_snowflake = irandom_range(1, 4);
    var snowflake_xpos = irandom_range(0, 639);
    
    switch (random_snowflake)
    {
        case 1:
            instance_create(snowflake_xpos, snowflake_ypos, obj_background_boss_battle_2_snowflake_1_yellow);
            break;
        
        case 2:
            instance_create(snowflake_xpos, snowflake_ypos, obj_background_boss_battle_2_snowflake_2_yellow);
            break;
        
        case 3:
            instance_create(snowflake_xpos, snowflake_ypos, obj_background_boss_battle_2_snowflake_3_yellow);
            break;
        
        case 4:
            instance_create(snowflake_xpos, snowflake_ypos, obj_background_boss_battle_2_snowflake_4_yellow);
            break;
        
        default:
            instance_create(snowflake_xpos, snowflake_ypos, obj_background_boss_battle_2_snowflake_1_yellow);
    }
}

alarm[0] = 20;
