var player_soul;

if (live_call())
    return global.live_result;

player_soul = 2979;
button_pressed = false;

if (fade_in == false)
{
    image_alpha = lerp(image_alpha, 0, 0.1);
    
    if (image_alpha < 0.01)
        image_alpha = 0;
}
else if (fade_in == true)
{
    image_alpha = lerp(image_alpha, 1, 0.1);
    
    if (image_alpha > 0.99)
    {
        image_alpha = 1;
        
        if (place_meeting(x, y, player_soul))
        {
            if (keyboard_multicheck_pressed(0))
            {
                audio_play_sound(snd_confirm, 1, 0);
                button_pressed = true;
                image_index = 0;
                exit;
            }
            
            image_index = 1;
        }
        else
        {
            image_index = 0;
        }
    }
}
