function scr_enemy_attack_know_cone_fig()
{
    var distance_factor_x, distance_factor_y, random_generator, random_generator_y;
    
    distance_factor_x = 15;
    distance_factor_y = 20;
    random_generator = irandom_range(0, 1);
    random_generator_y = irandom_range(1, 3);
    
    if (random_generator == 0)
        instance_create(obj_dialogue_box_battle_transformation_any.bbox_left - distance_factor_x, round(obj_dialogue_box_battle_transformation_any.bbox_top + ((obj_dialogue_box_battle_transformation_any.bbox_bottom - obj_dialogue_box_battle_transformation_any.bbox_top) / 2)) - (distance_factor_y * random_generator_y), obj_battle_enemy_attack_know_cone_fig);
    else if (random_generator == 1)
        instance_create(obj_dialogue_box_battle_transformation_any.bbox_right + distance_factor_x, round(obj_dialogue_box_battle_transformation_any.bbox_top + ((obj_dialogue_box_battle_transformation_any.bbox_bottom - obj_dialogue_box_battle_transformation_any.bbox_top) / 2)) - (distance_factor_y * random_generator_y), obj_battle_enemy_attack_know_cone_fig);
}
