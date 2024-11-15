if (clover_launch == 1)
{
    path_start(pt_clover_launch, 6, path_action_stop, 0);
    clover_launch = 2;
}

if (clover_launch > 0)
    image_angle += 25;
