if (live_call())
    return global.live_result;

var battle_box = obj_dialogue_box_battle_transformation_any;

if (image_alpha < 0.99)
    image_alpha += 0.2;
else
    image_alpha = 1;

if (in_bounds == true)
{
    if ((bbox_left + lengthdir_x(speed, direction)) <= (obj_dialogue_box_battle_transformation_any.bbox_left - 4))
    {
        if (direction == 180)
            direction = 0;
        else if (direction > 180)
            direction = 325;
        else
            direction = 45;
        
        bounce_count -= 1;
        audio_play_sound(snd_decibatbouncewave2, 1, 0);
    }
    else if ((bbox_right + lengthdir_x(speed, direction)) >= (obj_dialogue_box_battle_transformation_any.bbox_right + 4))
    {
        if (direction == 0)
            direction = 180;
        else if (direction > 180)
            direction = 225;
        else
            direction = 135;
        
        bounce_count -= 1;
        audio_play_sound(snd_decibatbouncewave2, 1, 0);
    }
    
    if ((bbox_bottom + lengthdir_y(speed, direction)) >= (obj_dialogue_box_battle_transformation_any.bbox_bottom - 4))
    {
        if (direction == 270)
            direction = 90;
        else if (direction > 270)
            direction = 45;
        else
            direction = 135;
        
        bounce_count -= 1;
        audio_play_sound(snd_decibatbouncewave2, 1, 0);
    }
    
    if ((bbox_top + lengthdir_y(speed, direction)) <= (obj_dialogue_box_battle_transformation_any.bbox_top + 4))
    {
        if (direction == 90)
            direction = 270;
        else if (direction > 90)
            direction = 225;
        else
            direction = 315;
        
        bounce_count -= 1;
        audio_play_sound(snd_decibatbouncewave2, 1, 0);
    }
}
else if (rectangle_in_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, battle_box.bbox_left + 28, battle_box.bbox_top + 28, battle_box.bbox_right - 28, battle_box.bbox_bottom - 28))
{
    in_bounds = true;
}

if (bounce_count <= 0)
{
    image_xscale -= 0.25;
    image_alpha -= 0.25;
    image_yscale = image_xscale;
    
    if (image_xscale <= 0)
        instance_destroy();
}
