depth = obj_snowdin06_woodgate.depth + 1;

if (slide == true)
{
    if (x < 405 && !instance_exists(obj_transition))
    {
        x += 0.6;
    }
    else
    {
        global.snowdin_flag[2] = 2;
        instance_destroy();
    }
}
