var confirm_key, cancel_key;

if (global.dialogue_open || obj_robot_build_controller.destroy_self == true)
{
    image_alpha = 0;
    exit;
}

scr_get_input();
confirm_key = keyboard_multicheck_pressed(0);
cancel_key = keyboard_multicheck_pressed(1);
soul_speed = 6;

with (obj_robot_build_item)
{
    if (!robot_item_placed)
        other.soul_speed = 4;
}

if (soul_can_move)
{
    x += ((global.right_key - global.left_key) * soul_speed);
    y += ((global.down_key - global.up_key) * soul_speed);
}

x = clamp(x, 0, 640);
y = clamp(y, 0, 480);

with (obj_robot_build_item)
{
    if (!robot_item_placed)
    {
        x = other.x;
        y = other.y;
        other.x = clamp(other.x, 60, 280);
        other.y = clamp(other.y, 20, 280);
        other.soul_speed = 4;
    }
}

image_alpha = image_alpha_base * obj_robot_build_controller.draw_alpha;
