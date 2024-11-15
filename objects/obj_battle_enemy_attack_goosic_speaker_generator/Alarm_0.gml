if (live_call())
    return global.live_result;

audio_pos = choose("left", "right");
spawn_offset_x = 0;
spawn_interval = 5;

if (audio_pos == "right")
{
    speaker_right.image_speed = 1;
    spawn_offset_dir = 1;
}
else
{
    speaker_left.image_speed = 1;
    spawn_offset_dir = -1;
}

alarm[3] = 15;
