var failure, i, current_card;

if (instance_number(obj_card_game_card) <= 0)
    exit;

failure = true;

for (i = 0; i < instance_number(obj_card_game_card); i++)
{
    with (obj_card_game_card)
    {
        if (card_is_active)
        {
            failure = false;
            
            with (other)
                break;
        }
        
        if (card_number == i)
            current_card = id;
    }
    
    with (obj_card_game_card)
    {
        if (card_number != i)
        {
            if (point_in_rectangle(x, y, current_card.x - 55, current_card.y - 70, current_card.x + 55, current_card.y + 70) && card_type == current_card.card_type)
            {
                failure = false;
                break;
            }
        }
    }
}

if (failure == true)
{
    audio_sound_gain(mus_card_game, 0, 1000);
    alarm[3] = 30;
}
else
{
    alarm[2] = 30;
}
