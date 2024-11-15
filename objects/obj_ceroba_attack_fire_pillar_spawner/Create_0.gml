if (live_call())
    return global.live_result;

attack_stop = false;
spawn_pos = choose("left", "middle", "right");
event_user(0);
spawn_pos_last = "nothing";
double_pillar_noloop = false;
alarm[0] = 20;

if (global.hotland_flag[2] >= 2)
    alarm[0] = 1;
