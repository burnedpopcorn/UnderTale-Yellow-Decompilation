function scr_create_background_battle_yellow()
{
    var current_world_value = script_execute(scr_determine_world_value_yellow);
    
    switch (current_world_value)
    {
        case 0:
        case 1:
            instance_create(0, 0, obj_background_enemy_battle);
            break;
        
        case 2:
            instance_create(0, 0, obj_background_enemy_battle_snowdin_yellow);
            break;
        
        case 3:
            instance_create(0, 0, obj_background_enemy_battle_dunes_yellow);
            break;
        
        case 4:
            instance_create_depth(0, 0, 50, obj_background_enemy_battle_steamworks_yellow);
            break;
    }
}
