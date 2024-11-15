var fcreate_x, fcreate_y;

if (live_call())
    return global.live_result;

feather_angle_direction = choose(-1, 1);

for (i = 0; i < feather_create_max; i++)
{
    id_counter = i;
    feather_create_angle = feather_angle_master + ((360 / feather_create_max) * i);
    fcreate_x = x_center + (feather_angle_radius * cos(degtorad(feather_create_angle)));
    fcreate_y = y_center - (feather_angle_radius * sin(degtorad(feather_create_angle)));
    instance_create_depth(fcreate_x, fcreate_y, -100, obj_battle_enemy_attack_martlet_ff_2_final_feather);
    id_feather[feather_count][i] = global.id_store;
    
    with (id_feather[feather_count][i])
    {
        sprite_index = obj_battle_enemy_attack_martlet_ff_2_final_checker.feather_sprite;
        image_index = 0;
        image_speed = 0;
        image_alpha = 0;
        image_angle = obj_battle_enemy_attack_martlet_ff_2_final_checker.feather_create_angle + 180;
        trail_sprite = sprite_index;
        id_counter = obj_battle_enemy_attack_martlet_ff_2_final_checker.id_counter;
        feather_count = obj_battle_enemy_attack_martlet_ff_2_final_checker.feather_count;
        feather_angle = obj_battle_enemy_attack_martlet_ff_2_final_checker.feather_create_angle;
    }
}

switch (feather_sprite)
{
    case 2273:
    case 2274:
    case 2275:
        audio_play_sound(snd_mart_spiral_attack_2, 20, 0);
        break;
    
    case 2276:
    case 2278:
        audio_play_sound(snd_mart_spiral_attack_1, 20, 0);
        break;
    
    default:
        audio_play_sound(snd_mart_spiral_attack_1, 20, 0);
}

feather_angle_master += feather_angle_speed;

if (feather_angle_master >= 360)
    feather_angle_master -= 360;
else if (feather_angle_master < 0)
    feather_angle_master += 360;

feather_angle_total += abs(feather_angle_speed);
feather_count += 1;

if (feather_angle_total < feather_angle_total_max)
    alarm[0] = 30;
