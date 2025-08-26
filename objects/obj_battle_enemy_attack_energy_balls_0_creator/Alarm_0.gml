var battle_box = obj_dialogue_box_battle_transformation_any;
var spr_width = sprite_get_width(spr_battle_enemy_attack_axis_ball);
var spawn_x = 320;
var spawn_y = battle_box.bbox_top - 60;
var ball = instance_create_depth(spawn_x, spawn_y, -100, obj_battle_enemy_attack_axis_energy_ball_boss);
ball.direction = 270;
ball.speed = 7;
attack_can_end = true;
