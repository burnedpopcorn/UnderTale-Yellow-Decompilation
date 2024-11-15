if (global.fun_event[1] == true)
{
    instance_destroy();
    exit;
}

if (global.fun_value >= 9 && global.fun_value <= 18)
{
    global.fun_event[1] = true;
}
else
{
    instance_destroy();
    exit;
}
