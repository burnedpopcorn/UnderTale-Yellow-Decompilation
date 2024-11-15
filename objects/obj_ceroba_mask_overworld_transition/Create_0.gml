if (live_call())
    return global.live_result;

scr_audio_fade(global.battle_music, 300);
instance_create_depth(x, y - 20, depth + 1, obj_ceroba_transformation_beam_spawner);
scene = 0;
cutscene_timer = 0;
draw_alpha = 0;
audio_play_sound(113, 1, 0, 1, 1);
