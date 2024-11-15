if (live_call())
    return global.live_result;

if (global.current_hp_enemy <= 0)
{
    if (!death_sprite)
        death_sprite = true;
}

if (death_sprite == true && death_noloop == false)
{
    death_noloop = true;
    sprite_index = spr_axis_body_nocharge;
    image_index = 0;
    alarm[0] = 45;
    image_alpha = 1;
}

if (sprite_index == spr_axis_body_nocharge)
{
    if (instance_exists(obj_target_bar_battle))
        global.enemy_sparing = true;
    else
        global.enemy_sparing = false;
}

if (global.enemy_dead == false && global.enemy_spared == false)
    image_alpha = global.image_alpha_enemy_attacking;

if (damage_disjoint_count > 0)
    damage_disjoint_count -= 1;

if (((instance_exists(obj_text_damage_count) && global.fight_number == 1 && global.attacking_damage_stat > 0) || axis_damaged_act == true) && no_loop_damage_disjoint_count == false)
{
    if (!death_sprite)
        sprite_index = spr_axis_body_hurt;
    
    damage_disjoint_count = 12;
    no_loop_damage_disjoint_count = true;
    
    if (instance_exists(obj_text_damage_count) && obj_battlebox_controller_axis.axis_trash_meter >= 100)
    {
        obj_axis_body.axis_damaged_act = true;
        obj_battlebox_controller_axis.axis_trash_meter = 0;
        obj_battlebox_controller_axis.axis_hit_count_current -= 1;
        global.special_action_count += 1;
        global.enemy_mode += 1;
        global.attack_repeat = 0;
    }
}
else if (!instance_exists(obj_text_damage_count) && axis_damaged_act == false)
{
    no_loop_damage_disjoint_count = false;
}

if (damage_disjoint_count == 12)
{
    damage_disjoint_x = -50;
}
else if (damage_disjoint_count == 10)
{
    damage_disjoint_x = 50;
}
else if (damage_disjoint_count == 8)
{
    damage_disjoint_x = -20;
}
else if (damage_disjoint_count == 6)
{
    damage_disjoint_x = 20;
}
else if (damage_disjoint_count == 4)
{
    damage_disjoint_x = -10;
}
else if (damage_disjoint_count == 2)
{
    damage_disjoint_x = 10;
}
else if (damage_disjoint_count == 0)
{
    damage_disjoint_x = 0;
    
    if (axis_damaged_act == true)
        axis_damaged_act = false;
    
    if (sprite_index == spr_axis_body_hurt)
        sprite_index = base_sprite;
}

if (death_sprite == true)
    x = starting_point_x + damage_disjoint_x;
else if (!instance_exists(obj_battle_enemy_attack_super_ball_1_creator))
    x = lerp(x, starting_point_x, 0.15) + damage_disjoint_x;
