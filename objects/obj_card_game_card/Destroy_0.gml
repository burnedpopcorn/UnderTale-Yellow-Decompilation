with (obj_card_game_card)
{
    if (card_number > other.card_number)
    {
        if (!alarm[0])
            alarm[0] = 1 + ((card_row - other.card_row) * 1.2);
        
        if (card_number == 20)
            alarm[0] = 1 + ((5 - other.card_row) * 1.2);
        
        card_number -= 1;
    }
}
