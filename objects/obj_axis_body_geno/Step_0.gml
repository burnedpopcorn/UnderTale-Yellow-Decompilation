if (live_call())
    return global.live_result;

if (global.current_hp_enemy <= 0)
{
    if (!death_sprite)
        death_sprite = true;
}

if (death_sprite == true && sprite_index != spr_axis_body_nocharge && sprite_index != spr_axis_body_nocharge_melancholy)
{
    sprite_index = spr_axis_body_nocharge_melancholy;
    image_index = 0;
    alarm[0] = 45;
}

if (global.enemy_dead == false && global.enemy_spared == false)
    image_alpha = global.image_alpha_enemy_attacking;

if (damage_disjoint_count > 0)
    damage_disjoint_count -= 1;

if ((instance_exists(obj_text_damage_count) && global.fight_number == 1) && no_loop_damage_disjoint_count == false)
{
    if (sprite_index != spr_axis_body_nocharge && sprite_index != spr_axis_body_nocharge_melancholy)
    {
        sprite_index = spr_axis_body_geno_lid_block;
    }
    else
    {
        damage_disjoint_count = 12;
        no_loop_damage_disjoint_count = true;
    }
}
else if (!instance_exists(obj_text_damage_count))
{
    no_loop_damage_disjoint_count = false;
    
    if (sprite_index == spr_axis_body_geno_lid_block)
        sprite_index = spr_axis_body_geno_lid;
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

x = starting_point_x + damage_disjoint_x;
