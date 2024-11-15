if (live_call())
    return global.live_result;

if (scene > 11)
{
    draw_set_color(c_black);
    draw_rectangle(0, 430, 640, 480, false);
    
    with (obj_dialogue_box_battle_transformation_any)
    {
        draw_set_alpha(other.box_overlay_alpha);
        draw_rectangle_colour(bbox_left, bbox_top, bbox_left + 4, bbox_bottom, c_black, c_black, c_black, c_black, false);
        draw_rectangle_colour(bbox_right - 4, bbox_top, bbox_right, bbox_bottom, c_black, c_black, c_black, c_black, false);
        draw_rectangle_colour(bbox_left, bbox_top, bbox_right, bbox_top + 4, c_black, c_black, c_black, c_black, false);
        draw_rectangle_colour(bbox_left, bbox_bottom - 4, bbox_right, bbox_bottom, c_black, c_black, c_black, c_black, false);
        draw_set_alpha(1);
    }
    
    if (scene < 43)
    {
        with (obj_heart_battle_fighting_parent)
            draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha);
    }
}

draw_set_alpha(draw_alpha);
draw_set_color(c_white);
draw_rectangle(0, 0, 640, 480, false);
draw_set_alpha(1);
