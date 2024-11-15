swit = false;

if (scr_interact() && keyboard_multicheck_pressed(0))
{
    if (place_meeting(x, y, obj_mc_cart))
    {
        audio_play_sound(snd_fail, 1, 0);
        exit;
    }
    
    audio_play_sound(snd_switch, 1, 0);
    swit = true;
}

if (place_meeting(x, y, obj_pl))
    solid = false;
else
    solid = true;
