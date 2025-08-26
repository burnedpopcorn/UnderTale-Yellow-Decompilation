draw_sprite_ext(sprite_index, image_index, default_x + lights_x_diff, default_y + lights_y_diff, 1, 1, lights_angle, c_white, image_alpha);
draw_sprite_ext(sprite_index, image_index, default_x - lights_x_diff, default_y + lights_y_diff, -1, 1, -lights_angle, c_white, image_alpha);

if (instance_exists(obj_dialogue_box_battle_transformation_any))
{
    var box = obj_dialogue_box_battle_transformation_any;
    draw_rectangle_colour(box.bbox_left, obj_el_bailador_neutral.bbox_bottom + 2, box.bbox_right, box.bbox_bottom, c_black, c_black, c_black, c_black, false);
}
