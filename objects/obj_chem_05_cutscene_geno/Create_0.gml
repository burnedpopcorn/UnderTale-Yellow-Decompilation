scene = 0;
cutscene_timer = 0;

with (obj_chem_05_door)
    event_perform(ev_create, 0);

if (global.sworks_flag[25] >= true)
{
    instance_destroy();
    exit;
}

if (global.sworks_flag[25] == 0)
{
    audio_play_sound(snd_elevator_door_shut, 1, 0);
    global.sworks_flag[25] = 0.5;
}
