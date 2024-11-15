var enemy_dead, enemy_spared, enemy_sparing, random_doggo, random_x, random_y;

enemy_dead = global.enemy_dead;
enemy_spared = global.enemy_spared;
enemy_sparing = global.enemy_sparing;

if (enemy_dead == false && enemy_spared == false)
    image_alpha = global.image_alpha_enemy_attacking;

if (enemy_dead == true)
{
    x = starting_point_x;
    y = starting_point_y;
    instance_create(starting_point_x, starting_point_y, obj_bowll_dead);
    instance_destroy();
    exit;
    image_alpha = 0.5;
}
else if (enemy_spared == true)
{
    sprite_index = spr_bowll_spared;
    x = starting_point_x;
    y = starting_point_y;
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
else if (enemy_dead == false && enemy_spared == false && damage_disjoint_count <= 0)
{
    if (global.enemy_low_hp == true && global.current_hp_enemy < global.max_hp_enemy)
    {
        sprite_index = spr_bowll_body_critical;
        image_speed = 0;
        image_index = 0;
    }
    else
    {
        sprite_index = spr_bowll_body_normal;
        image_speed = 0;
        image_index = 0;
    }
}

if (instance_exists(obj_text_damage_count) && global.fight_number == 1 && no_loop_damage_disjoint_count == false)
{
    time_elapsed_sparkles = 0;
    damage_disjoint_count = 12;
    no_loop_damage_disjoint_count = true;
    audio_play_sound(enemy_hurt_noise, 1, 0, 1, 0, enemy_hurt_pitch);
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

if (damage_disjoint_count > 0 || global.current_hp_enemy <= 0)
{
    sprite_index = spr_bowll_dead;
    image_speed = 0;
    
    if (global.enemy_low_hp == true && global.current_hp_enemy < global.max_hp_enemy)
        image_index = 1;
    else
        image_index = 0;
}

x = draw_position_x + damage_disjoint_x;
y = draw_position_y + damage_disjoint_y;

if (!(instance_exists(obj_text_damage_count) && global.fight_number == 1) && enemy_dead == false && enemy_spared == false)
{
    if (sprite_index != spr_bowll_body_critical)
    {
        if (!instance_exists(obj_bowll_doggo_a))
        {
            random_doggo = irandom_range(1, doggo_chance);
            
            if (random_doggo == 1)
                instance_create(doggo_x, doggo_y, obj_bowll_doggo_a);
        }
    }
    
    if (enemy_sparing == true && sprite_index != spr_bowll_body_critical)
    {
        time_elapsed_sparkles += 1;
        
        if (time_elapsed_sparkles >= time_max_sparkles)
        {
            random_x = 2 * round(irandom_range(bbox_left + 12, bbox_right - 12) / 2);
            random_y = 2 * round(irandom_range(bbox_top + 26, bbox_bottom - 8) / 2);
            instance_create(random_x, random_y, obj_bowll_sparkles);
            time_elapsed_sparkles = 0;
        }
    }
    
    animating = true;
}
else
{
    animating = false;
}

with (obj_bowll_body_shadow_a)
    event_user(0);
