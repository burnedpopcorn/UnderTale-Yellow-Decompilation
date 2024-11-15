var y_variance, h_speed, x_dir;

if (live_call())
    return global.live_result;

y_variance = 10;
h_speed = 3;
x_dir = sign(320 - xstart);
y = ystart + (sin((random_offset + current_time) / 300) * y_variance);
x += (x_dir * h_speed);
