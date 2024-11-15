var battle_box, spr_width, spawn_x, spawn_y, ball;

battle_box = 3154;
spr_width = sprite_get_width(spr_battle_enemy_attack_axis_ball);
spawn_x = 320;
spawn_y = battle_box.bbox_top - 60;
ball = instance_create_depth(spawn_x, spawn_y, -100, obj_battle_enemy_attack_axis_energy_ball_boss);
ball.direction = 270;
ball.speed = 7;
attack_can_end = true;
