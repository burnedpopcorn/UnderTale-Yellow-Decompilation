if ((place_meeting(x - 30, y, obj_dunes_08b_stand) || place_meeting(x + 30, y, obj_dunes_08b_stand) || place_meeting(x - 30, y, obj_dunes_08b_mo) || place_meeting(x + 30, y, obj_dunes_08b_mo)) && image_speed == 0)
{
    if (place_meeting(x + 30, y, obj_dunes_08b_mo) || place_meeting(x + 30, y, obj_dunes_08b_stand))
        image_xscale = -1;
    else
        image_xscale = 1;
    
    image_speed = 0.5;
    audio_play_sound(snd_mo_kicks_the_bucket, 1, 0);
}
