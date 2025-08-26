var _color_current = make_color_rgb(255, color_number_current, color_number_current);

if (instance_exists(obj_dialogue_box_battle_transformation_any))
{
    with (obj_dialogue_box_battle_transformation_any)
    {
        draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, _color_current, 1);
        draw_rectangle_colour(bbox_left, bbox_top, bbox_left + 4, bbox_bottom, _color_current, _color_current, _color_current, _color_current, false);
        draw_rectangle_colour(bbox_right - 4, bbox_top, bbox_right, bbox_bottom, _color_current, _color_current, _color_current, _color_current, false);
        draw_rectangle_colour(bbox_left, bbox_top, bbox_right, bbox_top + 4, _color_current, _color_current, _color_current, _color_current, false);
        draw_rectangle_colour(bbox_left, bbox_bottom - 4, bbox_right, bbox_bottom, _color_current, _color_current, _color_current, _color_current, false);
    }
}

if (instance_exists(obj_dialogue_box_battle_transformation_any_out))
{
    with (obj_dialogue_box_battle_transformation_any_out)
    {
        draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, _color_current, 1);
        draw_rectangle_colour(bbox_left, bbox_top, bbox_left + 4, bbox_bottom, _color_current, _color_current, _color_current, _color_current, false);
        draw_rectangle_colour(bbox_right - 4, bbox_top, bbox_right, bbox_bottom, _color_current, _color_current, _color_current, _color_current, false);
        draw_rectangle_colour(bbox_left, bbox_top, bbox_right, bbox_top + 4, _color_current, _color_current, _color_current, _color_current, false);
        draw_rectangle_colour(bbox_left, bbox_bottom - 4, bbox_right, bbox_bottom, _color_current, _color_current, _color_current, _color_current, false);
    }
}

if (instance_exists(obj_dialogue_box_battle_transformation_any_in))
{
    with (obj_dialogue_box_battle_transformation_any_in)
    {
        draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, _color_current, 1);
        draw_rectangle_colour(bbox_left, bbox_top, bbox_left + 4, bbox_bottom, _color_current, _color_current, _color_current, _color_current, false);
        draw_rectangle_colour(bbox_right - 4, bbox_top, bbox_right, bbox_bottom, _color_current, _color_current, _color_current, _color_current, false);
        draw_rectangle_colour(bbox_left, bbox_top, bbox_right, bbox_top + 4, _color_current, _color_current, _color_current, _color_current, false);
        draw_rectangle_colour(bbox_left, bbox_bottom - 4, bbox_right, bbox_bottom, _color_current, _color_current, _color_current, _color_current, false);
    }
}

if (instance_exists(obj_dialogue_box_battle_transformation_attack))
{
    with (obj_dialogue_box_battle_transformation_attack)
    {
        draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, _color_current, 1);
        draw_rectangle_colour(bbox_left, bbox_top, bbox_left + 4, bbox_bottom, _color_current, _color_current, _color_current, _color_current, false);
        draw_rectangle_colour(bbox_right - 4, bbox_top, bbox_right, bbox_bottom, _color_current, _color_current, _color_current, _color_current, false);
        draw_rectangle_colour(bbox_left, bbox_top, bbox_right, bbox_top + 4, _color_current, _color_current, _color_current, _color_current, false);
        draw_rectangle_colour(bbox_left, bbox_bottom - 4, bbox_right, bbox_bottom, _color_current, _color_current, _color_current, _color_current, false);
    }
}

if (instance_exists(obj_dialogue_box_battle))
{
    with (obj_dialogue_box_battle)
    {
        draw_set_alpha(image_alpha);
        draw_self();
        draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, _color_current, 1);
        draw_rectangle_colour(bbox_left, bbox_top, bbox_left + 4, bbox_bottom, _color_current, _color_current, _color_current, _color_current, false);
        draw_rectangle_colour(bbox_right - 4, bbox_top, bbox_right, bbox_bottom, _color_current, _color_current, _color_current, _color_current, false);
        draw_rectangle_colour(bbox_left, bbox_top, bbox_right, bbox_top + 4, _color_current, _color_current, _color_current, _color_current, false);
        draw_rectangle_colour(bbox_left, bbox_bottom - 4, bbox_right, bbox_bottom, _color_current, _color_current, _color_current, _color_current, false);
        draw_set_alpha(1);
    }
}
