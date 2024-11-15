scr_cutscene_start();
obj_pl.image_alpha = 0;

if (global.party_member != -4 && instance_exists(global.party_member))
    global.party_member.image_alpha = 0;

instance_create(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), obj_blackout_overworld_2);
flash_count = 0;
flash_delay = 1;
no_loop = false;
no_loop_2 = false;
image_alpha = 0;

if (global.sound_carry_overworld == true)
    exit;

with (obj_radio)
{
    music_position = audio_sound_get_track_position(current_song);
    audio_stop_sound(bgm);
}
