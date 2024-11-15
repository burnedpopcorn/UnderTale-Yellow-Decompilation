var clovjump;

palette_index = obj_pl.palette_index;
shader_on = obj_pl.shader_on;

with (other)
{
    switch (state)
    {
        case 0:
            obj_pl.x = x;
            obj_pl.y = y;
            audio_sound_gain(obj_radio.current_song, 0, 0);
            
            if ((room == rm_dunes_22 && x >= 290) || (room == rm_dunes_20 && x <= 310))
            {
                audio_play_sound(snd_rock_break, 1, 0);
                audio_stop_sound(snd_rock_roll);
                hspeed = 0;
                image_speed = 0;
                
                if (room == rm_dunes_22)
                    x = 290;
                else
                    x = 310;
                
                timer = 50;
                state++;
            }
            
            break;
        
        case 1:
            if (!scr_timer())
                exit;
            
            audio_sound_gain(obj_radio.current_song, 1, 500);
            scr_audio_fade_out(194, 250);
            instance_destroy();
            instance_create(x, y, obj_player_cart);
            clovjump = instance_create(x, y, obj_clover_minesjump);
            
            if (room == rm_dunes_20)
                clovjump.hsp *= -1;
            
            state++;
            break;
    }
    
    if (hspeed > 0)
        image_xscale = sign(hspeed);
}
