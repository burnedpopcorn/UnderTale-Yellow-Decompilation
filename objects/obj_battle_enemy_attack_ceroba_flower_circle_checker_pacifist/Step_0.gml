if (live_call())
    return global.live_result;

if (counter_current > counter_max)
{
    if (!alarm[1])
        alarm[1] = 20;
    
    exit;
}

if (!alarm[0])
    alarm[0] = 70;
