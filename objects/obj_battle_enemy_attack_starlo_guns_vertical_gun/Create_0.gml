image_alpha = 0;
image_alpha_inc = 0.2;
var time_to_fade_in = 1 / image_alpha_inc;
image_angle_inc = 10;
target_dir = 270;

if (y > 320)
    target_dir = 90;

direction = target_dir;
image_angle = target_dir - (time_to_fade_in * image_angle_inc);
can_fire = 0;
bullet = instance_create(x, y, obj_battle_enemy_attack_starlo_bullet_rain_bullet);
bullet.direction = target_dir;
event_inherited();

if (!audio_is_playing(snd_starlo_gun_warn))
    audio_play_sound(snd_starlo_gun_warn, 1, 0);

audio_shot_can_play = true;
