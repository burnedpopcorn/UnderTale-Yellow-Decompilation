if (live_call())
    return global.live_result;

battle_box = obj_dialogue_box_battle_transformation_any;
bomb_side = choose(1, 2, 3, 4);
ball_delay_list = ds_list_create();
ds_list_add(ball_delay_list, 25, 50, 75, 100, 125, 150);
ds_list_shuffle(ball_delay_list);
var delay_current = 45;
var spawn_dir = 0;
var spawn_dist = 90;

for (var i = 0; i < 6; i++)
{
    spawn_dir = i * 60;
    var ball = instance_create_depth(battle_box.x + lengthdir_x(spawn_dist, spawn_dir), battle_box.y + lengthdir_y(spawn_dist, spawn_dir), -100, obj_battle_enemy_attack_axis_energy_ball_magnetic);
    ball.alarm[0] = ds_list_find_value(ball_delay_list, 0);
    ball.alarm[1] = ball.alarm[0] / 3;
    ds_list_delete(ball_delay_list, 0);
}

obj_heart_battle_fighting_parent.movement_mode = 2;
