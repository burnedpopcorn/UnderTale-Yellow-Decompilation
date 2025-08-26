if (live_call())
    return global.live_result;

switch (attack_tick)
{
    case 60:
        var snake_spawn_x;
        
        do
            snake_spawn_x = choose(battle_box.bbox_left + 20, battle_box.x, battle_box.bbox_right - 20);
        until (snake_spawn_x != snake_spawn_last);
        
        var snake = instance_create_depth(snake_spawn_x, choose(battle_box.bbox_top - 40, battle_box.bbox_bottom + 40), -50, obj_battle_enemy_attack_slither_snake_snake);
        
        if (snake.y < battle_box.y)
            snake.direction = 270;
        else
            snake.direction = 90;
        
        snake.image_angle = snake.direction;
        snake.speed = 3;
        snake_spawn_last = snake_spawn_x;
        attack_tick = 0;
        break;
}

attack_tick += 1;
