if (live_call())
    return global.live_result;

axis_positions = [[210, 500], [370, 500], [530, 500], [210, 620], [370, 620], [530, 620], [210, 760], [370, 760], [530, 760]];
axis_position_current = 7;
axis_position_new = 7;
axis_move_timer_max = 90;
axis_move_timer = 90;
alarm[0] = 1;
