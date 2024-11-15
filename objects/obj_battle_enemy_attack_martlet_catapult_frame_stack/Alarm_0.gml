if (launch_count == launch_max)
{
    instance_destroy();
    exit;
}
else if (launch_count == 0)
{
    with (id_arm)
        launch_state = 2;
}
else
{
    with (id_arm)
        launch_state = 1;
}

launch_count += 1;
launch_alarm_active = false;
