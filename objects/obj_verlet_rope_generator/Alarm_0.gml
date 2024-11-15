if (live_call())
    return global.live_result;

if (sway == 0)
    sway = sign(wind_power) * 0.03;
else
    sway = 0;

alarm[0] = 15;
