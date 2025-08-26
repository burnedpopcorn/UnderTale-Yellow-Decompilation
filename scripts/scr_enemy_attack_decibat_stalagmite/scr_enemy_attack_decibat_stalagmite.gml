function scr_enemy_attack_decibat_stalagmite()
{
    var random_number = irandom_range(obj_dialogue_box_battle_transformation_any.bbox_left + 5, obj_dialogue_box_battle_transformation_any.bbox_right - 5);
    global.attack_counter_max = 15;
    
    if (global.attack_counter == 0)
        instance_create(random_number, obj_dialogue_box_battle_transformation_any.bbox_top + 5, obj_battle_enemy_attack_decibat_stalagmite);
}
