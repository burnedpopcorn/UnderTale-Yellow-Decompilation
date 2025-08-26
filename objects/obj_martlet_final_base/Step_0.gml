if (live_call())
    return global.live_result;

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
    if (surface_exists(wing_surf))
        surface_free(wing_surf);
    
    with (obj_martlet_body_part_base)
    {
        image_angle = other.image_angle;
        y = other.y;
        x = other.x;
        visible = true;
        image_speed = other.speed_multiplier;
    }
}
else
{
    martlet_animation_enabled = false;
    
    with (obj_martlet_body_part_base)
    {
        image_angle = other.image_angle;
        image_yscale = 1;
        y = other.y;
        x = other.x;
        visible = false;
        
        if (object_index == obj_martlet_final_hair && other.sprite_index == spr_martlet_final_scream)
            visible = true;
    }
}

if (martlet_animation_enabled == true)
{
    var _speed_multiplier = speed_multiplier;
    no_loop = false;
    sin_timer += (33 * _speed_multiplier);
    
    if (sin_timer > 2000000)
        sin_timer = 0;
    
    image_angle = 0 + (sin(sin_timer / 1000) * 5);
    y = martlet_y_target + (sin(sin_timer / 500) * 20);
    x = xstart + (sin(sin_timer / 2000) * 40);
    
    with (obj_martlet_final_leg_front)
    {
        var scale_modif = cos(current_time / 500) * 0.04;
        image_yscale = 1 + (scale_modif * _speed_multiplier);
        var y_modif = cos(current_time / 500) * 2;
        y += (y_modif * _speed_multiplier);
    }
    
    with (obj_martlet_final_talon_front)
    {
        var scale_modif = cos(current_time / 500) * 0.04;
        image_yscale = 1 + (scale_modif * _speed_multiplier);
        var y_modif = cos(current_time / 500) * 3;
        y += (y_modif * _speed_multiplier);
    }
    
    with (obj_martlet_final_leg_back)
    {
        var scale_modif = cos(current_time / 750) * 0.04;
        image_yscale = 1 + (scale_modif * _speed_multiplier);
        var y_modif = cos(current_time / 750) * 1;
        y += (y_modif * _speed_multiplier);
    }
    
    with (obj_martlet_final_talon_back)
    {
        var scale_modif = cos(current_time / 750) * 0.04;
        image_yscale = 1 + (scale_modif * _speed_multiplier);
        var y_modif = cos(current_time / 300) * 2;
        y += (y_modif * _speed_multiplier);
    }
    
    with (obj_martlet_final_head)
    {
        var y_modif = cos(current_time / 1000) * 3;
        y += (y_modif * _speed_multiplier);
    }
    
    with (obj_martlet_final_hair)
    {
        var y_modif = cos(current_time / 1000) * 3;
        y += (y_modif * _speed_multiplier);
    }
}
else if (!no_loop)
{
    no_loop = true;
    sin_timer = 0;
    image_angle = lerp(image_angle, 0, 0.25);
    y = lerp(y, martlet_y_target, 0.25);
    x = lerp(x, xstart, 0.25);
}

if (healthbar_timer > 0)
    healthbar_timer--;
else if (healthbar_alpha > 0)
    healthbar_alpha -= 0.1;

if (damage_flash_timer > 0)
    damage_flash_timer -= 1;

if ((sprite_index == martlet_sprite_base || sprite_index == spr_martlet_final_wing_attack) && image_alpha > 0)
{
    with (obj_heart_yellow_shot)
    {
        if (place_meeting(x, y, obj_martlet_final_base) || place_meeting(x, y, obj_martlet_final_wing))
        {
            other.healthbar_timer = other.healthbar_timer_max;
            other.healthbar_alpha = 1;
            other.damage_flash_timer = 3;
            var shot_damage = round(((global.player_weapon_attack + global.player_attack) - global.enemy_defense_stat) * 1);
            global.current_hp_enemy -= shot_damage;
            global.current_hp_enemy_draw = global.current_hp_enemy;
            audio_play_sound(snd_arc_hit, 0.1, 0);
            
            if (object_index != obj_heart_yellow_shot_blast_collider)
                instance_destroy();
        }
    }
}
