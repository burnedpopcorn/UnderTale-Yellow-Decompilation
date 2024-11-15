var enemy_dead, enemy_spared;

enemy_dead = global.enemy_dead;
enemy_spared = global.enemy_spared;

if (enemy_dead == false && enemy_spared == false)
    image_alpha = global.image_alpha_enemy_attacking;

if (enemy_dead == true)
{
    instance_destroy();
    exit;
    image_alpha = 0.5;
}
else if (enemy_spared == true)
{
    instance_destroy();
    exit;
}

if (damage_disjoint_count > 0)
{
    damage_disjoint_count -= 1;
}
else if (enemy_dead == false && enemy_spared == false)
{
    if (global.enemy_low_hp == true && global.current_hp_enemy < global.max_hp_enemy)
        sprite_index = spr_rorrim_hand_right;
    else
        sprite_index = spr_rorrim_hand_right;
}

if (instance_exists(obj_text_damage_count) && global.fight_number == 1 && no_loop_damage_disjoint_count == false)
{
    time_elapsed = 0;
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

if (damage_disjoint_count > 0 || global.current_hp_enemy <= 0)
    image_alpha = 0;

x = draw_position_x + damage_disjoint_x;
y = draw_position_y + damage_disjoint_y;

if (!(instance_exists(obj_text_damage_count) && global.fight_number == 1) && enemy_dead == false && enemy_spared == false)
{
    game_maker_cannot_do_math = power((time_elapsed / ((time_max / 2) * (1 / sqrt(max_rise)))) - sqrt(max_rise), 2);
    animation_disjoint_y = sign_modifier * (max_rise - round(game_maker_cannot_do_math));
    time_elapsed += time_increase;
    
    if (time_elapsed >= time_max)
        time_elapsed = 0;
    
    y = obj_rorrim_body_a.y + animation_disjoint_y;
}
