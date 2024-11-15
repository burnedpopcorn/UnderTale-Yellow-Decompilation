var battle_box, spr_width, spawn_x, spawn_y, ball;

battle_box = 3154;
spr_width = sprite_get_width(spr_battle_enemy_attack_axis_ball);

if (current_side == "left")
{
    spawn_x = irandom_range(battle_box.bbox_left, 300);
    current_side = "right";
}
else
{
    spawn_x = irandom_range(340, battle_box.bbox_right);
    current_side = "left";
}

spawn_x_last = spawn_x;
spawn_y = battle_box.bbox_top - 60;
ball = instance_create_depth(spawn_x, spawn_y, -100, obj_battle_enemy_attack_axis_energy_ball_boss);
ball.direction = choose(225, 315, 270);
ball.speed = 6;

if (attack_count > 0)
{
    attack_count -= 1;
    alarm[0] = attack_interval;
}
else
{
    instance_destroy();
}
