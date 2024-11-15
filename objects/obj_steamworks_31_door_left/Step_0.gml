if (keyboard_multicheck_pressed(0) && scr_interact() && image_index == 0)
{
    if (global.route == 3)
        message[0] = "* (The door is locked.)";
    else
        message[0] = "* (Locked.)";
}
