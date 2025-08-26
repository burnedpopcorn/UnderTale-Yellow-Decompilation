if (live_call())
    return global.live_result;

instance_destroy(obj_ceroba_special_attack_fireball);
instance_destroy(obj_ceroba_special_attack_fireball_spawner_line);
instance_destroy(obj_ceroba_transform_particles);
instance_destroy(obj_ceroba_attack_fire_pillar_top_special);
var a = layer_get_all_elements("Attack Layer");

for (var i = 0; i < array_length(a); i++)
{
    if (layer_get_element_type(a[i]) == 8)
        layer_sequence_destroy(a[i]);
}

layer_destroy("Attack Layer");

with (obj_dialogue_box_battle_transformation_any)
    event_user(0);
