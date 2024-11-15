if (fade == false && image_alpha < 1)
{
    if (image_alpha < 1)
    {
        image_alpha += 0.1;
        
        if (image_alpha >= 1)
        {
            image_alpha = 1;
            move = true;
            audio_play_sound(snd_undyne_spear_fly, 20, false);
        }
    }
}

if (move == true)
{
    for (i = 0; i < attack_mult; i++)
    {
        if (bd_dist_passed == true)
            image_angle -= (attack_direction * angle_increase);
        
        x += lengthdir_x(attack_speed, image_angle);
        y += lengthdir_y(attack_speed, image_angle);
        
        if (abs(x - default_x) >= bd_dist_min)
            bd_dist_passed = true;
        
        if (bd_dist_passed == true && place_meeting(x, y, obj_attack_boundary_box))
        {
            move = false;
            alarm[0] = fade_alarm;
            break;
        }
    }
}

if (fade == true)
{
    if (image_alpha > 0)
    {
        image_alpha -= 0.1;
        
        if (image_alpha <= 0)
            instance_destroy();
    }
}
