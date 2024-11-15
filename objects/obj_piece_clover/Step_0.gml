if (live_call())
    return global.live_result;

if (disappear == true)
{
    if (alpha > 0)
        alpha -= 0.1;
    else
        instance_destroy();
}
