var i;

if (puzzle_count >= 3 && !puzzle_finished)
{
    puzzle_finished = true;
    scr_cutscene_start();
    timer[0] = 30;
    global.dialogue_open = false;
}

for (i = 0; i < array_length_1d(timer); i++)
{
    if (timer[i] > 0)
        timer[i]--;
}

if (timer[0] == 0)
{
    instance_create(0, 0, obj_screenshake);
    obj_mc_path_blocker.image_index = 1;
    audio_play_sound(snd_attackhitcrit, 1, 0);
    timer[1] = 30;
    timer[0] = -1;
}

if (timer[1] == 0)
{
    global.cutscene = false;
    global.dunes_flag[8] = true;
    scr_text();
    
    with (msg)
        message[0] = "* (The path has been opened.)";
    
    instance_destroy();
    timer[1] = -1;
}
