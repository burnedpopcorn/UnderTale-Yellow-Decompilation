if (can_move == true)
{
    var j = 2;
    i = ds_list_size(x_list) - 1;
    
    while (i >= 0)
    {
        var x0 = ds_list_find_value(x_list, i);
        var y0 = ds_list_find_value(y_list, i);
        var in_box_trail = ds_list_find_value(in_box_list, i);
        var image_alpha_trail = 1 / j;
        
        if (in_box_trail == true)
        {
            var target = obj_dialogue_box_battle_transformation_any;
            draw_sprite_clip_ext(trail_sprite, 0, x0, y0, 1, 1, 16777215, image_alpha_trail, target.bbox_left + 5, target.bbox_top + 5, target.sprite_width - 10, target.sprite_height - 10);
        }
        else
        {
            draw_sprite_ext(trail_sprite, 0, x0, y0, 1, 1, 0, c_white, image_alpha_trail);
        }
        
        j += 1;
        i -= 1;
    }
}

if (in_box == true)
    script_execute(scr_battle_draw_inside_battle_box_ext);
else
    draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, c_white, image_alpha);
