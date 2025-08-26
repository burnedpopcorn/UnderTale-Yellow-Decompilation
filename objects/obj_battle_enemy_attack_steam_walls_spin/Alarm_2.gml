var xx = battle_box.bbox_left + 4 + 11;
var x_offset = 48;
var yy = battle_box.bbox_top - 40;
ball_spawn_point = irandom_range(0, 2);
var ball = instance_create_depth(xx + (x_offset * ball_spawn_point), yy, -100, obj_battle_enemy_attack_axis_energy_ball_boss);
ball.direction = 270;
alarm[2] = attack_interval;
