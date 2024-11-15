event_inherited();

if (interact)
{
    audio_play_sound(snd_doorclose, 1, 0);
    scr_change_room(246, 80, 200);
    scr_cutscene_start();
}
