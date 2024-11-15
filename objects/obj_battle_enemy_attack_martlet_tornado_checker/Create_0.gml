x_store = 0;
y_store = 0;
angle_store = 0;
x_center = obj_dialogue_box_battle_transformation_any.x;
y_center = obj_dialogue_box_battle_transformation_any.y;
can_radius_increase = true;
sign_modifier_radius = 1;
time_elapsed_radius = 0;
time_increase_radius = 1;
max_rise_radius = 35;
sign_modifier_skew = 1;
time_elapsed_skew = 0;
time_increase_skew = 1;
max_rise_skew = 35;

if (!instance_exists(obj_martlet_body))
{
    time_max_radius = 45;
    time_max_skew = 90;
}
else
{
    time_max_radius = 60;
    time_max_skew = 120;
}

feather_angle_master = 0;
feather_angle_speed = 4;
feather_sprite = spr_battle_enemy_attack_martlet_feather_perspective;
fcreate_count_max = 6;
fcreate_count = 0;
fcreate_alarm = 360 / feather_angle_speed / fcreate_count_max;
event_user(0);
alarm[11] = 300;

if (!audio_is_playing(snd_mart_wind))
    audio_play_sound(snd_mart_wind, 20, 1);
