if (image_blend == c_red)
{
    image_blend = c_white;
}
else
{
    audio_play_sound(snd_bullet_warning, 1, 0);
    image_blend = c_red;
    feather_explode_counter += 1;
}

alarm[1] = 3;

if (feather_explode_counter > 3)
{
    var i = 1;
    var angle_base = irandom_range(0, 359);
    
    while (i <= 3)
    {
        with (instance_create(x, y, obj_battle_enemy_attack_martlet_feather_flow_explosion))
            angle = angle_base + (120 * i);
        
        i++;
    }
    
    audio_play_sound(snd_mart_spiral_attack_2, 1, 0);
    instance_destroy();
}
