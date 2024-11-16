function joystick_process_events()
{
    var xaxis, yaxis;
    
    if (argument_count > 0 && argument[0] > 0)
        exit;
    
    if (joystick_exists(1))
    {
        xaxis = joystick_xpos(1);
        
        if (xaxis < -0.3)
            event_perform(ev_mouse, 16);
        
        if (xaxis > 0.3)
            event_perform(ev_mouse, 17);
        
        yaxis = joystick_ypos(1);
        
        if (yaxis < -0.3)
            event_perform(ev_mouse, 18);
        
        if (yaxis > 0.3)
            event_perform(ev_mouse, 19);
        
        if (joystick_check_button(1, 0))
            event_perform(ev_mouse, 21);
        
        if (joystick_check_button(1, 1))
            event_perform(ev_mouse, 22);
        
        if (joystick_check_button(1, 2))
            event_perform(ev_mouse, 23);
        
        if (joystick_check_button(1, 3))
            event_perform(ev_mouse, 24);
        
        if (joystick_check_button(1, 4))
            event_perform(ev_mouse, 25);
        
        if (joystick_check_button(1, 5))
            event_perform(ev_mouse, 26);
        
        if (joystick_check_button(1, 6))
            event_perform(ev_mouse, 27);
        
        if (joystick_check_button(1, 7))
            event_perform(ev_mouse, 28);
    }
    
    if (joystick_exists(2))
    {
        xaxis = joystick_xpos(2);
        
        if (xaxis < -0.3)
            event_perform(ev_mouse, 16);
        
        if (xaxis > 0.3)
            event_perform(ev_mouse, 17);
        
        yaxis = joystick_ypos(2);
        
        if (yaxis < -0.3)
            event_perform(ev_mouse, 18);
        
        if (yaxis > 0.3)
            event_perform(ev_mouse, 19);
        
        if (joystick_check_button(2, 0))
            event_perform(ev_mouse, 21);
        
        if (joystick_check_button(2, 1))
            event_perform(ev_mouse, 22);
        
        if (joystick_check_button(2, 2))
            event_perform(ev_mouse, 23);
        
        if (joystick_check_button(2, 3))
            event_perform(ev_mouse, 24);
        
        if (joystick_check_button(2, 4))
            event_perform(ev_mouse, 25);
        
        if (joystick_check_button(2, 5))
            event_perform(ev_mouse, 26);
        
        if (joystick_check_button(2, 6))
            event_perform(ev_mouse, 27);
        
        if (joystick_check_button(2, 7))
            event_perform(ev_mouse, 28);
    }
}