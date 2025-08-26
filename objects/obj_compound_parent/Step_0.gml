if (live_call())
    return global.live_result;

if (global.sworks_flag[25] == 0 || global.sworks_flag[25] > 1)
    exit;

var robot_item_x_player = obj_pl.x;
var robot_item_y_player = obj_pl.y - 9 - (sprite_height - sprite_yoffset);
var nearest_item = 0;

with (obj_pl)
    nearest_item = instance_nearest(x, y, obj_compound_parent);

if (distance_to_point(obj_pl.x, obj_pl.y) < 40 && nearest_item == id && keyboard_multicheck_pressed(vk_nokey) && obj_pl.state == scr_normal_state)
{
    if (robot_item_is_carried == false && robot_item_can_pickup == true)
    {
        with (obj_compound_parent)
        {
            if (robot_item_is_carried == true)
                exit;
        }
        
        robot_item_is_jumping = true;
        robot_item_x_target = robot_item_x_player;
        robot_item_y_target = robot_item_y_player;
        audio_play_sound(snd_playerjump, 1, 0);
        depth = -9999;
        visible = true;
        obj_pl.state = scr_frozen_state;
        obj_pl.image_index = 0;
        obj_pl.image_speed = 0;
    }
}

if (robot_item_is_jumping == true)
{
    if (scr_arc_jump(robot_item_x_target, robot_item_y_target))
    {
        if (robot_item_is_carried == false)
        {
            robot_item_is_carried = true;
            robot_item_is_jumping = false;
            
            if (!global.cutscene)
                scr_cutscene_end();
        }
        else if (robot_item_is_carried == true)
        {
            audio_play_sound(snd_mart_impact_2, 1, 0);
            robot_item_is_carried = false;
            robot_item_is_jumping = false;
            depth = -y;
            visible = true;
            
            if (!instance_exists(obj_dialogue))
            {
                if (!global.cutscene)
                    scr_cutscene_end();
            }
            
            if (instance_exists(obj_steamworks_13_controller) && obj_steamworks_13_controller.robot_part_no_loop == true)
                obj_steamworks_13_controller.robot_part_no_loop = false;
        }
    }
    
    exit;
}

sprite_set_offset(spr_comp_pepper, 3, -11);

if (robot_item_is_carried == true)
{
    if (keyboard_multicheck(vk_anykey) && obj_pl.state == scr_normal_state)
    {
        audio_play_sound(snd_fail, 1, 0);
        robot_item_is_carried = false;
        x = obj_pl.x;
        y = obj_pl.y + robot_item_y_offset;
        depth = -y;
    }
}
