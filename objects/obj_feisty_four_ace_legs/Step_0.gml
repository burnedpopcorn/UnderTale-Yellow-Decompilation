var enemy_dead, enemy_spared, image_yscale_store, time_elapsed_head, time_elapsed_hand;

enemy_dead = global.enemy_dead;
enemy_spared = global.enemy_spared;

if (enemy_dead == false && enemy_spared == false)
    image_alpha = global.image_alpha_enemy_attacking;

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
    sprite_index = spr_dalv_spared;
    x = starting_point_x;
    y = starting_point_y;
    image_xscale = starting_point_xscale;
    image_yscale = starting_point_yscale;
    image_alpha = 0.5;
    
    if (no_loop_create_clouds == false)
    {
        for (i = 0; i <= 11; i += 1)
            instance_create(x, y - 100, obj_spare_cloud);
    }
    
    no_loop_create_clouds = true;
}

obj_feisty_four_ace_head.image_alpha = image_alpha;
obj_feisty_four_ace_arm.image_alpha = image_alpha;

if (damage_disjoint_count > 0)
{
    damage_disjoint_count -= 1;
}
else if (enemy_dead == false && enemy_spared == false)
{
    if (global.current_hp_enemy <= 0)
        sprite_index = spr_feisty_four_ace_body_legs;
    else
        sprite_index = spr_feisty_four_ace_body_legs;
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
    if (global.current_hp_enemy <= 0)
        sprite_index = spr_feisty_four_ace_body_legs;
    else
        sprite_index = hurt_sprite;
    
    image_xscale = starting_point_xscale;
    image_yscale = starting_point_yscale;
}
else if (sprite_index == hurt_sprite)
{
    sprite_index = spr_feisty_four_ace_body_legs;
}

if (global.current_hp_enemy <= 0)
{
    time_elapsed = 0;
    sign_modifier = 1;
}

x = draw_position_x + damage_disjoint_x;
y = draw_position_y + damage_disjoint_y;

if (!(instance_exists(obj_text_damage_count) && global.fight_number == 1) && enemy_dead == false && enemy_spared == false)
{
    game_maker_cannot_do_math = power((time_elapsed / ((time_max / 2) * (1 / sqrt(max_rise)))) - sqrt(max_rise), 2);
    animation_disjoint_yscale = sign_modifier * (max_rise - game_maker_cannot_do_math);
    image_yscale = draw_position_yscale + animation_disjoint_yscale;
    image_xscale = draw_position_xscale - (animation_disjoint_yscale * (max_rise_ext / max_rise));
    image_yscale_store = image_yscale;
    time_elapsed_head = time_elapsed - time_elapsed_decrease_head;
    
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
    time_elapsed_hand = time_elapsed - time_elapsed_decrease_hand;
    
    if (time_elapsed_hand < 0)
    {
        time_elapsed_hand += time_max;
        sign_modifier_hand = -sign_modifier;
    }
    else
    {
        sign_modifier_hand = sign_modifier;
    }
    
    game_maker_cannot_do_math = power((time_elapsed_hand / ((time_max / 2) * (1 / sqrt(max_rise)))) - sqrt(max_rise), 2);
    animation_disjoint_yscale = sign_modifier_hand * (max_rise - game_maker_cannot_do_math);
    image_yscale = draw_position_yscale + animation_disjoint_yscale;
    hand_displacement_y = bbox_top + (sprite_height * hand_displacement_y_multiplier);
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

if (vanish == true)
{
    if (vanish_state == 1)
    {
        game_maker_cannot_do_math = power((time_elapsed_move / (((time_max_move * 0.5) / 2) * (1 / sqrt(max_rise_move * 0.15)))) - sqrt(max_rise_move * 0.15), 2);
        animation_disjoint_x_move = -sign_modifier_move * ((max_rise_move * 0.15) - game_maker_cannot_do_math);
        x = draw_position_x + animation_disjoint_x_move;
        time_elapsed_move += time_increase_move;
        
        if (time_elapsed_move > ((time_max_move * 0.5) / 2))
        {
            time_elapsed_move = 0;
            vanish_state = 2;
        }
    }
    
    if (vanish_state == 2)
    {
        game_maker_cannot_do_math = power((time_elapsed_move / ((time_max_move / 2) * (1 / sqrt(max_rise_move)))) - sqrt(max_rise_move), 2);
        animation_disjoint_x_move = sign_modifier_move * (max_rise_move - game_maker_cannot_do_math);
        x = draw_position_x + animation_disjoint_x_move;
        time_elapsed_move += time_increase_move;
        
        if (time_elapsed_move > (time_max_move / 2))
            instance_destroy();
    }
}

if (instance_exists(obj_feisty_four_ace_head))
{
    with (obj_feisty_four_ace_head)
        event_user(0);
}

if (instance_exists(obj_feisty_four_ace_arm))
{
    with (obj_feisty_four_ace_arm)
        event_user(0);
}
