if (live_call())
    return global.live_result;

switch (attack_tick)
{
    case 220:
        instance_destroy();
        break;
}

attack_tick += 1;
