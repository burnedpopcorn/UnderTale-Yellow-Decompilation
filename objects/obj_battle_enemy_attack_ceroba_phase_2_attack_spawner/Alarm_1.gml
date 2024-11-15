if (live_call())
    return global.live_result;

if (alarm[0] > 0)
{
    alarm[1] = alarm[0];
    alarm[0] = -1;
    exit;
}

instance_destroy();
