var enemy_low_hp = global.enemy_low_hp;
var enemy_dead = global.enemy_dead;
var enemy_spared = global.enemy_spared;
var enemy_mode = global.enemy_mode;

if (enemy_dead == false && enemy_spared == false)
    image_alpha = global.image_alpha_enemy_attacking;

if (enemy_dead == true)
{
    x = starting_point_x;
    y = starting_point_y;
    image_xscale = starting_point_xscale;
    image_yscale = starting_point_yscale;
    instance_create(starting_point_x, starting_point_y, obj_frostermit_dead);
    instance_destroy();
    exit;
    image_alpha = 0.5;
}
else if (enemy_spared == true)
{
    sprite_index = spr_frostermit_spared;
    x = starting_point_x;
    y = starting_point_y;
    image_alpha = 0.5;
    
    if (no_loop_create_clouds == false)
    {
        for (i = 0; i <= 11; i += 1)
            instance_create(x + 6, y, obj_spare_cloud);
    }
    
    no_loop_create_clouds = true;
}

if (damage_disjoint_count > 0)
{
    damage_disjoint_count -= 1;
}
else if (enemy_dead == false && enemy_spared == false)
{
    if (getting_out == false)
    {
        if (enemy_low_hp == true && global.current_hp_enemy < global.max_hp_enemy)
        {
            if (enemy_mode == 0)
                sprite_index = spr_frostermit_body_critical;
            else if (enemy_mode == 1)
                sprite_index = spr_frostermit_body_critical_crab;
        }
        else if (enemy_mode == 0)
        {
            sprite_index = spr_frostermit_body;
        }
        else if (enemy_mode == 1)
        {
            sprite_index = spr_frostermit_body_crab;
        }
    }
}

if (instance_exists(obj_text_damage_count) && global.fight_number == 1 && no_loop_damage_disjoint_count == false)
{
    time_elapsed_head = 0;
    sign_modifier_head = 1;
    claw_right_angle = claw_right_angle_default;
    claw_left_angle = claw_left_angle_default;
    time_elapsed = 0;
    sign_modifier = -1;
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
    if (getting_out == false)
    {
        if (enemy_mode == 0)
        {
            if (enemy_low_hp == true && global.current_hp_enemy < global.max_hp_enemy)
                sprite_index = spr_frostermit_body_critical;
            else
                sprite_index = spr_frostermit_body;
        }
        else if (enemy_mode == 1)
        {
            sprite_index = spr_frostermit_dead;
        }
    }
}

x = draw_position_x + damage_disjoint_x;
y = draw_position_y + damage_disjoint_y;
image_xscale = starting_point_xscale;
image_yscale = starting_point_yscale;

if (!(instance_exists(obj_text_damage_count) && global.fight_number == 1) && enemy_dead == false && enemy_spared == false)
{
    if (enemy_mode == 1 && getting_out == false)
    {
        game_maker_cannot_do_math = power((time_elapsed_head / ((time_max_head / 2) * (1 / sqrt(max_rise_head)))) - sqrt(max_rise_head), 2);
        animation_disjoint_y = sign_modifier_head * (max_rise_head - round(game_maker_cannot_do_math));
        time_elapsed_head += time_increase_head;
        
        if (time_elapsed_head >= time_max_head)
        {
            time_elapsed_head = 0;
            sign_modifier_head = -sign_modifier_head;
        }
        
        head_displacement_y = y + animation_disjoint_y;
        claw_angle_increase = 0;
        claw_radius = 3;
        claw_speed = 24;
        
        if (enemy_low_hp == false)
            claw_right_x = obj_frostermit_body_a.x + (claw_radius * cos((claw_right_angle + claw_angle_increase) * claw_right_angle_direction * 0.008726646259971648));
        else
            claw_right_x = obj_frostermit_body_a.x;
        
        claw_right_y = obj_frostermit_body_a.y - (claw_radius * sin((claw_right_angle + claw_angle_increase) * claw_right_angle_direction * 0.008726646259971648));
        
        if (enemy_low_hp == false)
            claw_left_x = obj_frostermit_body_a.x + (claw_radius * cos((claw_left_angle + claw_angle_increase) * claw_left_angle_direction * 0.008726646259971648));
        else
            claw_left_x = obj_frostermit_body_a.x;
        
        claw_left_y = obj_frostermit_body_a.y - (claw_radius * sin((claw_left_angle + claw_angle_increase) * claw_left_angle_direction * 0.008726646259971648));
        claw_angle_increase += claw_speed;
        claw_right_angle += claw_speed;
        claw_left_angle += claw_speed;
        game_maker_cannot_do_math = power((time_elapsed / ((time_max / 2) * (1 / sqrt(max_rise)))) - sqrt(max_rise), 2);
        animation_disjoint_y = sign_modifier * (max_rise - round(game_maker_cannot_do_math));
        time_elapsed += time_increase;
        
        if (time_elapsed >= time_max)
            time_elapsed = 0;
        
        var y_val = draw_position_y + animation_disjoint_y;
        var y_store = y_val;
        var time_elapsed_1 = time_elapsed - 4;
        
        if (time_elapsed_1 < 0)
            time_elapsed_1 += time_max;
        
        game_maker_cannot_do_math = power((time_elapsed_1 / ((time_max / 2) * (1 / sqrt(max_rise)))) - sqrt(max_rise), 2);
        animation_disjoint_y = sign_modifier * (max_rise - game_maker_cannot_do_math);
        y_val = draw_position_y + animation_disjoint_y;
        leg_1_displacement_y = y_val;
        y_val = y_store;
        var time_elapsed_2 = time_elapsed - 8;
        
        if (time_elapsed_2 < 0)
            time_elapsed_2 += time_max;
        
        game_maker_cannot_do_math = power((time_elapsed_2 / ((time_max / 2) * (1 / sqrt(max_rise)))) - sqrt(max_rise), 2);
        animation_disjoint_y = sign_modifier * (max_rise - game_maker_cannot_do_math);
        y_val = draw_position_y + animation_disjoint_y;
        leg_2_displacement_y = y_val;
        y_val = y_store;
        var time_elapsed_3 = time_elapsed - 12;
        
        if (time_elapsed_3 < 0)
            time_elapsed_3 += time_max;
        
        game_maker_cannot_do_math = power((time_elapsed_3 / ((time_max / 2) * (1 / sqrt(max_rise)))) - sqrt(max_rise), 2);
        animation_disjoint_y = sign_modifier * (max_rise - game_maker_cannot_do_math);
        y_val = draw_position_y + animation_disjoint_y;
        leg_3_displacement_y = y_val;
        var position_var = draw_position_y + damage_disjoint_y;
        y = head_displacement_y - ((head_displacement_y - position_var) / 3);
        var time_elapsed_head_new = time_elapsed_head - 4;
        
        if (time_elapsed_head_new < 0)
        {
            time_elapsed_head_new += time_max_head;
            sign_modifier_head_new = -sign_modifier_head;
        }
        else
        {
            sign_modifier_head_new = sign_modifier_head;
        }
        
        game_maker_cannot_do_math = power((time_elapsed_head_new / ((time_max_head / 2) * (1 / sqrt(max_rise_head)))) - sqrt(max_rise_head), 2);
        animation_disjoint_y = sign_modifier_head_new * (max_rise_head - game_maker_cannot_do_math);
        head_new_displacement_y = draw_position_y + animation_disjoint_y;
    }
    
    animating = true;
}
else
{
    animating = false;
}
