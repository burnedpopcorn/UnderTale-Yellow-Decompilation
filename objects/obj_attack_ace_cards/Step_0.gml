if (card_active == true)
{
    x = lerp(x, card_target_x, 0.3);
    y = lerp(y, card_target_y, 0.3);
    
    if (abs(x - card_target_x) <= 0.01 && abs(y - card_target_y) <= 0.01)
    {
        x = card_target_x;
        y = card_target_y;
        card_active = false;
        attack_stage = 1;
    }
}

switch (attack_stage)
{
    case 1:
        if (image_speed == 0)
        {
            audio_play_sound(snd_card_game_deal, 1, 0);
            image_speed = 1/3;
        }
        
        if (image_index >= (image_number - 1))
        {
            image_speed = 0;
            image_index = image_number - 1;
            attack_stage += 1;
        }
        
        break;
    
    case 2:
        if (!alarm[0])
            alarm[0] = 15;
        
        break;
    
    case 3:
        image_alpha -= 0.05;
        
        if (image_alpha <= 0.1)
            instance_destroy();
        
        break;
}
