image_angle += ((57.2957836029062 * rotation_speed * 1000) / room_speed / sin_timer);
y -= sin(current_time / sin_timer);
image_yscale = ((1 + abs(sin(current_time / 2 / sin_timer))) * 0.3) + 0.4;
x -= (((1 + abs(sin(current_time / 2 / sin_timer))) * 0.5) + xspeed);

if (x < -30)
    instance_destroy();
