if ((global.sworks_flag[31] > 0 && global.sworks_flag[31] < 3) && global.route != 3)
{
    instance_destroy();
    exit;
}

if (global.sworks_flag[1] < 3)
{
    if (global.route == 3)
    {
        message[0] = "* (Locked.)";
    }
    else
    {
        message[0] = "* (You peer inside the#  chamber...)\t";
        message[1] = "* (It's far too dark to make#  anything out.)";
    }
}
else
{
    message[0] = "* ...";
}
