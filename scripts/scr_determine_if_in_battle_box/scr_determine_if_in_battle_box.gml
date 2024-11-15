function scr_determine_if_in_battle_box()
{
    if (bbox_top > (obj_dialogue_box_battle_transformation_any.bbox_top + 5) && bbox_bottom < (obj_dialogue_box_battle_transformation_any.bbox_bottom - 5) && bbox_left > (obj_dialogue_box_battle_transformation_any.bbox_left + 5) && bbox_right < (obj_dialogue_box_battle_transformation_any.bbox_right + 5))
        return true;
    else
        return false;
}
