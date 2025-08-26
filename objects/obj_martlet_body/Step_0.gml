var enemy_dead = global.enemy_dead;
var enemy_spared = global.enemy_spared;
event_user(0);

if (enemy_dead == true)
{
    x = starting_point_x;
    y = starting_point_y;
    instance_create(starting_point_x, starting_point_y, obj_dalv_dead);
    instance_destroy();
    exit;
    image_alpha = 0.5;
}
else if (enemy_spared == true)
{
    sprite_index = spr_martlet_spared;
    x = starting_point_x;
    y = starting_point_y;
    image_xscale = starting_point_xscale;
    image_yscale = starting_point_yscale;
    image_alpha = 0.5;
    
    if (no_loop_create_clouds == false)
    {
        for (i = 0; i <= 11; i += 1)
            instance_create(x, y - 112, obj_spare_cloud);
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
        sprite_index = spr_martlet_body;
    else
        sprite_index = spr_martlet_body;
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

if (damage_disjoint_count > 0)
{
    sprite_index = spr_martlet_hit;
    image_xscale = starting_point_xscale;
    image_yscale = starting_point_yscale;
}

if (global.current_hp_enemy <= 0)
{
    time_elapsed = 0;
    sign_modifier = 1;
}

x = draw_position_x + damage_disjoint_x;
y = draw_position_y + damage_disjoint_y;

if (!(instance_exists(obj_text_damage_count) && global.fight_number == 1) && enemy_dead == false && enemy_spared == false && image_alpha > 0)
{
    game_maker_cannot_do_math = power((time_elapsed / ((time_max / 2) * (1 / sqrt(max_rise)))) - sqrt(max_rise), 2);
    animation_disjoint_yscale = sign_modifier * (max_rise - game_maker_cannot_do_math);
    image_yscale = draw_position_yscale + animation_disjoint_yscale;
    image_xscale = draw_position_xscale - (animation_disjoint_yscale * (max_rise_ext / max_rise));
    var image_yscale_store = image_yscale;
    var time_elapsed_head = time_elapsed - time_elapsed_decrease_head;
    
    if (time_elapsed_head < 0)
    {
        time_elapsed_head += time_max;
        sign_modifier_head = -sign_modifier;
    }
    else
    {
        sign_modifier_head = sign_modifier;
    }
    
    game_maker_cannot_do_math = power((time_elapsed_head / ((time_max / 2) * (1 / sqrt(max_rise)))) - sqrt(max_rise), 2);
    animation_disjoint_yscale = sign_modifier_head * (max_rise - game_maker_cannot_do_math);
    image_yscale = draw_position_yscale + animation_disjoint_yscale;
    head_displacement_y = bbox_top + (sprite_height * head_displacement_y_multiplier);
    image_yscale = image_yscale_store;
    var time_elapsed_hand_left = time_elapsed - time_elapsed_decrease_hand_left;
    
    if (time_elapsed_hand_left < 0)
    {
        time_elapsed_hand_left += time_max;
        sign_modifier_hand_left = -sign_modifier;
    }
    else
    {
        sign_modifier_hand_left = sign_modifier;
    }
    
    game_maker_cannot_do_math = power((time_elapsed_hand_left / ((time_max / 2) * (1 / sqrt(max_rise)))) - sqrt(max_rise), 2);
    animation_disjoint_yscale = sign_modifier_hand_left * (max_rise - game_maker_cannot_do_math);
    image_yscale = draw_position_yscale + animation_disjoint_yscale;
    hand_left_displacement_y = floor(bbox_top + (sprite_height * hand_left_displacement_y_multiplier));
    image_yscale = image_yscale_store;
    var time_elapsed_hand_right = time_elapsed - time_elapsed_decrease_hand_right;
    
    if (time_elapsed_hand_right < 0)
    {
        time_elapsed_hand_right += time_max;
        sign_modifier_hand_right = -sign_modifier;
    }
    else
    {
        sign_modifier_hand_right = sign_modifier;
    }
    
    game_maker_cannot_do_math = power((time_elapsed_hand_right / ((time_max / 2) * (1 / sqrt(max_rise)))) - sqrt(max_rise), 2);
    animation_disjoint_yscale = sign_modifier_hand_right * (max_rise - game_maker_cannot_do_math);
    image_yscale = draw_position_yscale + animation_disjoint_yscale;
    hand_right_displacement_y = floor(bbox_top + (sprite_height * hand_right_displacement_y_multiplier));
    image_yscale = image_yscale_store;
    time_elapsed += time_increase;
    
    if (time_elapsed >= time_max)
    {
        time_elapsed = 0;
        sign_modifier = -sign_modifier;
    }
    
    animating = true;
}
else
{
    animating = false;
}

event_user(1);

with (obj_martlet_body_shadow)
    event_user(0);
