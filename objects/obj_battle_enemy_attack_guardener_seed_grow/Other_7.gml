var seed;

image_speed = 0;
image_index = image_number - 1;
seed = instance_create_depth(x, y, depth + 1, obj_battle_enemy_attack_guardener_seed);
seed.direction = direction;
audio_play_sound(snd_arc_shoot, 1, 0);
