var death_sound, arc_hsp, arc_vsp, arc_spd, x_min, x_max, y_min, y_max, shoot_cooldown, bul1, bul2, yy, xx, shot_big, ready_sound, pitch_original, ghost;

scr_get_input();

if (obj_arcade_controller.arcade_lives <= 0)
{
    if (sprite_index != spr_arcade_mew_dies)
    {
        death_sound = choose(464, 465, 467, 468);
        audio_play_sound(death_sound, 1, 0);
        sprite_index = spr_arcade_mew_dies;
        audio_stop_sound(snd_chargeshot_charge);
        
        if (instance_exists(obj_arcade_bullet) || instance_exists(obj_arcade_bullet_big))
        {
            with (obj_arcade_bullet)
                instance_destroy();
            
            with (obj_arcade_bullet_big)
                instance_destroy();
        }
        
        is_charging = false;
    }
    
    if (!alarm[1])
        alarm[1] = 90;
    
    y += 1;
    exit;
}

arc_hsp = 0;
arc_vsp = 0;
arc_spd = 4;
x_min = 90;
x_max = 225;
y_min = 65;
y_max = 185;
shoot_cooldown = 15;

if (global.left_key)
    arc_hsp = -arc_spd;

if (global.right_key)
    arc_hsp = arc_spd;

if (global.up_key)
    arc_vsp = -arc_spd;

if (global.down_key)
    arc_vsp = arc_spd;

if (keyboard_multicheck(0) && arc_can_shoot && !arc_hurt)
{
    if (arc_upgrade == "Shotgun")
    {
        bul1 = instance_create(x - 2, y - 24, obj_arcade_bullet);
        bul2 = instance_create(x + 2, y - 24, obj_arcade_bullet);
        bul1.bul_hsp = 3;
        bul2.bul_hsp = -3;
    }
    
    instance_create(x, y - 24, obj_arcade_bullet);
    arc_can_shoot = false;
    
    if (arc_upgrade == "Rapid")
        shoot_cooldown = 5;
    
    arc_shoot_cd = shoot_cooldown;
}

if (!arc_can_shoot)
{
    if (arc_shoot_cd > 0)
        arc_shoot_cd -= 1;
    else
        arc_can_shoot = true;
}

charge_percentage = charge_time / charge_time_max;

if (keyboard_multicheck(0) && !is_charging && sprite_index != spr_heart_yellow_down)
{
    if (!alarm[2])
        alarm[2] = 5;
}

if (keyboard_multicheck_released(0))
{
    alarm[2] = -1;
    
    if (is_charging == true)
    {
        is_charging = false;
        charge_time = charge_time_max;
        
        if (is_charged == true)
        {
            yy = y - 21;
            xx = x - 2;
            
            if (image_angle == 90 || image_angle == 270)
            {
                yy = y;
                xx = x;
            }
            
            shot_big = instance_create_depth(xx, yy, -10000, obj_arcade_bullet_big);
            shot_big.direction = image_angle + 90;
            shot_big.image_angle = image_angle;
            is_charged = false;
        }
    }
}

if (is_charging)
{
    if (!audio_is_playing(snd_chargeshot_charge))
    {
        charge_sound = audio_play_sound(snd_chargeshot_charge, 1, 1);
        audio_sound_gain(charge_sound, 0.6, 0);
        audio_sound_pitch(charge_sound, 0.5);
    }
    
    if (charge_time > 0)
    {
        charge_time -= 1;
    }
    else if (!is_charged)
    {
        ready_sound = audio_play_sound(snd_undertale_flash, 1, 0);
        audio_sound_gain(ready_sound, 0.5, 0);
        instance_create_depth(x, y, depth - 1, obj_arcade_charged);
        charged_overlay_alpha = 1;
        is_charged = true;
        audio_sound_gain(charge_sound, 0, 500);
    }
}
else
{
    audio_stop_sound(charge_sound);
    is_charged = false;
}

if (audio_is_playing(charge_sound))
{
    pitch_original = audio_sound_get_pitch(charge_sound);
    
    if (pitch_original < 0.99)
        audio_sound_pitch(charge_sound, 1 - (0.5 * charge_percentage));
    else
        audio_sound_pitch(charge_sound, 1);
}

if (charged_overlay_alpha > 0)
    charged_overlay_alpha -= 0.1;

if (is_dashing)
{
    ghost = instance_create_depth(x, y, depth, obj_dash_ghost);
    ghost.sprite_index = sprite_index;
    ghost.image_speed = 0;
    arc_hsp = move_x_dash * dash_speed;
    arc_vsp = move_y_dash * dash_speed;
    dash_timer--;
    
    if (dash_timer <= 0)
        is_dashing = false;
}
else
{
    dash_timer = dash_distance;
}

if ((abs(arc_hsp) + abs(arc_hsp)) == 0)
{
    if (keyboard_multicheck_pressed(1))
        dash_buffered = true;
    
    if (keyboard_multicheck_released(1) && dash_buffered == true)
        dash_buffered = false;
}

if ((keyboard_multicheck_pressed(1) || dash_buffered) && can_dash == true && (abs(arc_hsp) + abs(arc_vsp)) != 0)
{
    audio_play_sound(snd_yellow_soul_dash, 1, 0);
    dash_overlay = 1.1;
    move_x_dash = sign(arc_hsp);
    move_y_dash = sign(arc_vsp);
    is_dashing = true;
    dash_buffered = false;
    can_dash = false;
}

if (!can_dash && !is_dashing)
{
    if (dash_delay > 0)
    {
        dash_delay--;
    }
    else
    {
        dash_delay = dash_delay_max;
        can_dash = true;
    }
}

if (keyboard_multicheck_released(1) && is_dashing)
    is_dashing = false;

if (arc_hsp > 0)
    sprite_index = spr_arcade_mew_right;
else if (arc_hsp < 0)
    sprite_index = spr_arcade_mew_left;
else
    sprite_index = spr_arcade_mew;

if (arc_hurt)
{
    if (arc_blink_time > 0)
    {
        arc_blink_time--;
    }
    else
    {
        if (image_alpha == 1)
            image_alpha = 0.5;
        else
            image_alpha = 1;
        
        arc_blink_time = 5;
    }
    
    if (arc_hurt_time > 0)
    {
        arc_hurt_time--;
    }
    else
    {
        arc_hurt = false;
        arc_hurt_time = 30;
        arc_blink_time = 0;
    }
}

x += arc_hsp;
x = clamp(x, x_min, x_max);
y += arc_vsp;
y = clamp(y, y_min, y_max);
