var low_hp_state = global.current_hp_enemy < (global.max_hp_enemy * 0.3);

if (death_sprite == true && sprite_index != spr_ceroba_murder_death)
{
    sprite_index = spr_ceroba_murder_death;
    image_speed = 0.25;
    image_index = 0;
}

if (global.enemy_dead == true)
{
    instance_create(x - 46, y - 10, obj_ceroba_dead);
    instance_destroy();
    exit;
    image_alpha = 0.5;
}

if (sprite_index == spr_ceroba_murder_death)
    exit;

var anim_loop_time_half = anim_loop_time / 2;
var anim_inc_current = ((anim_stretch_max - 1) / anim_loop_time_half) * anim_inc_multiplier;

if (anim_stage == 1)
{
    anim_stretch_current += anim_inc_current;
    anim_inc_multiplier -= (anim_inc_multiplier_max / anim_loop_time_half);
    
    if (anim_stretch_current >= anim_stretch_max)
    {
        anim_stretch_current = anim_stretch_max;
        anim_stage = 2;
        anim_inc_multiplier = anim_inc_multiplier_max;
    }
}

if (anim_stage == 2)
{
    anim_stretch_current -= ((anim_stretch_max - 1) / anim_loop_time_half);
    anim_inc_multiplier -= (anim_inc_multiplier_max / anim_loop_time_half);
    
    if (anim_stretch_current <= 1)
    {
        anim_stretch_current = 1;
        anim_stage = 1;
        anim_inc_multiplier = anim_inc_multiplier_max;
    }
}

if (sprite_index == spr_ceroba_body || sprite_index == spr_ceroba_body_hurt)
    image_yscale = anim_stretch_current;
else
    image_yscale = 1;

obj_ceroba_head.y = y - (anim_head_offset * image_yscale);
obj_ceroba_hand_right.y = y - (anim_hand_right_offset * image_yscale);
obj_ceroba_hand_left.y = y - (anim_hand_left_offset * image_yscale);
obj_ceroba_staff.y = y - (anim_staff_offset * image_yscale);
obj_ceroba_ponytail.y = obj_ceroba_head.y - anim_ponytail_offset;

if (damage_disjoint_count > 0)
    damage_disjoint_count -= 1;

if (instance_exists(obj_text_damage_count) && global.fight_number == 1 && no_loop_damage_disjoint_count == false)
{
    damage_disjoint_count = 12;
    no_loop_damage_disjoint_count = true;
}
else if (!instance_exists(obj_text_damage_count))
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
    
    if (sprite_index == spr_ceroba_hurt)
    {
        sprite_index = spr_ceroba_body;
    }
    else if (sprite_index == spr_ceroba_hurt_phase_2)
    {
        sprite_index = spr_ceroba_body;
        
        if (low_hp_state)
        {
            sprite_index = spr_ceroba_body_hurt;
            obj_ceroba_head.sprite_index = spr_ceroba_head_hurt;
            obj_ceroba_hand_left.sprite_index = spr_ceroba_hand_left_hurt;
            obj_ceroba_hand_right.sprite_index = spr_ceroba_hand_right_hurt;
            obj_ceroba_staff.sprite_index = spr_ceroba_staff_battle_phase_2_hurt;
            obj_ceroba_ponytail.sprite_index = spr_ceroba_ponytail_hurt;
        }
    }
}

if (damage_disjoint_count > 0)
{
    sprite_index = spr_ceroba_hurt;
    
    if (global.battle_phase == 2)
        sprite_index = spr_ceroba_hurt_phase_2;
    
    image_xscale = 1;
    image_yscale = 1;
}

x = starting_point_x + damage_disjoint_x;
