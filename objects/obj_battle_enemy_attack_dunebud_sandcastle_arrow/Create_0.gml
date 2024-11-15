damage_number = scr_determine_damage_number_enemy("dunebud a", "dunebud b", "dunebud c");
attack_speed = 5;
attack_mult = 2;
image_angle = point_direction(x, y, obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y);
move = true;
fade = false;
fade_alarm = 40;
audio_play_sound(snd_undyne_spear_fly, 20, false);
