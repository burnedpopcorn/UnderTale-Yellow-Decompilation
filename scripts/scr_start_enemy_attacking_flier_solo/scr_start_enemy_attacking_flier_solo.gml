function scr_start_enemy_attacking_flier_solo()
{
    instance_create(319, 320, obj_dialogue_box_battle_transformation_any);
    instance_create(318, 14, obj_quote_bubble_battle);
    instance_create(0, 0, obj_quote_battle_flier_a);
    instance_create(round(obj_dialogue_box_battle_transformation_any.bbox_left + ((obj_dialogue_box_battle_transformation_any.bbox_right - obj_dialogue_box_battle_transformation_any.bbox_left) / 2)), round(obj_dialogue_box_battle_transformation_any.bbox_top + ((obj_dialogue_box_battle_transformation_any.bbox_bottom - obj_dialogue_box_battle_transformation_any.bbox_top) / 2)), obj_heart_battle_fighting_red);
}
