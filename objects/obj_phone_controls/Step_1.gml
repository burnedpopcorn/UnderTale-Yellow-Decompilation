touch_current = 0;
phn_down = false;
phn_left = false;
phn_up = false;
phn_right = false;
phn_downp = false;
phn_leftp = false;
phn_upp = false;
phn_rightp = false;

for (var i = 0; i < 4; i++)
{
    var mouse_xx = device_mouse_x_to_gui(i);
    var mouse_yy = device_mouse_y_to_gui(i);
    a_pressed = point_in_circle(mouse_xx, mouse_yy, mobile_a_xx, mobile_a_yy, button_radius) && device_mouse_check_button(i, mb_any);
    
    if (a_pressed && !noloop_a)
    {
        noloop_a = i;
        keyboard_key_press(vk_enter);
    }
    
    if (!a_pressed && noloop_a == i)
    {
        noloop_a = -1;
        keyboard_key_release(vk_enter);
    }
    
    if (a_pressed)
        break;
}

for (var i = 0; i < 4; i++)
{
    var mouse_xx = device_mouse_x_to_gui(i);
    var mouse_yy = device_mouse_y_to_gui(i);
    b_pressed = point_in_circle(mouse_xx, mouse_yy, mobile_b_xx, mobile_b_yy, button_radius) && device_mouse_check_button(i, mb_any);
    
    if (b_pressed && !noloop_b)
    {
        noloop_b = i;
        keyboard_key_press(vk_shift);
    }
    
    if (!b_pressed && noloop_b == i)
    {
        noloop_b = -1;
        keyboard_key_release(vk_shift);
    }
    
    if (b_pressed)
        break;
}

for (var i = 0; i < 4; i++)
{
    var mouse_xx = device_mouse_x_to_gui(i);
    var mouse_yy = device_mouse_y_to_gui(i);
    y_pressed = point_in_circle(mouse_xx, mouse_yy, mobile_a_xx, mobile_y_yy, button_radius) && device_mouse_check_button(i, mb_any);
    
    if (y_pressed && !noloop_y)
    {
        noloop_y = i;
        keyboard_key_press(vk_control);
    }
    
    if (!y_pressed && noloop_y == i)
    {
        noloop_y = -1;
        keyboard_key_release(vk_control);
    }
    
    if (y_pressed)
        break;
}

var stick_radius = sprite_get_width(spr_andrd_stick_base) * button_scale;

for (var i = 0; i < 4; i++)
{
    var mouse_xx = device_mouse_x_to_gui(i);
    var mouse_yy = device_mouse_y_to_gui(i);
    
    if (mouse_xx <= 0 && device_mouse_check_button(i, mb_any) && stick_movement_active == false)
    {
        mobile_stick_xx = mouse_xx;
        mobile_stick_yy = mouse_yy;
        stick_movement_active = true;
    }
    
    if (stick_movement_active == true)
    {
        mobile_stick_dir = point_direction(mobile_stick_xx, mobile_stick_yy, mouse_xx, mouse_yy);
        mobile_stick_distance = clamp(point_distance(mobile_stick_xx, mobile_stick_yy, mouse_xx, mouse_yy), 0, sprite_get_width(spr_andrd_stick) * 0.5 * button_scale);
        stick_x_dist = lengthdir_x(mobile_stick_distance, mobile_stick_dir);
        stick_y_dist = lengthdir_y(mobile_stick_distance, mobile_stick_dir);
        
        if (!device_mouse_check_button(i, mb_any))
            stick_movement_active = false;
        
        if (mobile_stick_xx < (-stick_radius * 0.5))
            stick_alpha = lerp(stick_alpha, 1, 0.25);
        else
            stick_alpha = lerp(stick_alpha, 0.15, 0.25);
        
        if (mobile_stick_distance > (global.gamepad_deadzone * stick_radius))
        {
            var dgn = 20;
            
            if (mobile_stick_dir >= (45 - dgn) && mobile_stick_dir < (135 + dgn))
            {
                if (stick_noloop_v != 1)
                {
                    phn_upp = true;
                    stick_noloop_v = 1;
                }
                
                phn_up = true;
            }
            
            if (mobile_stick_dir >= (135 - dgn) && mobile_stick_dir < (225 + dgn))
            {
                if (stick_noloop_h != 1)
                {
                    phn_leftp = true;
                    stick_noloop_h = 1;
                }
                
                phn_left = true;
            }
            
            if (mobile_stick_dir >= (225 - dgn) && mobile_stick_dir < (315 + dgn))
            {
                if (stick_noloop_v != 2)
                {
                    phn_downp = true;
                    stick_noloop_v = 2;
                }
                
                phn_down = true;
            }
            
            if ((mobile_stick_dir >= (315 - dgn) && mobile_stick_dir <= 360) || mobile_stick_dir < (45 + dgn))
            {
                if (stick_noloop_h != 2)
                {
                    phn_rightp = true;
                    stick_noloop_h = 2;
                }
                
                phn_right = true;
            }
        }
        else
        {
            stick_noloop_h = 0;
            stick_noloop_v = 0;
        }
        
        break;
    }
    else
    {
        stick_x_dist = 0;
        stick_y_dist = 0;
        stick_alpha = lerp(stick_alpha, 0.25, 0.25);
        stick_noloop_h = 0;
        stick_noloop_v = 0;
    }
}
