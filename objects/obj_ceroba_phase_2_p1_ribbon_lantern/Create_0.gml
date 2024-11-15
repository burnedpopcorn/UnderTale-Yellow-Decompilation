var battle_box;

if (live_call())
    return global.live_result;

damage_number = scr_determine_damage_number_enemy("ceroba", "void", "void");
battle_box = 3154;
image_alpha = 0;
scene = 0;
cutscene_timer = 0;
bullet_spawn_direction = 0;
fade_out = false;
audio_play_sound(snd_undertale_appear, 1, 0);

if (y > battle_box.y)
{
    y_target = battle_box.bbox_top;
    vspeed = -2;
}
else
{
    y_target = battle_box.bbox_bottom;
    vspeed = 2;
}
