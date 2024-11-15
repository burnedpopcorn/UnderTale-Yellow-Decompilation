damage_number = scr_determine_damage_number_enemy("penilla a", "penilla b", "penilla c");

if (bbox_left < obj_dialogue_box_battle_transformation_any.bbox_left || bbox_right > obj_dialogue_box_battle_transformation_any.bbox_right || bbox_top < obj_dialogue_box_battle_transformation_any.bbox_top || bbox_bottom > obj_dialogue_box_battle_transformation_any.bbox_bottom)
{
    instance_destroy();
    exit;
}

image_alpha = 1;
alarm[0] = 90;
can_fade = false;
