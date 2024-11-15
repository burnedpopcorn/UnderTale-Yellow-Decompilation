if (live_call())
    return global.live_result;

event_inherited();

if (laser_length < laser_length_max)
    laser_length += laser_speed;
