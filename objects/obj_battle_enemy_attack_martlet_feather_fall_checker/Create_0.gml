x_store = 0;
y_store = 0;
angle_store = 0;
counter_current = 0;

if (!instance_exists(obj_martlet_body))
{
    counter_max = irandom_range(10, 13);
    alarm_count = 25;
}
else
{
    counter_max = irandom_range(7, 10);
    alarm_count = 30;
}

event_user(0);
