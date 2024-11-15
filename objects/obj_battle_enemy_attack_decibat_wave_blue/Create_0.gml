damage_number = scr_determine_damage_number_enemy("decibat", "void", "void");
image_xscale = 0.2;
image_yscale = 0.2;
image_scale_increase = 0.1;
y_speed = 6;
fade = false;
alarm[0] = 40;

if (global.enemy_attack == "Decibat Wave Blue")
    audio_play_sound(snd_decibat3bigwaves, 20, 0);
else
    audio_play_sound(snd_decibat1bigwave, 20, 0);
