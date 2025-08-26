var battle_box = obj_dialogue_box_battle_transformation_any;

if (box_enter_noloop == false)
{
    if (bbox_left > (battle_box.bbox_left + 4) && bbox_right < (battle_box.bbox_right - 4) && bbox_bottom < (battle_box.bbox_bottom - 4) && bbox_top > (battle_box.bbox_top + 4))
        box_enter_noloop = true;
    
    exit;
}

if (bbox_left <= (battle_box.bbox_left + 4))
{
    while (bbox_left <= (battle_box.bbox_left + 4))
        x++;
    
    if (direction < 180)
    {
        direction = 45 + irandom_range(-25, 25);
        audio_play_sound(snd_decibatbouncewave1, 20, 0);
    }
    else
    {
        direction = 315 + irandom_range(-25, 25);
        audio_play_sound(snd_decibatbouncewave1, 20, 0);
    }
}

if (bbox_right >= (battle_box.bbox_right - 4))
{
    while (bbox_right >= (battle_box.bbox_right - 4))
        x--;
    
    if (direction < 90)
    {
        direction = 135 + irandom_range(-25, 25);
        audio_play_sound(snd_decibatbouncewave1, 20, 0);
    }
    else
    {
        direction = 225 + irandom_range(-25, 25);
        audio_play_sound(snd_decibatbouncewave1, 20, 0);
    }
}

if (bbox_bottom >= (battle_box.bbox_bottom - 4))
{
    while (bbox_bottom >= (battle_box.bbox_bottom - 4))
        y--;
    
    if (direction < 270)
    {
        direction = 135 + irandom_range(-25, 25);
        audio_play_sound(snd_decibatbouncewave1, 20, 0);
    }
    else
    {
        direction = 45 + irandom_range(-25, 25);
        audio_play_sound(snd_decibatbouncewave1, 20, 0);
    }
}

if (bbox_top <= (battle_box.bbox_top + 4))
{
    while (bbox_top <= (battle_box.bbox_top + 4))
        y++;
    
    if (direction < 90)
    {
        direction = 315 + irandom_range(-25, 25);
        audio_play_sound(snd_decibatbouncewave1, 20, 0);
    }
    else
    {
        direction = 225 + irandom_range(-25, 25);
        audio_play_sound(snd_decibatbouncewave1, 20, 0);
    }
}
