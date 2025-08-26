if (global.dunes_flag[41] >= 1)
    instance_destroy();

if (global.route == 3)
{
    message[0] = "* (Locked.)";
}
else
{
    message[0] = "* (A large, ornate gate.)\t";
    message[1] = "* (Unfortunately, it's locked.)";
}
