if (live_call())
    return global.live_result;

event_inherited();

if (instance_exists(obj_verlet_rope_generator))
    image_alpha = obj_verlet_rope_generator.image_alpha;

bounce = 0.9;
p_gravity = 0.8;
p_friction = 0.9;
precision = 3;
rope_sprite = 3581;
base_x = x;
base_y = y;
r_length = 130;
r_segments = 13;
r_width = 1.5;
can_move = false;
wind_power = 0.04;
wind_power_max = 0.05;
wind_direction = 1;
wind_direction_change_countdown = 80;
wind_direction_change_countdown_max = 80;
sway = 0;
alarm[0] = 10;
alarm[1] = 30;
points = [];
array_push(points, [base_x, base_y, base_x, base_y, true, rope_sprite]);

for (var i = 0; i < (r_segments - 1); i++)
    array_push(points, [base_x, points[i][1] + (r_length / r_segments), base_x, points[i][1] + (r_length / r_segments), false, rope_sprite]);

sticks = [];

for (var i = 0; i < (r_segments - 1); i++)
    array_push(sticks, [points[i], points[i + 1], scr_distance(points[i], points[i + 1]), r_width, 255, 255, false]);
