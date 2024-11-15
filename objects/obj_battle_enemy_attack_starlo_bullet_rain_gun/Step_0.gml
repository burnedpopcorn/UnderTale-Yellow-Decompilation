if (can_fire == 0)
{
    image_angle += image_angle_inc;
    image_alpha += image_alpha_inc;
    
    if (image_alpha >= 1)
    {
        image_alpha = 1;
        
        if (!alarm[0])
        {
            alarm[0] = 16;
            can_fire = -1;
        }
    }
}

if (can_fire == 1)
{
    if (audio_shot_can_play == true)
        audio_play_sound(snd_shotweak, 1, 0);
    
    with (obj_battle_enemy_attack_starlo_bullet_rain_gun)
    {
        if (can_fire == 1)
            audio_shot_can_play = false;
    }
    
    with (bullet)
        event_user(0);
    
    gravity = 0.25;
    speed = -3;
    vspeed = -1;
    can_fire = 2;
}

if (can_fire == 2)
{
    image_angle += (image_yscale * 2);
    
    if (image_alpha > 0)
        image_alpha -= 0.025;
    else
        instance_destroy();
}

event_inherited();
