if (instance_exists(obj_battle_enemy_attack_flowergirls_growing_flowers_droplet))
{
    with (obj_battle_enemy_attack_flowergirls_growing_flowers_droplet)
        instance_destroy();
}

if (instance_exists(obj_battle_enemy_attack_flowergirls_growing_flowers))
{
    with (obj_battle_enemy_attack_flowergirls_growing_flowers)
        instance_destroy();
}

if (instance_exists(obj_battle_enemy_attack_flowergirls_growing_flowers_droplet_bit))
{
    with (obj_battle_enemy_attack_flowergirls_growing_flowers_droplet_bit)
        instance_destroy();
}

with (obj_dialogue_box_battle_transformation_any)
    event_user(0);
