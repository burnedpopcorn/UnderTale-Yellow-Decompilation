x_store = 0;
y_store = 0;
angle_store = 0;
counter_current = 0;

if (!instance_exists(obj_martlet_body))
{
    counter_max = irandom_range(8, 10);
    alarm_count = 35;
}
else
{
    counter_max = irandom_range(6, 8);
    alarm_count = 50;
}

event_user(0);
