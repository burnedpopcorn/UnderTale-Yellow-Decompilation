if (global.current_hp_enemy < 0)
    global.current_hp_enemy = 0;

if (global.current_hp_enemy_draw > global.current_hp_enemy)
    global.current_hp_enemy_draw -= ((global.last_hp_enemy - global.current_hp_enemy) / 10);

if (global.current_hp_enemy_draw <= global.current_hp_enemy)
    global.current_hp_enemy_draw = global.current_hp_enemy;

if (global.current_hp_enemy_draw == global.current_hp_enemy && execute_code == true && no_loop == false)
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
