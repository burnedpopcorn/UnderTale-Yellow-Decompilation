if (instance_exists(obj_text_battle_move_selected_action_parent))
{
    if (global.enemy_sparing)
        dialogue_spawn_noloop = true;
    
    if (dialogue_spawn_noloop == false)
    {
        if (!instance_exists(obj_quote_battle_sousborg_act))
        {
            instance_deactivate_object(obj_heart_battle_menu_act);
            
            if (global.enemy_mode == 0 && !instance_exists(obj_sousborg_demonstration_egg))
                instance_create_depth(-60, 100, -9999, obj_sousborg_demonstration_egg);
            else if (instance_exists(obj_sousborg_demonstration_egg))
                obj_sousborg_demonstration_egg.destroy_self = false;
            
            instance_create(402, 68, obj_quote_bubble_battle_yellow_2);
            instance_create(0, 0, obj_quote_battle_sousborg_act);
            dialogue_spawn_noloop = true;
        }
    }
}
else
{
    dialogue_spawn_noloop = false;
    
    if (instance_exists(obj_heart_battle_menu_act))
        instance_activate_object(obj_heart_battle_menu_act);
    
    if (instance_exists(obj_sousborg_demonstration_egg))
        obj_sousborg_demonstration_egg.destroy_self = true;
    
    if (instance_exists(obj_quote_battle_sousborg_act))
    {
        instance_destroy(obj_quote_bubble_battle_yellow_2);
        instance_destroy(obj_quote_battle_sousborg_act);
    }
}
