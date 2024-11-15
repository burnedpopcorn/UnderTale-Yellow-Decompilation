var x_origin, y_origin, i, confirm_key, cancel_key, cursor_x, cursor_y, robot_item_number;

if (live_call())
    return global.live_result;

if (destroy_self == true)
{
    draw_alpha = lerp(draw_alpha, 0, 0.2);
    
    if (draw_alpha == 0)
    {
        global.sworks_robot_count = instance_number(obj_robot_build_item);
        x_origin = 60;
        y_origin = 140;
        i = 0;
        
        with (obj_robot_build_item)
        {
            global.sworks_robot_sprite[i] = sprite_index;
            global.sworks_robot_x[i] = x_origin - x;
            global.sworks_robot_y[i] = y_origin - y;
            global.sworks_robot_depth[i] = depth;
            global.sworks_robot_angle[i] = image_angle;
            global.sworks_robot_scale[i] = image_xscale;
            i += 1;
        }
        
        instance_destroy();
        instance_destroy(obj_robot_build_cursor);
        instance_destroy(obj_robot_build_item);
    }
    
    exit;
}

if (global.dialogue_open)
    exit;

draw_alpha = lerp(draw_alpha, 1, 0.2);
confirm_key = keyboard_multicheck_pressed(0);
cancel_key = keyboard_multicheck_pressed(1);
cursor_x = obj_robot_build_cursor.x;
cursor_y = obj_robot_build_cursor.y;

if (point_in_rectangle(cursor_x, cursor_y, 360, 20, 470, 150))
    robot_item_selected = 0;
else if (point_in_rectangle(cursor_x, cursor_y, 470, 20, 580, 150))
    robot_item_selected = 1;
else if (point_in_rectangle(cursor_x, cursor_y, 360, 150, 470, 280))
    robot_item_selected = 2;
else if (point_in_rectangle(cursor_x, cursor_y, 470, 150, 580, 280))
    robot_item_selected = 3;
else
    robot_item_selected = -1;

if (point_in_rectangle(cursor_x, cursor_y, 500, 320, 580, 370))
    gui_button_selected = 0;
else if (point_in_rectangle(cursor_x, cursor_y, 500, 398, 580, 448))
    gui_button_selected = 1;
else
    gui_button_selected = -1;

if (confirm_key)
{
    if (robot_item_selected != -1)
    {
        robot_item_number = instance_number(obj_robot_build_item);
        
        if (robot_item_number >= item_number_max)
        {
            audio_play_sound(snd_fail, 1, 0);
        }
        else
        {
            robot_move_to_position = true;
            obj_robot_build_cursor.soul_can_move = false;
            obj_robot_build_cursor.image_alpha_base = 0.5;
            robot_item_placed[item_number] = instance_create(obj_robot_build_cursor.x, obj_robot_build_cursor.y, obj_robot_build_item);
            
            with (robot_item_placed[item_number])
                sprite_index = other.robot_item[other.robot_item_selected];
            
            item_number += 1;
            audio_play_sound(snd_mainmenu_select, 1, 0);
        }
    }
    
    if (gui_button_selected != -1)
    {
        if (gui_button_selected == 0 && item_number > 0)
        {
            instance_destroy(robot_item_placed[item_number - 1]);
            item_number -= 1;
            audio_play_sound(snd_confirm, 1, 0);
        }
        else if (gui_button_selected == 1)
        {
            audio_play_sound(snd_confirm, 1, 0);
            
            if (!instance_exists(obj_robot_build_dialogue_confirm))
                instance_create(0, 0, obj_robot_build_dialogue_confirm);
        }
    }
}

if (robot_item_selected != -1)
    robot_item_scale[robot_item_selected] = lerp(robot_item_scale[robot_item_selected], 1.3, 0.15);

for (i = 0; i < array_length_1d(robot_item_scale); i++)
{
    if (i != robot_item_selected)
        robot_item_scale[i] = lerp(robot_item_scale[i], 1, 0.25);
}

if (robot_move_to_position == true)
{
    obj_robot_build_cursor.x = lerp(obj_robot_build_cursor.x, 170, 0.3);
    obj_robot_build_cursor.y = lerp(obj_robot_build_cursor.y, 150, 0.3);
    
    if (round(obj_robot_build_cursor.x) == 170 && round(obj_robot_build_cursor.y) == 150)
    {
        robot_move_to_position = false;
        obj_robot_build_cursor.soul_can_move = true;
        obj_robot_build_cursor.image_alpha_base = 1;
    }
}
