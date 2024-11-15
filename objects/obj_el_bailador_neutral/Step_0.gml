var enemy_dead, enemy_spared;

enemy_dead = global.enemy_dead;
enemy_spared = global.enemy_spared;
event_user(0);

if (enemy_dead == true)
{
    x = starting_point_x;
    y = starting_point_y;
    image_xscale = starting_point_xscale;
    image_yscale = starting_point_yscale;
    instance_create(starting_point_x, starting_point_y, obj_el_bailador_dead);
    instance_destroy();
    exit;
    image_alpha = 0.5;
}
else if (enemy_spared == true)
{
    sprite_index = spr_el_bailador_spared;
    x = starting_point_x;
    y = starting_point_y;
    image_xscale = starting_point_xscale;
    image_yscale = starting_point_yscale;
    image_speed = 0;
    image_index = 0;
    image_alpha = 0.5;
    
    if (no_loop_create_clouds == false)
    {
        for (i = 0; i <= 11; i += 1)
            instance_create(x, y - 22, obj_spare_cloud);
    }
    
    no_loop_create_clouds = true;
}

if (damage_disjoint_count > 0)
{
    damage_disjoint_count -= 1;
}
else if (enemy_dead == false && enemy_spared == false)
{
    if (global.current_hp_enemy <= 0)
        sprite_index = spr_el_bailador_dead;
    else if (global.enemy_low_hp == true && global.current_hp_enemy < global.max_hp_enemy)
        sprite_index = neutral_sprite;
    else
        sprite_index = neutral_sprite;
}

if (instance_exists(obj_text_damage_count) && global.fight_number == 1 && no_loop_damage_disjoint_count == false)
{
    time_elapsed = 0;
    sign_modifier = 1;
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

x = draw_position_x + damage_disjoint_x;
y = draw_position_y + damage_disjoint_y;
image_xscale = starting_point_xscale;
image_yscale = starting_point_yscale;

if (!(instance_exists(obj_text_damage_count) && global.fight_number == 1) && enemy_dead == false && enemy_spared == false && image_alpha > 0)
{
    game_maker_cannot_do_math = power((time_elapsed / ((time_max / 2) * (1 / sqrt(max_rise)))) - sqrt(max_rise), 2);
    animation_disjoint_yscale = sign_modifier * (max_rise - game_maker_cannot_do_math);
    time_elapsed += time_increase;
    
    if (time_elapsed >= time_max)
    {
        time_elapsed = 0;
        sign_modifier = -sign_modifier;
    }
    
    image_yscale = draw_position_yscale + animation_disjoint_yscale;
    image_xscale = draw_position_xscale - (animation_disjoint_yscale * (max_rise_ext / max_rise));
    animating = true;
}
else
{
    animating = false;
}
