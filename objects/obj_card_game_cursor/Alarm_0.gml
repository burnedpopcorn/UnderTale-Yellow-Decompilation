if (cardg_selected_card[1] != -1)
{
    if (cardg_selected_card[0].card_type == cardg_selected_card[1].card_type)
    {
        cardg_selected_card[0].card_success = true;
        cardg_selected_card[1].card_success = true;
        audio_play_sound(snd_card_game_match, 1, 0);
    }
}

cardg_selected_card[0].card_is_selected = false;

if (cardg_selected_card[1] != -1)
    cardg_selected_card[1].card_is_selected = false;

cardg_selected_card[0] = -1;

if (cardg_selected_card[1] != -1)
    cardg_selected_card[1] = -1;

with (obj_card_game_card)
    image_alpha = 1;
