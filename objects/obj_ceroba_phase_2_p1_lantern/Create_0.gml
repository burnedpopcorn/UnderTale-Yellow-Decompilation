if (live_call())
    return global.live_result;

damage_number = scr_determine_damage_number_enemy("ceroba", "void", "void");
var battle_box = obj_dialogue_box_battle_transformation_any;
image_alpha = 0;
scene = 0;
cutscene_timer = 0;
bullet_spawn_direction = 0;
bullet_hit_points = 3;
bullet_hit_draw_timer = 0;
bullet_destroy_self = false;
fade_out = false;
shot_count = 3;
wave_count = 3;
audio_play_sound(snd_undertale_appear, 1, 0);
