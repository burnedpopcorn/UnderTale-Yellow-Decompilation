var enemy_dead = global.enemy_dead;
var enemy_spared = global.enemy_spared;

if (damage_disjoint_count > 0)
    damage_disjoint_count -= 1;

if (instance_exists(obj_text_damage_count) && global.fight_number == 1 && no_loop_damage_disjoint_count == false)
{
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

x = starting_point_x + damage_disjoint_x;

if (enemy_dead == true)
{
    x = starting_point_x;
    y = starting_point_y;
    image_xscale = 1;
    image_yscale = 1;
    instance_create(starting_point_x, starting_point_y, obj_flowergirls_dead);
    instance_destroy();
    instance_destroy(obj_violetta_head);
    instance_destroy(obj_violetta_hands);
    exit;
    image_alpha = 0.5;
}
else if (enemy_spared == true)
{
    sprite_index = spr_violetta_spared;
    instance_destroy(obj_violetta_head);
    instance_destroy(obj_violetta_hands);
    x = starting_point_x;
    y = starting_point_y;
    image_xscale = 1;
    image_yscale = 1;
    image_speed = 0;
    image_index = 0;
    image_alpha = 0.5;
    
    if (no_loop_create_clouds == false)
    {
        for (i = 0; i <= 11; i += 1)
            instance_create(x, y - 22, obj_spare_cloud);
    }
    
    no_loop_create_clouds = true;
}

if (!enemy_dead && !enemy_spared)
{
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
    
    image_yscale = anim_stretch_current;
    obj_violetta_head.y = y - (anim_head_offset * image_yscale);
    obj_violetta_hands.y = y - (anim_hands_offset * image_yscale);
    obj_violetta_head.x = obj_violetta_head.xstart + damage_disjoint_x;
    obj_violetta_hands.x = obj_violetta_hands.xstart + damage_disjoint_x;
    
    if (damage_disjoint_x != 0)
        obj_violetta_head.sprite_index = spr_violet_head_hurt;
    else if (global.enemy_low_hp)
        obj_violetta_head.sprite_index = spr_violet_head_lowhp;
    else
        obj_violetta_head.sprite_index = spr_violet_head;
}
