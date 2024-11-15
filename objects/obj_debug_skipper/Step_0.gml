if (live_call())
    return global.live_result;

if (window_has_focus())
{
    if (instance_exists(obj_dialogue) || instance_exists(obj_dialogue_battle) || instance_exists(obj_quote_bubble_battle))
    {
        keyboard_key_release(ord("X"));
        keyboard_key_press(ord("X"));
        keyboard_key_release(ord("X"));
        
        if (!alarm[0])
            alarm[0] = 3;
    }
}
else
{
    keyboard_key_release(ord("Z"));
    keyboard_key_release(ord("X"));
    alarm[0] = -1;
}

if (global.current_hp_self < global.max_hp_self)
    global.current_hp_self = global.max_hp_self;

if (room != rm_battle && room != rm_battle_flowey && room != rm_battle_flowey_phase_2 && room != rm_mew_mew && !instance_exists(obj_puzzle_collider_snowdin_19) && !instance_exists(obj_puzzle_controller_overworld_yellow) && !keyboard_check(vk_tab))
    room_speed = 150;
else if ((room == rm_battle || room == rm_battle_flowey || room == rm_battle_flowey_phase_2) && !keyboard_check(vk_tab))
    room_speed = 150;
else
    room_speed = 30;

with (all)
{
    if (image_index < (image_number - 1))
        image_index = image_number - 1;
    
    if (image_speed > 0)
        image_speed = 1;
}

if (room == rm_battle)
{
    if (global.battling_boss == false)
    {
        global.enemy_sparing = true;
        global.enemy_sparing_2 = true;
        global.enemy_sparing_3 = true;
    }
    else if (keyboard_check_pressed(ord("S")))
    {
        global.enemy_sparing = true;
    }
    
    if (instance_exists(obj_toy_gun_circle))
    {
        with (obj_toy_gun_circle)
        {
            if (outline <= (small_circle * 0.25))
            {
                keyboard_key_press(ord("Y"));
                keyboard_key_release(ord("Y"));
            }
        }
    }
    
    if (instance_exists(obj_toy_gun_circle_multi))
    {
        with (obj_toy_gun_circle_multi)
        {
            if (circle_current <= final_circle && outline[circle_current] <= (small_circle * 0.25))
            {
                keyboard_key_press(ord("Y"));
                keyboard_key_release(ord("Y"));
            }
        }
    }
    
    if (instance_exists(obj_wild_revolver_circle))
    {
        with (obj_wild_revolver_circle)
        {
            if (outline <= (small_circle * 0.5))
            {
                keyboard_key_press(ord("Y"));
                keyboard_key_release(ord("Y"));
            }
        }
    }
    
    if (instance_exists(obj_wild_revolver_circle_multi))
    {
        with (obj_wild_revolver_circle_multi)
        {
            if (circle_current <= final_circle && outline[circle_current] <= (small_circle * 0.25))
            {
                keyboard_key_press(ord("Y"));
                keyboard_key_release(ord("Y"));
            }
        }
    }
}
