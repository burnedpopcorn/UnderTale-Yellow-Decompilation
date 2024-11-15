var random_number, fcreate_x, fcreate_y;

random_number = irandom_range(1, 5);

switch (random_number)
{
    case 1:
        feather_sprite = spr_battle_enemy_attack_martlet_feather_1;
        break;
    
    case 2:
        feather_sprite = spr_battle_enemy_attack_martlet_feather_2;
        break;
    
    case 3:
        feather_sprite = spr_battle_enemy_attack_martlet_feather_3;
        break;
    
    case 4:
        feather_sprite = spr_battle_enemy_attack_martlet_feather_4;
        break;
    
    case 5:
        feather_sprite = spr_battle_enemy_attack_martlet_feather_5;
        break;
    
    default:
        feather_sprite = spr_battle_enemy_attack_martlet_feather_1;
}

for (i = 0; i < fcreate_count; i += 1)
{
    fcreate_x = x + (feather_radius * cos(degtorad(fcreate_angle_diff)));
    fcreate_y = y - (feather_radius * sin(degtorad(fcreate_angle_diff)));
    global.id_store = id;
    instance_create(fcreate_x, fcreate_y, obj_battle_enemy_attack_martlet_feather_spiral_feather);
    id_feather[i] = global.id_store;
    
    with (id_feather[i])
    {
        sprite_index = id_target.feather_sprite;
        image_index = 0;
        image_speed = 0;
        image_angle = id_target.fcreate_angle_diff;
        trail_sprite = sprite_index;
    }
    
    fcreate_angle_diff -= fcreate_decrease;
    
    if (fcreate_angle_diff < 0)
        fcreate_angle_diff += 360;
}

can_spiral = true;

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
