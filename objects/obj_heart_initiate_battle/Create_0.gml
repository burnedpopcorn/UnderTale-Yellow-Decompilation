scr_cutscene_start();
obj_pl.image_alpha = 0;

if (global.party_member != -4 && instance_exists(global.party_member))
    global.party_member.image_alpha = 0;

instance_create(__view_get(e__VW.XView, 0), __view_get(e__VW.YView, 0), obj_blackout_overworld_2);
flash_count = 0;
flash_delay = 2;
start_delay = 5;
no_loop = false;
no_loop_2 = false;
draw_player_sprite = true;
image_alpha = 0;
x_override = 0;
y_override = 0;

if (global.sound_carry_overworld == true)
    exit;

with (obj_radio)
{
    music_position = audio_sound_get_track_position(current_song);
    audio_stop_sound(bgm);
}
