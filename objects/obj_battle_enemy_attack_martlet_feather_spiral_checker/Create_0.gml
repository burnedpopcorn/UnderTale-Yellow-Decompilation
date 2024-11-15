explosion_count = 0;

if (!instance_exists(obj_martlet_body))
{
    explosion_max = 12;
    explosion_alarm = 25;
}
else
{
    explosion_max = 8;
    explosion_alarm = 40;
}

alarm[0] = 20;
