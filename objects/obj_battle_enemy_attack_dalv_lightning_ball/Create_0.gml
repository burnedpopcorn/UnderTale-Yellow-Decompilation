var ball_count;

damage_number = scr_determine_damage_number_enemy("dalv", "void", "void");
audio_play_sound(snd_undertale_appear, 1, 0);
image_speed = 0.5;
image_index = 0;
image_alpha = 0;
move = false;
move_speed = 0;
move_speed_max = 6;
move_speed_increase = 0.1;
distance_create = 100;
angle_spread = 30;
ball_count = instance_number(obj_battle_enemy_attack_dalv_lightning_ball) - 1;
angle = ball_count * angle_spread;
event_user(0);
