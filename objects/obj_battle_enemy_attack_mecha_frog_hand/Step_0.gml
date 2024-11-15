var soul, shockwave;

if (live_call())
    return global.live_result;

soul = 2980;

switch (state)
{
    case "idle":
        sin_deg += sin_deg_inc;
        
        if (sin_deg >= 360)
            sin_deg -= 1;
        
        y = ystart + (sin(degtorad(sin_deg)) * y_offset);
        
        if (active == true)
        {
            timer -= 1;
            
            if (timer <= 0)
            {
                if (attack_counter < 2)
                {
                    with (obj_battle_enemy_attack_mecha_frog_hand)
                        attack_counter += 1;
                    
                    state_switch("attack");
                }
                else
                {
                    state_switch("punch");
                    attack_counter = 0;
                }
                
                active = false;
            }
        }
        
        break;
    
    case "attack":
        switch (scene)
        {
            case 0:
                x = lerp(x, xstart - (10 * image_xscale), 0.15);
                y = lerp(y, ystart - 20, 0.15);
                image_angle = lerp(image_angle, 30 * image_xscale, 0.25);
                cutscene_wait(0.5);
                break;
            
            case 1:
                hspeed = 5 * image_xscale;
                vspeed = 8;
                
                if (bbox_bottom >= (battle_box.bbox_bottom - 4))
                {
                    hspeed = 0;
                    vspeed = 0;
                    scene++;
                    audio_play_sound(snd_undertale_impact, 1, 0);
                    scr_screenshake_battle(6, 2);
                    shockwave = instance_create_depth(x, battle_box.bbox_bottom - 4, -100, obj_battle_enemy_attack_mecha_frog_shockwave);
                    shockwave.hspeed = image_xscale * shockwave_speed;
                }
                
                break;
            
            case 2:
                x = lerp(x, xstart, 0.2);
                y = lerp(y, ystart, 0.2);
                image_angle = lerp(image_angle, 0, 0.2);
                
                if (abs(image_angle - 0) < 0.1 && abs(x - xstart) < 0.1 && abs(y - ystart) < 0.1)
                    scene++;
                
                break;
            
            case 3:
                state_switch("idle");
                break;
        }
        
        break;
    
    case "punch":
        if (scene < 2)
        {
            if (sprite_index != spr_bigfrog_fist_2)
                sprite_index = spr_bigfrog_fist_2;
            
            direction = point_direction(x, y, soul.x, soul.y);
            image_angle = direction;
            
            if (image_xscale == -1)
                image_angle -= 180;
        }
        
        x_target = battle_box.x - (200 * image_xscale);
        y_target = battle_box.bbox_top;
        
        switch (scene)
        {
            case 0:
                x = lerp(x, x_target, 0.15);
                y = lerp(y, y_target, 0.15);
                sprite_index = spr_bigfrog_fist_2;
                cutscene_wait(0.5);
                break;
            
            case 1:
                x = x_target + irandom_range(-2, 2);
                y = y_target + irandom_range(-2, 2);
                
                if (cutscene_wait(1))
                {
                    sprite_index = spr_bigfrog_fast_fist_real;
                    image_speed = 0;
                    speed = 20;
                }
                
                break;
            
            case 2:
                if ((image_xscale == 1 && bbox_right >= (battle_box.bbox_right - 4)) || (image_xscale == -1 && bbox_left <= (battle_box.bbox_left + 4)))
                {
                    image_speed = 1;
                    audio_play_sound(snd_undertale_impact, 1, 0);
                    scr_screenshake_battle(6, 2);
                    speed = 0;
                    scene++;
                }
                
                break;
            
            case 3:
                if (image_index >= (image_number - 1) && sprite_index != spr_bigfrog_fist_1)
                {
                    sprite_index = spr_bigfrog_fist_1;
                    image_speed = 0;
                    image_index = 0;
                    image_angle = 0;
                }
                
                x = lerp(x, xstart, 0.25);
                y = lerp(y, ystart, 0.25);
                
                if (abs(x - xstart) < 0.1 && abs(y - ystart) < 0.1)
                    scene++;
                
                break;
            
            case 4:
                state_switch("idle");
                break;
        }
        
        break;
}

function state_switch(argument0)
{
    state = argument0;
    scene = 0;
    timer = timer_max;
    
    if (argument0 == "idle")
    {
        with (obj_battle_enemy_attack_mecha_frog_creator)
            hand_reroll = true;
        
        obj_battle_enemy_attack_mecha_frog_cockpit.hit_noloop = false;
    }
}
