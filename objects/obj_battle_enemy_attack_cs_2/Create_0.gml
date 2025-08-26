if (live_call())
    return global.live_result;

battle_box = obj_dialogue_box_battle_transformation_any;
snake_spawn_last = 0;
attack_tick = 0;
scr_enable_battle_box_surface();
spacing_h = 46;
spacing_v = 84;
start_r_x = battle_box.bbox_left + 1;
start_r_y = battle_box.bbox_top - 13;
start_l_x = start_r_x + round(spacing_h / 2);
start_l_y = start_r_y - round(spacing_v / 2);
rows = 4;
columns = 3;
random_green_r = irandom_range(1, (rows - 1) * columns);
random_green_l = irandom_range(1, (rows - 1) * columns);

for (i = 0; i < columns; i++)
{
    for (j = 0; j < rows; j++)
    {
        instance_create(start_r_x + (spacing_h * j), start_r_y - (spacing_v * i), obj_battle_enemy_attack_cactony_needle_green_white);
        
        with (global.id_store)
            move_direction = 1;
        
        if (((i * rows) + (j + 1)) == random_green_r)
        {
            with (global.id_store)
                event_user(3);
        }
    }
}

for (i = 0; i < columns; i++)
{
    for (j = 0; j < rows; j++)
    {
        instance_create(start_l_x + (spacing_h * j), start_l_y - (spacing_v * i), obj_battle_enemy_attack_cactony_needle_green_white);
        
        with (global.id_store)
            move_direction = -1;
        
        if (((i * rows) + (j + 1)) == random_green_r)
        {
            with (global.id_store)
                event_user(3);
        }
    }
}

alarm[0] = 250;
