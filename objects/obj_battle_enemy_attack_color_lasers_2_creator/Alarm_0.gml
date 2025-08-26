var battle_box = obj_dialogue_box_battle_transformation_any;
var current_side = choose("hor", "ver");
var spawn_x, spawn_y;

if (current_side == "hor")
{
    spawn_x = choose(battle_box.bbox_left - 80, battle_box.bbox_right + 80);
    spawn_y = irandom_range(battle_box.bbox_top - 80, battle_box.bbox_bottom + 80);
}
else
{
    spawn_y = choose(battle_box.bbox_top - 80, battle_box.bbox_bottom + 80);
    spawn_x = irandom_range(battle_box.bbox_left - 80, battle_box.bbox_right + 80);
}

var ball = instance_create_depth(spawn_x, spawn_y, -100, obj_battle_enemy_attack_axis_energy_ball_boss);
ball.direction = point_direction(ball.x, ball.y, battle_box.x, battle_box.y);
ball.speed = 4;

if (attack_count > 0)
{
    attack_count -= 1;
    alarm[0] = attack_interval;
}
else
{
    instance_destroy();
}
