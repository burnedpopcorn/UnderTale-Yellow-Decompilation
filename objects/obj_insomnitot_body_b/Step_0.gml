var enemy_dead_2 = global.enemy_dead_2;
var enemy_spared_2 = global.enemy_spared_2;

if (enemy_dead_2 == false && enemy_spared_2 == false)
    image_alpha = global.image_alpha_enemy_attacking;

if (enemy_dead_2 == true)
{
    x = starting_point_x;
    y = starting_point_y;
    image_xscale = starting_point_xscale;
    image_yscale = starting_point_yscale;
    instance_create(starting_point_x, starting_point_y, obj_insomnitot_dead);
    instance_destroy();
    exit;
    image_alpha = 0.5;
}
else if (enemy_spared_2 == true)
{
    sprite_index = spr_insomnitot_spared;
    x = starting_point_x;
    y = starting_point_y;
    image_xscale = starting_point_xscale;
    image_yscale = starting_point_yscale;
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
else if (enemy_dead_2 == false && enemy_spared_2 == false)
{
    if (global.enemy_low_hp_2 == true && global.current_hp_enemy_2 < global.max_hp_enemy_2)
        sprite_index = spr_insomnitot_body_critical;
    else
        sprite_index = spr_insomnitot_body;
}

if (instance_exists(obj_text_damage_count) && global.fight_number == 2 && no_loop_damage_disjoint_count == false)
{
    state = "asleep";
    asleep_counter = 0;
    awake_counter = 0;
    no_loop_awake = false;
    time_elapsed = 0;
    sign_modifier = 1;
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

if (damage_disjoint_count > 0 || global.current_hp_enemy_2 <= 0)
{
    sprite_index = spr_insomnitot_dead;
    image_xscale = starting_point_xscale;
    image_yscale = starting_point_yscale;
}

x = draw_position_x + damage_disjoint_x;
y = draw_position_y + damage_disjoint_y;
image_xscale = starting_point_xscale;
image_yscale = starting_point_yscale;

if (!(instance_exists(obj_text_damage_count) && global.fight_number == 2) && enemy_dead_2 == false && enemy_spared_2 == false)
{
    if (sleep == false)
    {
        event_user(0);
        
        if (time_elapsed >= time_max)
        {
            time_elapsed = 0;
            sign_modifier = -sign_modifier;
        }
        
        event_user(1);
    }
    else if (state == "asleep")
    {
        event_user(0);
        
        if (time_elapsed >= time_max)
        {
            if (sign_modifier < 0)
            {
                asleep_counter += 1;
                
                if (asleep_counter >= asleep_max)
                {
                    state = "waking";
                    asleep_counter = 0;
                }
            }
            else
            {
                instance_create(x - 74, y - 72, obj_insomnitot_bubble_b);
            }
            
            time_elapsed = 0;
            sign_modifier = -sign_modifier;
        }
        
        event_user(1);
    }
    else if (state == "waking")
    {
        sign_modifier = 1;
        event_user(0);
        event_user(1);
        
        if (time_elapsed >= (time_max / 2))
        {
            state = "awake";
            no_loop_awake = false;
        }
    }
    else if (state == "awake")
    {
        if (awake_counter >= awake_max && no_loop_awake == false)
        {
            alarm[0] = 30;
            no_loop_awake = true;
        }
        
        event_user(1);
    }
    else if (state == "sleep")
    {
        sign_modifier = 1;
        event_user(0);
        
        if (time_elapsed >= time_max)
        {
            instance_create(x - 74, y - 72, obj_insomnitot_bubble_b);
            state = "asleep";
            time_elapsed = 0;
            sign_modifier = -sign_modifier;
        }
        
        event_user(1);
    }
    
    ears_displacement_y = bbox_top + 32;
    face_displacement_y = bbox_top + 62;
    animating = true;
}
else
{
    animating = false;
}
