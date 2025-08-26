var a = layer_get_all_elements("Attack Layer");

for (var i = 0; i < array_length(a); i++)
{
    if (layer_get_element_type(a[i]) == 8)
        layer_sequence_destroy(a[i]);
}

instance_destroy(obj_battle_enemy_attack_sousborg_flip_items);

with (obj_dialogue_box_battle_transformation_any)
    event_user(0);
