function scr_enemy_timer_attacks_penilla_solo()
{
    var enemy_attack, warning_distance;
    
    enemy_attack = global.enemy_attack;
    
    if (instance_exists(obj_dialogue_box_battle_transformation_any) && enemy_attack == "Penilla Drawing" && obj_heart_battle_fighting_parent.moveable == true && !instance_exists(obj_battle_enemy_attack_penilla_pencil))
    {
        script_execute(scr_enemy_attack_penilla_drawing);
    }
    else if (instance_exists(obj_dialogue_box_battle_transformation_any) && enemy_attack == "Penilla Lines" && obj_heart_battle_fighting_parent.moveable == true && !instance_exists(obj_battle_enemy_attack_penilla_lines_2))
    {
        warning_distance = 30;
        instance_create(253, 255, obj_dialogue_box_battle_transformation_any_mask_penilla_lines);
        instance_create(round(obj_dialogue_box_battle_transformation_any.bbox_left + ((obj_dialogue_box_battle_transformation_any.bbox_right - obj_dialogue_box_battle_transformation_any.bbox_left) / 2)), round(obj_dialogue_box_battle_transformation_any.bbox_top + ((obj_dialogue_box_battle_transformation_any.bbox_bottom - obj_dialogue_box_battle_transformation_any.bbox_top) / 2)) - warning_distance, obj_attack_warning_exclamation_mark);
        instance_create(round(obj_dialogue_box_battle_transformation_any.bbox_left + ((obj_dialogue_box_battle_transformation_any.bbox_right - obj_dialogue_box_battle_transformation_any.bbox_left) / 2)) + warning_distance, round(obj_dialogue_box_battle_transformation_any.bbox_top + ((obj_dialogue_box_battle_transformation_any.bbox_bottom - obj_dialogue_box_battle_transformation_any.bbox_top) / 2)), obj_attack_warning_exclamation_mark);
        instance_create(round(obj_dialogue_box_battle_transformation_any.bbox_left + ((obj_dialogue_box_battle_transformation_any.bbox_right - obj_dialogue_box_battle_transformation_any.bbox_left) / 2)), round(obj_dialogue_box_battle_transformation_any.bbox_top + ((obj_dialogue_box_battle_transformation_any.bbox_bottom - obj_dialogue_box_battle_transformation_any.bbox_top) / 2)), obj_battle_enemy_attack_penilla_lines);
        instance_create(round(obj_dialogue_box_battle_transformation_any.bbox_left + ((obj_dialogue_box_battle_transformation_any.bbox_right - obj_dialogue_box_battle_transformation_any.bbox_left) / 2)), round(obj_dialogue_box_battle_transformation_any.bbox_top + ((obj_dialogue_box_battle_transformation_any.bbox_bottom - obj_dialogue_box_battle_transformation_any.bbox_top) / 2)), obj_battle_enemy_attack_penilla_lines_2);
    }
}
