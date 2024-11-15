if (image_alpha < 1)
{
    image_alpha = lerp(image_alpha, 1, 0.15);
    
    if (image_alpha >= 0.99)
        image_alpha = 1;
}

if (attack_state == 1)
{
    x = lerp(x, coin[coin_current].x, 0.15);
    y = lerp(y, coin[coin_current].y, 0.15);
    
    if (point_distance(x, y, coin[coin_current].x, coin[coin_current].y) <= 3)
    {
        instance_destroy(coin[coin_current]);
        audio_play_sound(snd_feisty_mooch_coin_grab, 1, 0);
        attack_state = 0;
        coin_current++;
        
        if (coin_current < array_length(coin))
        {
            alarm[0] = move_delay;
        }
        else
        {
            with (obj_attack_mooch_coin_bag_controller)
                instance_destroy();
        }
    }
}
