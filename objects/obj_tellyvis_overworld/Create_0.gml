if ((global.sworks_flag[31] == 0 || global.sworks_flag[31] > 2) || global.route != 2)
{
    instance_destroy();
    exit;
}

event_inherited();
