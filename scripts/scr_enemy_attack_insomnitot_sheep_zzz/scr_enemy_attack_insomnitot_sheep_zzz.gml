function scr_enemy_attack_insomnitot_sheep_zzz()
{
    global.attack_counter_max = 30;
    
    if (global.attack_counter == 0)
    {
        var distance_factor = 4;
        instance_create(obj_heart_battle_fighting_parent.x, obj_dialogue_box_battle_transformation_any.bbox_bottom + 8 + distance_factor, obj_battle_enemy_attack_insomnitot_zzz_big);
        instance_create(obj_heart_battle_fighting_parent.x, obj_dialogue_box_battle_transformation_any.bbox_bottom + 8 + (distance_factor * 2) + obj_battle_enemy_attack_insomnitot_zzz_big.sprite_height, obj_battle_enemy_attack_insomnitot_zzz_medium);
        instance_create(obj_heart_battle_fighting_parent.x, obj_dialogue_box_battle_transformation_any.bbox_bottom + 8 + (distance_factor * 3) + (obj_battle_enemy_attack_insomnitot_zzz_medium.sprite_height * 2), obj_battle_enemy_attack_insomnitot_zzz_small);
    }
}
