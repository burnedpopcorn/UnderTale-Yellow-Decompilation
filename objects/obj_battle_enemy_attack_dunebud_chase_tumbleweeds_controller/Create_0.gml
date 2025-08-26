if (live_call())
    return global.live_result;

var box = obj_dialogue_box_battle_transformation_any;
var chosen_dunebud = choose(2205, 3194);

if (global.enemy_spared || global.enemy_dead)
    chosen_dunebud = 3194;

if (global.enemy_spared_2 || global.enemy_dead_2)
    chosen_dunebud = 2205;

instance_create_depth(chosen_dunebud.x, chosen_dunebud.y, chosen_dunebud.depth - 1, obj_battle_enemy_attack_dunebud_chase_enemy);
event_inherited();
weed_count = 0;
weed_max = 999;
weed_alarm = 30;
destroy_alarm = 10;
no_loop_destroy = false;
alarm[0] = 10;

if (!audio_is_playing(snd_mart_wind))
    audio_play_sound(snd_mart_wind, 20, 1);
