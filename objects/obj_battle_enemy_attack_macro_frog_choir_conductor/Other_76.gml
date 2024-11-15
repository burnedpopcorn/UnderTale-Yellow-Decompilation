var battle_box;

if (live_call())
    return global.live_result;

battle_box = 3154;

if (ds_map_find_value(event_data, "event_type") == "sprite event")
{
    switch (ds_map_find_value(event_data, "message"))
    {
        case "conductor_left":
            instance_create_depth(battle_box.bbox_left + 30, battle_box.bbox_bottom + 20, -100, obj_battle_enemy_attack_macro_choir_note);
            break;
        
        case "conductor_mid":
            instance_create_depth(battle_box.x, battle_box.bbox_bottom + 20, -100, obj_battle_enemy_attack_macro_choir_note);
            break;
        
        case "conductor_right":
            instance_create_depth(battle_box.bbox_right - 30, battle_box.bbox_bottom + 20, -100, obj_battle_enemy_attack_macro_choir_note);
            break;
    }
}
