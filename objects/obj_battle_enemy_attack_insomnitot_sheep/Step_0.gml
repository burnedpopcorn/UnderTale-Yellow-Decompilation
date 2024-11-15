if (!instance_exists(obj_heart_battle_fighting_parent))
{
    instance_destroy();
    exit;
}

if (attack_direction == -1)
{
    run_sprite = spr_battle_enemy_attack_insomnitot_sheep_left;
    jump_sprite = spr_battle_enemy_attack_insomnitot_sheep_jump_left;
    
    if (no_loop_sprite_assign == false)
    {
        sprite_index = run_sprite;
        image_speed = image_speed_default;
        image_index = 0;
        no_loop_sprite_assign = true;
    }
}

if (state == "run")
{
    y = draw_position_y;
    event_user(0);
}
else if (state == "jump")
{
    game_maker_cannot_do_math = power((time_elapsed / ((time_max / 2) * (1 / sqrt(max_rise)))) - sqrt(max_rise), 2);
    animation_disjoint_y = sign_modifier * (max_rise - round(game_maker_cannot_do_math));
    time_elapsed += time_increase;
    
    if (time_elapsed >= time_max)
    {
        time_elapsed = 0;
        sprite_index = run_sprite;
        image_speed = image_speed_default;
        image_index = 0;
        state = "run";
    }
    
    y = draw_position_y + animation_disjoint_y;
}

x += (move_speed * attack_direction);

if ((attack_direction == 1 && bbox_left > obj_dialogue_box_battle_transformation_any.bbox_right) || (attack_direction == -1 && bbox_right < obj_dialogue_box_battle_transformation_any.bbox_left))
{
    instance_destroy();
    exit;
}
