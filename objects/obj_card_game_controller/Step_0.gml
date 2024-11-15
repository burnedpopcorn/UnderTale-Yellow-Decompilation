var max_g_gained, time_in_seconds;

if (cardg_fade_out == true)
{
    if (cardg_draw_alpha > 0)
        cardg_draw_alpha -= 0.05;
    else
        instance_destroy();
}
else if (cardg_draw_alpha < 1)
{
    cardg_draw_alpha += 0.05;
    exit;
}

if (instance_number(obj_card_game_card) <= 0 && !cardg_failure && !cardg_fade_out)
{
    if (instance_exists(obj_card_game_cursor))
        instance_destroy(obj_card_game_cursor);
    
    if (cardg_flashing_timer == 0)
    {
        cardg_flashing_timer = 20;
        cardg_flash *= -1;
    }
    else
    {
        cardg_flashing_timer--;
    }
    
    if (!alarm[0] && cardg_victory == false)
        alarm[0] = 90;
    
    audio_sound_gain(mus_card_game, 0, 1000);
    
    if (cardg_victory == true)
    {
        max_g_gained = 25;
        time_in_seconds = floor(cardg_timer / 30);
        
        if (time_in_seconds <= cardg_time_gold)
            max_g_gained = 25;
        else if (time_in_seconds <= cardg_time_silver)
            max_g_gained = 15;
        else
            max_g_gained = 3;
        
        if (cardg_g_gained <= max_g_gained)
        {
            cardg_g_gained += 0.25;
            
            if (cardg_g_gained == floor(cardg_g_gained))
                audio_play_sound(snd_card_game_gold, 1, 0);
        }
        else if (!alarm[1])
        {
            alarm[1] = 120;
        }
    }
    
    exit;
}

if (cardg_failure)
{
    if (!alarm[1])
        alarm[1] = 120;
    
    exit;
}

if (cardg_intro_countdown > 0)
{
    switch (cardg_intro_countdown)
    {
        case 120:
        case 90:
        case 60:
            audio_play_sound(snd_ring, 1, 0);
            cardg_intro_countdown_alpha = 1;
            break;
        
        case 30:
            audio_play_sound(snd_card_game_match, 1, 0);
            cardg_intro_countdown_alpha = 1;
            break;
    }
    
    cardg_intro_countdown_alpha = clamp(cardg_intro_countdown_alpha - 0.1, 0, cardg_intro_countdown_alpha);
    cardg_intro_countdown -= 1;
}
else
{
    cardg_timer += 1;
}
