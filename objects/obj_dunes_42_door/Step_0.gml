event_inherited();

if ((interact || place_meeting(x, y, obj_pl)) && noloop == false)
{
    if (!instance_exists(obj_transition))
    {
        audio_play_sound(snd_doorclose, 1, 0);
        scr_change_room(283, 217, 200);
        scr_cutscene_start();
        noloop = true;
    }
}
