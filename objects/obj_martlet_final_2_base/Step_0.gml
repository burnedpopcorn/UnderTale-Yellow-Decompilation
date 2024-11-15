var shot_damage;

if (live_call())
    return global.live_result;

mask_index = spr_martlet_f2_torso;

if (martlet_sprites_reset == true)
{
    martlet_animation_enabled = true;
    martlet_sprites_reset = false;
    sprite_index = martlet_sprite_base;
    image_xscale = 1;
    image_yscale = 1;
}

if (sprite_index == martlet_sprite_base)
{
    with (obj_martlet_body_part_base)
        visible = true;
}
else
{
    if (sprite_index != spr_martlet_f2_start)
        image_speed = 1;
    
    martlet_animation_enabled = false;
    
    with (obj_martlet_body_part_base)
        visible = false;
}

if (martlet_animation_enabled == true)
{
    no_loop = false;
    sin_timer += 33;
    
    if (sin_timer > 2000000)
        sin_timer = 0;
    
    image_angle = cos(current_time / 750) * -3;
    y = ystart + (cos(current_time / 750) * 3);
    x = xstart + damage_disjoint_x;
    
    with (martlet_head)
    {
        y = ystart + (cos(current_time / 750) * 3);
        x = xstart + (cos(current_time / 750) * 3) + other.damage_disjoint_x;
    }
    
    with (martlet_hair)
    {
        y = ystart + (cos(current_time / 750) * 3);
        x = xstart + (cos(current_time / 750) * 3) + other.damage_disjoint_x;
    }
    
    with (martlet_fist_left)
    {
        y = ystart + (cos(current_time / 750) * 2);
        x = xstart + (sin(current_time / 750) * 2) + other.damage_disjoint_x;
        image_angle = cos(current_time / 750) * 8;
    }
    
    with (martlet_fist_right)
    {
        y = ystart + (cos(current_time / 750) * 4);
        x = xstart + (sin(current_time / 900) * 4) + other.damage_disjoint_x;
        image_angle = cos(current_time / 900) * 6;
    }
    
    with (martlet_legs)
    {
        image_xscale = 1 + (sin(current_time / 750) * 0.02);
        x = xstart + other.damage_disjoint_x;
    }
}
else if (!no_loop)
{
    no_loop = true;
    sin_timer = 0;
    image_angle = 0;
    y = lerp(y, ystart, 0.25);
    x = lerp(x, xstart, 0.25);
}
else
{
    x = xstart + damage_disjoint_x;
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

if (martlet_target_melt_sprite != martlet_previous_melt_sprite && martlet_previous_melt_sprite_alpha == spr_collisionbox)
{
    sprite_index = martlet_target_melt_sprite;
    martlet_previous_melt_sprite_alpha = spr_steamworks_21_background;
}

martlet_previous_melt_sprite_alpha = lerp(martlet_previous_melt_sprite_alpha, 0, 0.1);

if (martlet_previous_melt_sprite_alpha <= 0.1)
{
    martlet_previous_melt_sprite_alpha = spr_collisionbox;
    martlet_previous_melt_sprite = martlet_target_melt_sprite;
}

if (healthbar_timer > 0)
    healthbar_timer--;
else if (healthbar_alpha > 0)
    healthbar_alpha -= 0.1;

if (damage_flash_timer > 0)
    damage_flash_timer -= 1;

if (image_alpha > 0)
{
    with (obj_heart_yellow_shot)
    {
        if (place_meeting(x, y, obj_martlet_final_2_base))
        {
            other.healthbar_timer = other.healthbar_timer_max;
            other.healthbar_alpha = 1;
            other.damage_flash_timer = 3;
            shot_damage = 3;
            global.current_hp_enemy = clamp(global.current_hp_enemy - shot_damage, 1, 9999);
            global.current_hp_enemy_draw = global.current_hp_enemy;
            audio_play_sound(snd_arc_hit, 0.1, 0);
            
            if (object_index != obj_heart_yellow_shot_blast_collider)
                instance_destroy();
        }
    }
}
