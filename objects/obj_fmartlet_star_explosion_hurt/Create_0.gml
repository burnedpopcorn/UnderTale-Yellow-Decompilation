if (live_call())
    return global.live_result;

var battle_box = obj_dialogue_box_battle_transformation_any;
damage_number = scr_determine_damage_number_enemy("martlet", "void", "void");
x = battle_box.x;
y = battle_box.y;
image_alpha = 0.01;
image_xscale = 20;
image_yscale = 20;
alarm[0] = 3;
audio_play_sound(snd_ceroba_boom, 1, 0);
scr_screenshake_battle(10, 1);
