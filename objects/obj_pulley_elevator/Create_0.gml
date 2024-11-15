elevator_active = false;
elevator_can_collide = true;
elevator_next_room = -4;
act = 0;
scene = 0;
timer = 20;
pull_speed = 0;
shake_strength = 1;
player_x = 0;
player_y = 0;
follower_x_target = x + 20;
follower_y_target = y + 14;
target_y = 0;
starting_y = y;

if (room == rm_dunes_25 || room == rm_dunes_27)
    sprite_index = spr_pulley_elevator_dark;

if (!instance_exists(obj_pulley_elevator_top))
    instance_create(0, 0, obj_pulley_elevator_top);
