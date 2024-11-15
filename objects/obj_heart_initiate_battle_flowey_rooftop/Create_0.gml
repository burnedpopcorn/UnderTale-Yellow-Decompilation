if (live_call())
    return global.live_result;

flash_count = 0;
flash_delay = 4;
start_delay = 5;
no_loop = false;
no_loop_2 = false;
draw_player_sprite = true;
image_alpha = 0;
image_speed = 0;
alarm[0] = 1;
no_loop = true;

if (global.sound_carry_overworld == true)
    exit;

with (obj_radio)
{
    music_position = audio_sound_get_track_position(current_song);
    audio_stop_sound(bgm);
}
