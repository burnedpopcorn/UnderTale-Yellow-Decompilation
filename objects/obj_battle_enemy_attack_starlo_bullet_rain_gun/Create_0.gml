image_alpha = 0;
image_alpha_inc = 0.2;
time_to_fade_in = 1 / image_alpha_inc;
image_angle_inc = 10;
target_dir = point_direction(x, y, obj_heart_battle_fighting_red.x, obj_heart_battle_fighting_red.y);
direction = target_dir;
image_angle = target_dir - (time_to_fade_in * image_angle_inc);
can_fire = 0;
bullet = instance_create(x, y, obj_battle_enemy_attack_starlo_bullet_rain_bullet);
bullet.direction = target_dir;

if (target_dir > 90 && target_dir < 270)
    image_yscale = -1;

event_inherited();
audio_play_sound(snd_starlo_gun_warn, 1, 0);
audio_shot_can_play = true;
