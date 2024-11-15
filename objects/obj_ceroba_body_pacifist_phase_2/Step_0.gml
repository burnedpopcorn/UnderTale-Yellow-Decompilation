var text_parent, anim_loop_time_half, anim_inc_current, mask_offset;

if (live_call())
    return global.live_result;

if (global.enemy_spared == true)
{
    if (no_loop_create_clouds == false)
    {
        for (i = 0; i <= 11; i += 1)
            instance_create(x, y - 100, obj_spare_cloud);
    }
    
    no_loop_create_clouds = true;
    image_alpha = 0.5;
    sprite_index = spr_ceroba_p2_defeated_spared;
    image_speed = 0;
}

text_parent = 2721;

if (instance_exists(text_parent) && instance_exists(obj_quote_bubble_battle))
{
    if (text_parent.can_talk == true)
    {
        if (can_talk_no_loop == false)
        {
            image_index = 1;
            can_talk_no_loop = true;
        }
        
        image_speed = global.text_speed * global.talk_speed_martlet * text_parent.hold;
    }
    else
    {
        can_talk_no_loop = false;
        image_speed = 0;
        image_index = 0;
    }
}
else
{
    can_talk_no_loop = false;
}

anim_loop_time = room_speed * 3;
anim_loop_time_half = anim_loop_time / 1;
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

if (sprite_index == -4)
    image_yscale = anim_stretch_current;
else
    image_yscale = 1;

obj_ceroba_cape_1.y *= image_yscale;
obj_ceroba_cape_2.y *= image_yscale;
obj_ceroba_hair.y *= image_yscale;
obj_ceroba_legs.y *= image_yscale;
obj_ceroba_phase_2_staff.y += (50 * (image_yscale - 1));

if (instance_exists(obj_ceroba_transformation_mask))
{
    obj_ceroba_transformation_mask.y *= image_yscale;
    mask_offset = obj_ceroba_transformation_mask.y - obj_ceroba_transformation_mask.ystart;
    obj_ceroba_phase_2_head.y += mask_offset;
    obj_ceroba_sideburn_left.y += mask_offset;
    obj_ceroba_sideburn_right.y += mask_offset;
}

if (instance_exists(obj_text_damage_count) && no_loop_damage_disjoint_count == false && obj_target_bar_battle.damage_type != "normal")
{
    damage_disjoint_count = 12;
    no_loop_damage_disjoint_count = true;
}

if (damage_disjoint_count > 0)
{
    if (damage_disjoint_timer <= 0)
    {
        damage_disjoint_timer = damage_disjoint_timer_max;
        damage_disjoint_count -= 1;
    }
    else
    {
        damage_disjoint_timer -= 1;
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
        no_loop_damage_disjoint_count = false;
    }
    
    x = xstart + damage_disjoint_x;
}
