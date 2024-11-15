var junk_count, junk_dir, sound_type;

if (!instance_exists(obj_heart_battle_fighting_parent))
{
    instance_destroy();
    exit;
}

if (image_alpha < 1 && can_move == false)
{
    image_alpha += 0.1;
    
    if (image_alpha > 1)
        image_alpha = 1;
    
    if (image_alpha == 1)
        can_move = true;
}

if (can_move == true)
{
    package_vsp += package_grav;
    x += fly_speed;
    y += package_vsp;
    image_angle += angle_sway;
}

if (y > battle_box_bottom)
{
    if (image_index == 0)
    {
        image_index = 1;
        image_angle = 0;
        mask_index = -4;
        fly_speed = 0;
        angle_sway = choose(1, -1);
        package_vsp = -4;
        fade_out = true;
        junk_count = irandom_range(3, 4);
        junk_dir = irandom_range(15, 180 / junk_count);
        
        while (junk_count > 0)
        {
            with (instance_create(x, y, obj_battle_enemy_attack_martlet_package_junk))
                junk_direction = 0 + (junk_dir * junk_count) + (junk_dir * junk_count);
            
            junk_count -= 1;
        }
        
        sound_type = irandom_range(1, 3);
        
        switch (sound_type)
        {
            case 1:
                audio_play_sound(snd_mart_impact_1, 20, 0);
                break;
            
            case 2:
                audio_play_sound(snd_mart_impact_2, 20, 0);
                break;
            
            case 3:
                audio_play_sound(snd_mart_impact_3, 20, 0);
                break;
            
            default:
                audio_play_sound(snd_mart_impact_2, 20, 0);
        }
    }
}

if (fade_out == true)
{
    image_alpha -= 0.1;
    
    if (image_alpha < 0)
        image_alpha = 0;
    
    if (image_alpha == 0)
        instance_destroy();
}
