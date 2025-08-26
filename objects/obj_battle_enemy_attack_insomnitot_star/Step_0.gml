if (!instance_exists(obj_dialogue_box_battle_transformation_any))
{
    instance_destroy();
    exit;
}

if (image_alpha < 1 && can_move == false)
{
    image_alpha += 0.1;
    
    if (image_alpha > 1)
        image_alpha = 1;
    
    if (image_alpha == 1)
    {
        angle = point_direction(x, y, obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y);
        can_move = true;
        var random_pitch = irandom_range(-1, 1);
        audio_play_sound(snd_stars, 20, 0);
        audio_sound_pitch(snd_stars, 1 + (random_pitch * 0.3));
    }
}

if (can_move == true)
{
    ds_list_add(x_list, x);
    ds_list_add(y_list, y);
    ds_list_add(in_box_list, in_box);
    
    while (ds_list_size(x_list) > max_points_trail)
    {
        ds_list_delete(x_list, 0);
        ds_list_delete(y_list, 0);
        ds_list_delete(in_box_list, 0);
    }
}

if (can_move == true)
{
    x += lengthdir_x(move_speed, angle);
    y += lengthdir_y(move_speed, angle);
    
    if (move_speed < move_speed_max)
    {
        move_speed += move_speed_increase;
        
        if (move_speed > move_speed_max)
            move_speed = move_speed_max;
    }
}

var return_in_box = script_execute(scr_determine_if_in_battle_box);

if (return_in_box == true && in_box == false)
    in_box = true;

if (!place_meeting(x, y, obj_dialogue_box_battle_transformation_any) && in_box == true && out_box == false)
{
    alarm[0] = 30;
    out_box = true;
}
