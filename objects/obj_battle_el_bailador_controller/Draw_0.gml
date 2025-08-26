if (battle_el_bail_event_tutorial == true)
{
    if (draw_tutorial_arrows == true && can_draw_arrows == true && instance_exists(obj_heart_battle_fighting_parent))
    {
        var battle_box = obj_dialogue_box_battle_transformation_any;
        draw_sprite_part_ext(spr_heart_tutorial_arrows_yellow, 0, 0, 0, 9, 27, battle_box.bbox_left + 18, battle_box.bbox_bottom - 44, 2, 2, c_white, image_alpha);
        draw_sprite_part_ext(spr_heart_tutorial_arrows_yellow, 0, 17, 0, 10, 27, battle_box.bbox_right - 36, battle_box.bbox_bottom - 44, 2, 2, c_white, image_alpha);
    }
}
