if (live_call())
    return global.live_result;

if (spawner != -4)
{
    if (instance_exists(spawner))
        y = ystart - (spawner.ystart - spawner.y);
    else
        instance_destroy();
}
