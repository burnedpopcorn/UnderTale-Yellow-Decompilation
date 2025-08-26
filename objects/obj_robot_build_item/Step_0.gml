scr_get_input();
var confirm_key = keyboard_multicheck_pressed(vk_nokey);
var cancel_key = keyboard_multicheck_pressed(2);
var rotate_key = keyboard_multicheck_pressed(vk_anykey);
var rotate_key_released = keyboard_multicheck_released(vk_anykey);

if (robot_item_is_destroyed)
{
    image_alpha -= 0.1;
    
    if (image_alpha <= 0)
        instance_destroy();
    
    vspeed -= 0.1;
    exit;
}

if (confirm_key && !robot_item_placed)
{
    audio_play_sound(snd_switch, 1, 0);
    robot_item_placed = true;
    exit;
}

if (rotate_key && !robot_item_placed)
{
    robot_item_is_rotating = true;
    robot_item_rotate_dir *= -1;
    obj_robot_build_cursor.soul_can_move = false;
}

if (rotate_key_released)
{
    robot_item_is_rotating = false;
    obj_robot_build_cursor.soul_can_move = true;
}

if (robot_item_is_rotating == true)
{
    image_angle += ((global.right_key * 3) - (global.left_key * 3));
    image_xscale += ((global.up_key * 0.05) - (global.down_key * 0.05));
    image_xscale = clamp(image_xscale, 0.5, 2);
    image_yscale = image_xscale;
}

if (cancel_key && !robot_item_placed)
{
    robot_item_placed = false;
    robot_item_is_destroyed = true;
    audio_play_sound(snd_monster_damage_miss, 1, 0);
    exit;
}

with (obj_robot_build_item)
{
    if (!robot_item_placed)
        exit;
}

if (place_meeting(x, y, obj_robot_build_cursor) && confirm_key)
{
    audio_play_sound(snd_confirm, 1, 0);
    robot_item_placed = false;
}

image_alpha = obj_robot_build_controller.draw_alpha;
