if ((global.sworks_flag[31] == 0 || global.sworks_flag[31] > 2) || (global.route != 2 && global.sworks_flag[61] == 0))
{
    instance_destroy();
    exit;
}

depth = -y;
