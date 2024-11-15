with (id_needle)
    event_user(0);

fire_count += 1;

if (fire_count < fire_max)
    alarm[0] = attack_alarm;
else
    alarm[1] = end_alarm;
