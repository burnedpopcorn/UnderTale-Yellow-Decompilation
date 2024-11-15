if (live_call())
    return global.live_result;

damage_number = scr_determine_damage_number_enemy("axis", "void", "void");

if (global.battle_enemy_name == "flowey")
    damage_number = scr_determine_damage_number_enemy("flowey", "void", "void");

x = 320;
y = 320;
image_alpha = 0.01;
image_xscale = 20;
image_yscale = 20;
alarm[0] = 1;
audio_play_sound(snd_ceroba_boom, 1, 0);
scr_screenshake_battle(10, 1);
