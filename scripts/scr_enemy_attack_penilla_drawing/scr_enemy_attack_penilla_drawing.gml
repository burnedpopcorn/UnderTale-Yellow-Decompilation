function scr_enemy_attack_penilla_drawing()
{
    var distance, max_variations, sector, sector_2;
    
    distance = 20;
    max_variations = 4;
    sector = irandom_range(0, 1);
    sector_2 = irandom_range(0, 1);
    
    if (sector == 0)
    {
        if (sector_2 == 0)
            instance_create(obj_dialogue_box_battle_transformation_any.bbox_left - distance, (obj_dialogue_box_battle_transformation_any.bbox_top - distance) + ((((obj_dialogue_box_battle_transformation_any.bbox_bottom + (distance * 2)) - obj_dialogue_box_battle_transformation_any.bbox_top) / max_variations) * irandom_range(0, max_variations)), obj_battle_enemy_attack_penilla_pencil);
        else if (sector_2 == 1)
            instance_create(obj_dialogue_box_battle_transformation_any.bbox_right + distance, (obj_dialogue_box_battle_transformation_any.bbox_top - distance) + ((((obj_dialogue_box_battle_transformation_any.bbox_bottom + (distance * 2)) - obj_dialogue_box_battle_transformation_any.bbox_top) / max_variations) * irandom_range(0, max_variations)), obj_battle_enemy_attack_penilla_pencil);
    }
    else if (sector == 1)
    {
        if (sector_2 == 0)
            instance_create((obj_dialogue_box_battle_transformation_any.bbox_left - distance) + ((((obj_dialogue_box_battle_transformation_any.bbox_right + (distance * 2)) - obj_dialogue_box_battle_transformation_any.bbox_left) / max_variations) * irandom_range(0, max_variations)), obj_dialogue_box_battle_transformation_any.bbox_top - distance, obj_battle_enemy_attack_penilla_pencil);
        else if (sector_2 == 1)
            instance_create((obj_dialogue_box_battle_transformation_any.bbox_left - distance) + ((((obj_dialogue_box_battle_transformation_any.bbox_right + (distance * 2)) - obj_dialogue_box_battle_transformation_any.bbox_left) / max_variations) * irandom_range(0, max_variations)), obj_dialogue_box_battle_transformation_any.bbox_bottom + distance, obj_battle_enemy_attack_penilla_pencil);
    }
}
