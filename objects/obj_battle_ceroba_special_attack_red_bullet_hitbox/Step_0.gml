if (live_call())
    return global.live_result;

if (spawner != -4)
{
    if (!instance_exists(spawner))
    {
        instance_destroy();
    }
    else
    {
        x = spawner.x;
        y = spawner.y;
    }
}
