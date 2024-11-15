if (live_call())
    return global.live_result;

scene = 0;
cutscene_timer = 0;

with (obj_martlet_final_base)
{
    sprite_index = spr_martlet_final_wing_attack;
    image_index = 0;
    image_speed = 0;
}

y_original = obj_martlet_final_base.martlet_y_target;
y_target = obj_martlet_final_base.y;
x_original = obj_martlet_final_base.xstart;
x_target = 320;
flap_noloop = false;
no_loop_sound = false;
instance_create(320, 240, obj_battle_enemy_attack_martlet_wind_gust_wind);
alarm[0] = 30;
item_offset = 12;
spawn_count = 0;
spawn_count_max = 3;
attack_duration = 320;
