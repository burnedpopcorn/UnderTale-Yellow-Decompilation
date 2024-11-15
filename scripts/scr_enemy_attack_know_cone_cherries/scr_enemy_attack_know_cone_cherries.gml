function scr_enemy_attack_know_cone_cherries()
{
    var distance_factor, random_generator;
    
    distance_factor = 15;
    random_generator = irandom_range(0, 1);
    
    if (random_generator == 0)
        instance_create(round(obj_dialogue_box_battle_transformation_any.bbox_left + ((obj_dialogue_box_battle_transformation_any.bbox_right - obj_dialogue_box_battle_transformation_any.bbox_left) / 2)), obj_dialogue_box_battle_transformation_any.bbox_top - distance_factor - 34, obj_battle_enemy_attack_know_cone_cherry);
    else if (random_generator == 1)
        instance_create(round(obj_dialogue_box_battle_transformation_any.bbox_left + ((obj_dialogue_box_battle_transformation_any.bbox_right - obj_dialogue_box_battle_transformation_any.bbox_left) / 2)), obj_dialogue_box_battle_transformation_any.bbox_bottom + distance_factor, obj_battle_enemy_attack_know_cone_cherry);
}
