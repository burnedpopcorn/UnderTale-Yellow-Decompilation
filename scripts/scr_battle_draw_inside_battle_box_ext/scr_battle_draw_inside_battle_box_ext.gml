function scr_battle_draw_inside_battle_box_ext()
{
    var target = obj_dialogue_box_battle_transformation_any;
    var return_value = draw_sprite_clip_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 16777215, image_alpha, target.bbox_left + 5, target.bbox_top + 5, target.sprite_width - 10, target.sprite_height - 10);
    
    if (return_value == true)
        return true;
    else
        return false;
}
