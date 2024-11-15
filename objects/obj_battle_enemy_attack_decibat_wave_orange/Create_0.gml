damage_number = scr_determine_damage_number_enemy("decibat", "void", "void");

if (x < obj_dialogue_box_battle_transformation_any.x)
{
    image_xscale = 0.2;
    image_yscale = 0.2;
    image_xscale_increase = 0.1;
    image_yscale_increase = 0.1;
    x_speed = 6;
}
else
{
    image_xscale = -0.2;
    image_yscale = 0.2;
    image_xscale_increase = -0.1;
    image_yscale_increase = 0.1;
    x_speed = -6;
}

fade = false;
alarm[0] = 40;

if (global.enemy_attack == "Decibat Wave Orange")
    audio_play_sound(snd_decibat3bigwaves, 20, 0);
else
    audio_play_sound(snd_decibat1bigwave, 20, 0);
