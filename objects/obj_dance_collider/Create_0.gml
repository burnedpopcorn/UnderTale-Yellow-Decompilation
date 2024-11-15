dance_timer_max = 160;
dance_timer = dance_timer_max;

if (global.hotland_flag[9] >= 3 || global.route == 3 || global.dunes_flag[26] == 3 || global.geno_complete[4] == true)
    instance_destroy();
