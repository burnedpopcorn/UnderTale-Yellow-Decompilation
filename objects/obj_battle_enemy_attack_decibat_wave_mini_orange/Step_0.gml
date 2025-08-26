if (!instance_exists(obj_heart_battle_fighting_parent))
{
    instance_destroy();
    exit;
}

if (image_alpha < 1)
{
    image_alpha += 0.1;
    
    if (image_alpha >= 1)
    {
        image_alpha = 1;
        can_move = true;
        angle = irandom_range(image_angle_min, image_angle_max);
        image_angle = angle;
        audio_play_sound(snd_decibatbouncewave1, 20, 0);
    }
}

if (can_move == true)
{
    x += lengthdir_x(move_speed, angle);
    y += lengthdir_y(move_speed, angle);
    var x_move = lengthdir_x(move_speed, angle);
    var y_move = lengthdir_y(move_speed, angle);
    
    if (bbox_left <= (obj_dialogue_box_battle_transformation_any.bbox_left + 4) && x_move < 0)
    {
        while (bbox_left <= (obj_dialogue_box_battle_transformation_any.bbox_left + 4))
            x += 1;
        
        angle = irandom_range(image_angle_min + 90, image_angle_max + 90);
        image_angle = angle;
        change_type = true;
    }
    
    if (bbox_right >= (obj_dialogue_box_battle_transformation_any.bbox_right - 4) && x_move > 0)
    {
        while (bbox_right >= (obj_dialogue_box_battle_transformation_any.bbox_right - 4))
            x -= 1;
        
        angle = irandom_range(image_angle_min - 90, image_angle_max - 90);
        image_angle = angle;
        change_type = true;
    }
    
    if (bbox_top <= (obj_dialogue_box_battle_transformation_any.bbox_top + 4) && y_move < 0)
    {
        while (bbox_top <= (obj_dialogue_box_battle_transformation_any.bbox_top + 4))
            y += 1;
        
        angle = irandom_range(image_angle_min, image_angle_max);
        image_angle = angle;
        change_type = true;
    }
    
    if (bbox_bottom >= (obj_dialogue_box_battle_transformation_any.bbox_bottom - 4) && y_move > 0)
    {
        while (bbox_bottom >= (obj_dialogue_box_battle_transformation_any.bbox_bottom - 4))
            y -= 1;
        
        angle = irandom_range(image_angle_min - 180, image_angle_max - 180);
        image_angle = angle;
        change_type = true;
    }
    
    if (change_type == true)
    {
        change_type = false;
        instance_change(obj_battle_enemy_attack_decibat_wave_mini_blue, false);
    }
}
