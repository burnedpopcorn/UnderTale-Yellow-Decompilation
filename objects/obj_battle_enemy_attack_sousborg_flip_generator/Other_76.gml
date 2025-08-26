if (ds_map_find_value(event_data, "event_type") == "sequence event" && ds_map_find_value(event_data, "message") == "attack_sousborg_pan_launch")
{
    var item_number = 3;
    var hspeed_new = -item_hspeed;
    
    for (var i = 1; i <= item_number; i++)
    {
        var new_item = instance_create_depth(layer_sequence_get_x(attack_sequence) - 75, layer_sequence_get_y(attack_sequence) - 10, -998, obj_battle_enemy_attack_sousborg_flip_items);
        new_item.hspeed = hspeed_new;
        hspeed_new += ((item_hspeed * 2) / (item_number - 1));
    }
}
