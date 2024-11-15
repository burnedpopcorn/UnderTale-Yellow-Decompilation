var enemy_dead_2, enemy_spared_2;

enemy_dead_2 = global.enemy_dead_2;
enemy_spared_2 = global.enemy_spared_2;

if (enemy_dead_2 == false && enemy_spared_2 == false)
    image_alpha = global.image_alpha_enemy_attacking;

if (enemy_dead_2 == true)
{
    x = starting_point_x;
    y = starting_point_y;
    global.id_store = id;
    instance_create(starting_point_x, starting_point_y, obj_know_cone_ball_dead);
    instance_destroy();
    exit;
    image_alpha = 0.5;
}
else if (enemy_spared_2 == true)
{
    x = starting_point_x;
    y = starting_point_y;
    image_alpha = 0.5;
}

if (damage_disjoint_count > 0)
{
    damage_disjoint_count -= 1;
}
else if (enemy_dead_2 == false && enemy_spared_2 == false)
{
    if (global.enemy_low_hp_2 == true && global.current_hp_enemy_2 < global.max_hp_enemy_2)
        sprite_index = spr_know_cone_ball_critical;
    else
        sprite_index = spr_know_cone_ball;
}

if (instance_exists(obj_text_damage_count) && global.fight_number == 2 && no_loop_damage_disjoint_count == false)
{
    damage_disjoint_count = 12;
    no_loop_damage_disjoint_count = true;
}
else if (!instance_exists(obj_text_damage_count))
{
    no_loop_damage_disjoint_count = false;
}

if (damage_disjoint_count == 12)
    damage_disjoint_x = -50;
else if (damage_disjoint_count == 10)
    damage_disjoint_x = 50;
else if (damage_disjoint_count == 8)
    damage_disjoint_x = -20;
else if (damage_disjoint_count == 6)
    damage_disjoint_x = 20;
else if (damage_disjoint_count == 4)
    damage_disjoint_x = -10;
else if (damage_disjoint_count == 2)
    damage_disjoint_x = 10;
else if (damage_disjoint_count == 0)
    damage_disjoint_x = 0;

if (damage_disjoint_count > 0 || global.current_hp_enemy_2 <= 0)
{
}

x = draw_position_x + damage_disjoint_x;
y = draw_position_y + damage_disjoint_y;
