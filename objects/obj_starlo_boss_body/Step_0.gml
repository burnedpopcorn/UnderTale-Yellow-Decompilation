var anim_loop_time_half, anim_inc_current, attack_start;

if (global.current_hp_enemy <= 0)
{
    if (!death_sprite)
        death_sprite = true;
}

if (death_sprite == true && sprite_index != spr_starlo_body_dead)
{
    sprite_index = spr_starlo_body_dead;
    image_index = 0;
    obj_starlo_boss_head.image_alpha = 0;
    image_xscale = 1;
    image_yscale = 1;
    alarm[0] = 45;
}

if (death_sprite == true)
    image_index = obj_starlo_boss_head.image_index;

if (global.turns_passed >= 17)
{
    if (instance_exists(obj_target_bar_battle))
    {
        if (enemy_betrayal_noloop == false)
        {
            enemy_sparing_old = global.enemy_sparing;
            enemy_betrayal_noloop = true;
            global.enemy_sparing = true;
        }
    }
    else if (enemy_betrayal_noloop == true)
    {
        global.enemy_sparing = enemy_sparing_old;
        enemy_betrayal_noloop = false;
    }
}

if (global.enemy_dead == true)
{
    instance_create(x, y, obj_starlo_dead);
    instance_destroy();
    exit;
    image_alpha = 0.5;
}

if (sprite_index != spr_starlo_body_dead)
{
    anim_loop_time_half = anim_loop_time / 2;
    anim_inc_current = ((anim_stretch_max - 1) / anim_loop_time_half) * anim_inc_multiplier;
    
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
    
    if (set_outro_sprite == true && global.turns_passed == 17)
    {
        if (sprite_index != outro_sprite)
        {
            sprite_index = outro_sprite;
            image_index = 0;
            image_speed = 1/3;
            obj_starlo_boss_head.image_alpha = 1;
        }
    }
    else if (global.turns_passed == 9 || global.turns_passed == 10)
    {
        if (instance_exists(obj_heart_battle_fighting_parent) && obj_heart_battle_fighting_parent.moveable == true)
            attack_start = true;
        else
            attack_start = false;
        
        if (attack_start == true && sprite_index != shoot_sprite)
        {
            sprite_index = shoot_sprite;
            image_index = 0;
            image_speed = 1/3;
            obj_starlo_boss_head.image_alpha = 0;
        }
        else if (attack_start == false && sprite_index != ready_sprite)
        {
            sprite_index = ready_sprite;
            image_index = 0;
            image_speed = 1/3;
            obj_starlo_boss_head.image_alpha = 1;
        }
    }
    else
    {
        sprite_index = base_sprite;
        obj_starlo_boss_head.image_alpha = 1;
    }
    
    if (sprite_index == base_sprite || sprite_index == ready_sprite)
        image_yscale = anim_stretch_current;
    else
        image_yscale = 1;
    
    obj_starlo_boss_head.y = y - (anim_head_offset * image_yscale);
}

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
    
    if (sprite_index == hurt_sprite && !instance_exists(obj_battle_hp_current_enemy))
    {
        sprite_index = base_sprite;
        
        if (global.turns_passed >= 17 && outro_sprite_noloop == true)
        {
            sprite_index = outro_sprite;
            image_index = image_number - 1;
            image_speed = 0;
        }
    }
}
else if (damage_disjoint_count > 0 && !death_sprite)
{
    sprite_index = hurt_sprite;
    image_xscale = 1;
    image_yscale = 1;
    obj_starlo_boss_head.y = obj_starlo_boss_head.ystart;
    obj_starlo_boss_head.sprite_index = spr_starlo_boss_head_hurt;
}

x = starting_point_x + damage_disjoint_x;

if (instance_exists(obj_starlo_boss_head))
    obj_starlo_boss_head.x = obj_starlo_boss_head.xstart + damage_disjoint_x;
