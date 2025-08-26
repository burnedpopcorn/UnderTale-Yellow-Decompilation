liquid_image_index += 0.25;

if (liquid_image_index >= sprite_get_number(spr_steamworks_04b_liquid))
    liquid_image_index = 0.25;

if (global.geno_complete[3] == true)
{
    if (scr_interact() && keyboard_multicheck_pressed(vk_nokey))
    {
        scr_text();
        
        with (msg)
            message[0] = "* (The valve won't budge.)";
    }
}
else if (global.sworks_flag[1] > 1)
{
    if (scr_interact() && keyboard_multicheck_pressed(vk_nokey))
    {
        scr_text();
        
        with (msg)
            message[0] = "* (Best not to disturb the#  pressure you've set.)";
    }
    
    exit;
}

if (scr_interact() && keyboard_multicheck_pressed(vk_nokey))
{
    scr_cutscene_start();
    audio_play_sound(snd_pinkgoo_initiate, 1, 0);
    liquid_active = true;
    scene = 1;
}

switch (scene)
{
    case 1:
        cutscene_camera_move(180, 110, 2);
        break;
    
    case 2:
        scr_get_input();
        var shift_amount = 0.015;
        var liquid_current = -1;
        
        if (global.left_key)
            liquid_current = 0;
        
        if (global.down_key)
            liquid_current = 1;
        
        if (global.right_key)
            liquid_current = 2;
        
        if (global.up_key)
            liquid_current = 3;
        
        if (liquid_current != -1)
        {
            if (liquid_amount[liquid_current] < 1)
            {
                liquid_amount[liquid_current] += shift_amount;
                var above_zero = 0;
                
                for (var i = 0; i < array_length_1d(liquid_amount); i++)
                {
                    if (i != liquid_current && liquid_amount[i] > 0)
                        above_zero += 1;
                }
                
                for (var i = 0; i < array_length_1d(liquid_amount); i++)
                {
                    if (i != liquid_current && liquid_amount[i] > 0)
                        liquid_amount[i] -= shift_amount / above_zero;
                }
            }
        }
        
        var completed = 0;
        
        for (var i = 0; i < array_length_1d(liquid_amount); i++)
        {
            liquid_amount[i] = clamp(liquid_amount[i], 0, 1);
            
            if (liquid_amount[i] > (liquid_target[i] - 0.1) && liquid_amount[i] < (liquid_target[i] + 0.1))
            {
                completed += 1;
                
                if (liquid_noloop[i] == 0)
                {
                    liquid_noloop[i] = 1;
                    var ding_sound = audio_play_sound(snd_duel_mark, 1, 0);
                    audio_sound_pitch(ding_sound, 0.8 + (completed * 0.2));
                }
            }
            else
            {
                liquid_noloop[i] = 0;
            }
        }
        
        if (completed == 4)
        {
            audio_play_sound(snd_undertale_snap, 1, 0);
            audio_play_sound(snd_success, 1, 0);
            scene = 3;
        }
        
        if (global.right_keyp || global.left_keyp || global.down_keyp || global.up_keyp)
            audio_play_sound(snd_pinkgoo_steam, 1, 0);
        
        if (global.right_key || global.left_key || global.down_key || global.up_key)
        {
            if (!audio_is_playing(snd_pinkgoo_move))
                audio_play_sound(snd_pinkgoo_move, 1, 1);
        }
        else if (audio_is_playing(snd_pinkgoo_move))
        {
            audio_stop_sound(snd_pinkgoo_move);
        }
        
        if (keyboard_multicheck_pressed(vk_anykey))
        {
            if (audio_is_playing(snd_pinkgoo_move))
                audio_stop_sound(snd_pinkgoo_move);
            
            audio_play_sound(snd_fail, 1, 0);
            scene = 6;
        }
        
        break;
    
    case 3:
        if (audio_is_playing(snd_pinkgoo_move))
            audio_stop_sound(snd_pinkgoo_move);
        
        cutscene_screenshake(0.5, 2);
        break;
    
    case 4:
        cutscene_wait(1.5);
        break;
    
    case 5:
        if (!instance_exists(obj_steamworks_04_c_cutscene))
            instance_create(0, 0, obj_steamworks_04_c_cutscene);
        
        break;
    
    case 6:
        cutscene_camera_move(obj_pl.x, obj_pl.y, 2);
        break;
    
    case 7:
        __view_set(e__VW.Object, 0, obj_pl);
        scene = 0;
        scr_cutscene_end();
        break;
}

if (liquid_overlay_deg < 360)
    liquid_overlay_deg += 0.1;
else
    liquid_overlay_deg = 0;

liquid_overlay_alpha = 0.25 + (sin(liquid_overlay_deg) * 0.25);

if (scene >= 3 && scene < 6)
{
    for (var i = 0; i < array_length_1d(liquid_amount); i++)
        liquid_amount[i] = lerp(liquid_amount[i], liquid_target[i], 0.1);
}
