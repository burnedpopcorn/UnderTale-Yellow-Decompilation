if (live_call())
    return global.live_result;

if (!noloop && !instance_exists(warning_id))
{
    alarm[1] = attack_delay;
    noloop = true;
}
