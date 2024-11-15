if (x > x_destination)
{
    x -= move_speed;
    
    if (x <= x_destination)
    {
        x = x_destination;
        launch_alarm_active = true;
        alarm[0] = launch_alarm;
    }
    
    for (i = 0; i < random_frames; i++)
    {
        with (id_frame_middle[i])
            event_user(0);
    }
    
    with (id_frame_center)
        event_user(0);
}
else if (launch_alarm_active == false && id_arm.launch_state == 0)
{
    launch_alarm_active = true;
    alarm[0] = launch_alarm;
}
