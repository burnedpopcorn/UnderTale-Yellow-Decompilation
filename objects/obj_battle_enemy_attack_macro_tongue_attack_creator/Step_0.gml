if (live_call())
    return global.live_result;

if (attack_delay <= 0)
{
    attack_delay = attack_delay_max;
    
    with (frog_top[current_frog_top])
        tongue_attack = true;
    
    with (frog_bot[current_frog_bot])
        tongue_attack = true;
    
    current_frog_top = choose(2, 3);
    current_frog_bot = choose(2, 3);
}
