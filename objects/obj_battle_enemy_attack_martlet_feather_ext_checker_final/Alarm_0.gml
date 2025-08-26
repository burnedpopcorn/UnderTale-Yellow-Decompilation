var random_number = 5;

switch (random_number)
{
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
    var fcreate_x = x + (feather_radius * cos(degtorad(fcreate_angle_diff)));
    var fcreate_y = y - (feather_radius * sin(degtorad(fcreate_angle_diff)));
    global.id_store = id;
    instance_create_depth(fcreate_x, fcreate_y, -100, obj_battle_enemy_attack_martlet_final_feather_ext_feather);
    id_feather[i] = global.id_store;
    
    with (id_feather[i])
    {
        sprite_index = id_checker.feather_sprite;
        image_index = 0;
        image_speed = 0;
        direction = id_checker.fcreate_angle_diff;
        image_angle = id_checker.fcreate_angle_diff;
        trail_sprite = sprite_index;
    }
    
    fcreate_angle_diff -= fcreate_decrease;
    
    if (fcreate_angle_diff < 0)
        fcreate_angle_diff += 360;
}

can_move = true;

switch (feather_sprite)
{
    case spr_battle_enemy_attack_martlet_feather_1:
    case spr_battle_enemy_attack_martlet_feather_2:
    case spr_battle_enemy_attack_martlet_feather_3:
        audio_play_sound(snd_mart_spiral_attack_2, 20, 0);
        break;
    
    case spr_battle_enemy_attack_martlet_feather_4:
    case spr_battle_enemy_attack_martlet_feather_5:
        audio_play_sound(snd_mart_spiral_attack_1, 20, 0);
        break;
    
    default:
        audio_play_sound(snd_mart_spiral_attack_1, 20, 0);
}
