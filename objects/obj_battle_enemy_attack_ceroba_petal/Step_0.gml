if (live_call())
    return global.live_result;

var y_variance = 10;
var h_speed = 3;
var x_dir = sign(320 - xstart);
y = ystart + (sin((random_offset + current_time) / 300) * y_variance);
x += (x_dir * h_speed);
