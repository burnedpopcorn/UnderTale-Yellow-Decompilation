var can_move, execute_collision, move_x_temp, move_y_temp, random_pitch;

if (image_alpha < 1 && started == false)
{
    image_alpha += 0.05;
    
    if (image_alpha > 1)
        image_alpha = 1;
    
    if (image_alpha == 1)
        started = true;
}

if (started == true)
{
    ds_list_add(x_list, x);
    ds_list_add(y_list, y);
    
    while (ds_list_size(x_list) > max_points_trail)
    {
        ds_list_delete(x_list, 0);
        ds_list_delete(y_list, 0);
    }
}

if (instance_exists(obj_dialogue_box_battle_transformation_any) && started == true)
{
    can_move = true;
    execute_collision = false;
    
    if ((sign(move_x) == -1 && (bbox_left + move_x) <= (obj_dialogue_box_battle_transformation_any.bbox_left + 4)) || (sign(move_x) == 1 && (bbox_right + move_x) >= (obj_dialogue_box_battle_transformation_any.bbox_right - 4)) || (sign(move_y) == -1 && (bbox_top + move_y) <= (obj_dialogue_box_battle_transformation_any.bbox_top + 4)) || (sign(move_y) == 1 && (bbox_bottom + move_y) >= (obj_dialogue_box_battle_transformation_any.bbox_bottom - 4)))
    {
        move_x_temp = move_x / move_speed_max;
        move_y_temp = move_y / move_speed_max;
        
        while ((bbox_left + sign(move_x_temp)) > (obj_dialogue_box_battle_transformation_any.bbox_left + 4) && (bbox_right + sign(move_x_temp)) < (obj_dialogue_box_battle_transformation_any.bbox_right - 4) && (bbox_top + sign(move_y_temp)) > (obj_dialogue_box_battle_transformation_any.bbox_top + 4) && (bbox_bottom + sign(move_y_temp)) < (obj_dialogue_box_battle_transformation_any.bbox_bottom - 4))
        {
            x += move_x_temp;
            y += move_y_temp;
        }
        
        execute_collision = true;
    }
    
    if (execute_collision == true)
    {
        if ((bbox_left + sign(move_x)) <= (obj_dialogue_box_battle_transformation_any.bbox_left + 4) || (bbox_right + sign(move_x)) >= (obj_dialogue_box_battle_transformation_any.bbox_right - 4))
            move_x = -move_x;
        
        if ((bbox_top + sign(move_y)) <= (obj_dialogue_box_battle_transformation_any.bbox_top + 4) || (bbox_bottom + sign(move_y)) >= (obj_dialogue_box_battle_transformation_any.bbox_bottom - 4))
            move_y = -move_y;
        
        random_pitch = irandom_range(-1, 1);
        audio_play_sound(snd_trihecta_reflect_balls, 20, 0);
        audio_sound_pitch(snd_trihecta_reflect_balls, 1 + (random_pitch * 0.3));
        can_move = false;
    }
    
    if (can_move == true)
    {
        x += move_x;
        y += move_y;
    }
}
