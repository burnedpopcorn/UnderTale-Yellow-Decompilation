var y_diff;

y_diff = 200;
state = 0;
on_x = x - obj_dummy_training_dummy.x;
on_y = y - obj_dummy_training_dummy.y;
y -= y_diff;
sign_modifier = -1;
time_max = 50;
time_elapsed = time_max / 2;
time_increase = 1;
max_rise = y_diff;
state_1_alarm = 30;
state_1_no_loop = false;
spin_angle_dir = -1;
spin_angle_speed = 40;
spin_x_dir = 1;
spin_x_speed = 20;
