if (live_call())
    return global.live_result;

if (!instance_exists(obj_martlet_body))
{
    sprite_index = spr_martlet_g_full_fly_begin;
    id_martlet = 2345;
}
else
{
    id_martlet = 2334;
}

global.id_store = id;

with (id_martlet)
{
    image_alpha = 0;
    time_elapsed = 0;
    sign_modifier = 1;
    
    if (object_index == obj_martlet_g_body)
    {
        time_elapsed_g = 0;
        sign_modifier_g = 1;
    }
    
    id_martlet_wing_gust = global.id_store;
}

default_y = y;
max_y = 40;
speed_y = 4;
atk_counter_current = 0;
atk_alarm_no_loop = false;

if (!instance_exists(obj_martlet_body))
{
    atk_counter_max = 9;
    atk_alarm = 30;
}
else
{
    atk_counter_max = 7;
    atk_alarm = 35;
}

fly_state = 0;
to_landing = false;
sign_modifier = -1;
time_elapsed = 10;
time_max = 20;
time_increase = 1;
max_rise = max_y;
image_speed_begin = 1;
image_index_begin = 0;
image_speed_during = 1/3;
image_index_during_s = 2;
image_index_during_e = 0;
image_speed_end = 1/3;
image_index_end = 0;
image_speed = image_speed_begin;
image_index = image_index_begin;
no_loop_sound = false;
instance_create(320, 240, obj_battle_enemy_attack_martlet_wind_gust_wind);
