function scr_get_input()
{
    if (live_call())
        return global.live_result;
    
    scr_stick_press();
    global.down_key = keyboard_check(vk_down) || gamepad_button_check(0, gp_padd) || gamepad_axis_value(0, gp_axislv);
    global.left_key = keyboard_check(vk_left) || gamepad_button_check(0, gp_padl) || -gamepad_axis_value(0, gp_axislh);
    global.right_key = keyboard_check(vk_right) || gamepad_button_check(0, gp_padr) || gamepad_axis_value(0, gp_axislh);
    global.up_key = keyboard_check(vk_up) || gamepad_button_check(0, gp_padu) || -gamepad_axis_value(0, gp_axislv);
    global.down_keyp = keyboard_check_pressed(vk_down) || gamepad_button_check_pressed(0, gp_padd) || down_stick;
    global.left_keyp = keyboard_check_pressed(vk_left) || gamepad_button_check_pressed(0, gp_padl) || left_stick;
    global.right_keyp = keyboard_check_pressed(vk_right) || gamepad_button_check_pressed(0, gp_padr) || right_stick;
    global.up_keyp = keyboard_check_pressed(vk_up) || gamepad_button_check_pressed(0, gp_padu) || up_stick;
    
    if (gamepad_button_check_pressed(0, gp_padd) + gamepad_button_check_pressed(0, gp_padu) + gamepad_button_check_pressed(0, gp_padl) + gamepad_button_check_pressed(0, gp_padr) + down_stick + left_stick + right_stick + up_stick + gamepad_button_check_pressed(0, global.button1) + gamepad_button_check_pressed(0, global.button2) + gamepad_button_check_pressed(0, global.button3) + instance_exists(obj_phone_controls))
        global.using_gamepad = true;
    else if (keyboard_check(vk_anykey))
        global.using_gamepad = false;
    
    if (global.using_gamepad)
    {
        if (global.button1 == gp_face1)
            global.action_key = "A";
        else if (global.button1 == gp_face2)
            global.action_key = "B";
        else if (global.button1 == gp_face3)
            global.action_key = "X";
        else if (global.button1 == gp_face4)
            global.action_key = "Y";
        
        if (global.button2 == gp_face1)
            global.cancel_key = "A";
        else if (global.button2 == gp_face2)
            global.cancel_key = "B";
        else if (global.button2 == gp_face3)
            global.cancel_key = "X";
        else if (global.button2 == gp_face4)
            global.cancel_key = "Y";
        
        if (global.button3 == gp_face1)
            global.pause_key = "A";
        else if (global.button3 == gp_face2)
            global.pause_key = "B";
        else if (global.button3 == gp_face3)
            global.pause_key = "X";
        else if (global.button3 == gp_face4)
            global.pause_key = "Y";
    }
    else
    {
        global.pause_key = "C";
        global.action_key = "Z";
        global.cancel_key = "X";
    }
    
    if (instance_exists(obj_phone_controls))
    {
        global.down_key += obj_phone_controls.phn_down;
        global.left_key += obj_phone_controls.phn_left;
        global.right_key += obj_phone_controls.phn_right;
        global.up_key += obj_phone_controls.phn_up;
        global.down_keyp = sign(global.down_keyp + obj_phone_controls.phn_downp);
        global.left_keyp = sign(global.left_keyp + obj_phone_controls.phn_leftp);
        global.right_keyp = sign(global.right_keyp + obj_phone_controls.phn_rightp);
        global.up_keyp = sign(global.up_keyp + obj_phone_controls.phn_upp);
    }
}
