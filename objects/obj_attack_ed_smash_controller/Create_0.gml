spawn_interval = room_speed * 1.25;
spawn_side = 1;
alarm[1] = spawn_interval * 6;
event_perform(ev_alarm, 0);
