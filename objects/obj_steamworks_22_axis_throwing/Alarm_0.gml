if (obj_pl.x > 1860)
{
    state = "idle";
    image_speed = 0;
    ball_spawn_noloop = false;
    alarm[0] = throw_interval;
}
else
{
    state = "throw";
}
