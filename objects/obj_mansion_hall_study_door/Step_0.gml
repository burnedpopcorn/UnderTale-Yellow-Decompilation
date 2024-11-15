event_inherited();

if (interact)
{
    scr_cutscene_start();
    audio_play_sound(snd_doorclose, 1, 0);
    scr_change_room(248, 160, 200);
}
