if (live_call())
    return global.live_result;

with (id_feather[rnumber_order[feather_launch_counter]])
    event_user(1);

feather_launch_counter += 1;

if (feather_launch_counter < fcreate_count)
    alarm[0] = feather_launch_alarm;
