var battle_box, snake_spawn_y, snake, snake_spawn_x;

if (live_call())
    return global.live_result;

battle_box = 3154;

switch (attack_tick)
{
    case 30:
    case 70:
    case 110:
        do
            snake_spawn_y = choose(battle_box.bbox_top + 20, battle_box.y, battle_box.bbox_bottom - 20);
        until (snake_spawn_y != snake_spawn_last);
        
        snake = instance_create_depth(choose(battle_box.bbox_left - 40, battle_box.bbox_right + 40), snake_spawn_y, -50, obj_battle_enemy_attack_slither_snake_snake);
        
        if (snake.x < battle_box.x)
        {
            snake.direction = 0;
        }
        else
        {
            snake.image_yscale = -1;
            snake.direction = 180;
        }
        
        snake.image_angle = snake.direction;
        snake.speed = 5;
        snake_spawn_last = snake_spawn_y;
        break;
    
    case 150:
    case 190:
    case 230:
        do
            snake_spawn_x = choose(battle_box.bbox_left + 20, battle_box.x, battle_box.bbox_right - 20);
        until (snake_spawn_x != snake_spawn_last);
        
        snake = instance_create_depth(snake_spawn_x, choose(battle_box.bbox_top - 40, battle_box.bbox_bottom + 40), -50, obj_battle_enemy_attack_slither_snake_snake);
        
        if (snake.y < battle_box.y)
            snake.direction = 270;
        else
            snake.direction = 90;
        
        snake.image_angle = snake.direction;
        snake.speed = 5;
        snake_spawn_last = snake_spawn_x;
        break;
    
    case 270:
        instance_destroy();
        break;
}

attack_tick += 1;
