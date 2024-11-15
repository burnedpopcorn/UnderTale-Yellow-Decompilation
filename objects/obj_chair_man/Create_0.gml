if (global.fun_event[0] == true)
{
    instance_destroy();
    exit;
}

if (global.fun_value >= 2 && global.fun_value <= 10)
{
    global.fun_event[0] = true;
    instance_destroy(103618);
}
else
{
    instance_destroy();
}
