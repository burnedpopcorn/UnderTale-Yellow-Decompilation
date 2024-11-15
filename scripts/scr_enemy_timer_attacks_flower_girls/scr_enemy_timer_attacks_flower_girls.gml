function scr_enemy_timer_attacks_flower_girls()
{
    var enemy_attack;
    
    enemy_attack = global.enemy_attack;
    
    if (instance_exists(obj_dialogue_box_battle_transformation_any) && obj_heart_battle_fighting_parent.moveable == true)
    {
        if (enemy_attack == "Colored Flowers")
        {
            if (!instance_exists(obj_battle_enemy_attack_flowergirls_colored_creator))
                instance_create(0, 0, obj_battle_enemy_attack_flowergirls_colored_creator);
        }
        else if (enemy_attack == "Growing Flowers")
        {
            if (!instance_exists(obj_battle_enemy_attack_flowergirls_growing_flowers_creator))
                instance_create(0, 0, obj_battle_enemy_attack_flowergirls_growing_flowers_creator);
        }
        else if (enemy_attack == "Spinning Flowers")
        {
            if (!instance_exists(obj_battle_enemy_attack_flowergirls_spinning_flower_creator))
                instance_create(0, 0, obj_battle_enemy_attack_flowergirls_spinning_flower_creator);
        }
        else if (enemy_attack == "Falling Flowers")
        {
            if (!instance_exists(obj_battle_enemy_attack_flowergirls_falling_flowers_creator))
                instance_create(0, 0, obj_battle_enemy_attack_flowergirls_falling_flowers_creator);
        }
    }
}
