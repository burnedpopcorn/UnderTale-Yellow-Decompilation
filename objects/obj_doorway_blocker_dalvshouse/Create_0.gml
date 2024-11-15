if (live_call())
    return global.live_result;

user_event_0_activated = false;
no_loop_autowalk = false;
waiter = 0;

if (global.flag[17] != 1 || global.route == 3)
    instance_destroy();

scene = 0;
