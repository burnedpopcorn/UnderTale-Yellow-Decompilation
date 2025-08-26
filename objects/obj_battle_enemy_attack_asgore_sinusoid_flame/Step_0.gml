if (live_call())
    return global.live_result;

sin_value += 9;

if (sin_value > 359)
    sin_value -= 360;

var sin_current = sin(degtorad(sin_value));
var x_offset = spawner_id.x_offset_max;
var b_speed = spawner_id.bullet_speed;
y += b_speed;
x = xstart + (sin_current * (x_offset * x_dir));
