if (global.current_hp_enemy_2 < 0)
    global.current_hp_enemy_2 = 0;

if (global.current_hp_enemy_draw_2 > global.current_hp_enemy_2)
    global.current_hp_enemy_draw_2 -= ((global.last_hp_enemy_2 - global.current_hp_enemy_2) / 10);

if (global.current_hp_enemy_draw_2 <= global.current_hp_enemy_2)
    global.current_hp_enemy_draw_2 = global.current_hp_enemy_2;

if (global.current_hp_enemy_draw_2 == global.current_hp_enemy_2 && execute_code == true && no_loop == false)
{
    if (instance_exists(obj_text_damage_count) && obj_text_damage_count.y == obj_text_damage_count.starting_point)
    {
        alarm[1] = 15;
        no_loop = true;
    }
    else if (instance_exists(obj_text_miss) && obj_text_miss.y == obj_text_miss.starting_point)
    {
        alarm[1] = 15;
        no_loop = true;
    }
}
