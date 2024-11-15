for (dj_suit_x += dj_speed_x; dj_suit_x >= max_dj_suit_x; dj_suit_x -= max_dj_suit_x)
{
}

for (i = 0; i <= 1; i++)
{
    if (can_spin[i] == true)
    {
        time_elapsed[i] += time_increase[i];
        
        if (time_elapsed[i] >= (time_max[i] / 2))
        {
            time_elapsed[i] = 0;
            angle[i] = 0;
            suit[i][0] = suit[i][1];
            can_spin[i] = false;
        }
        else
        {
            game_maker_cannot_do_math = power((time_elapsed[i] / ((time_max[i] / 2) * (1 / sqrt(max_rise[i])))) - sqrt(max_rise[i]), 2);
            animation_disjoint_angle = sign_modifier[i] * (max_rise[i] - floor(0.5 + game_maker_cannot_do_math));
            angle[i] = animation_disjoint_angle;
        }
    }
}

for (i = 0; i <= 1; i++)
{
    xscale[i] = cos(degtorad(angle[i]));
    
    if (xscale[i] < 0)
        side[i] = 1;
    else
        side[i] = 0;
    
    xscale[i] = abs(xscale[i]);
    
    if (suit[i][side[i]] == "Club")
    {
        sprite_card[i] = sprite_card_club;
        sprite_suit[i] = sprite_suit_club;
    }
    else if (suit[i][side[i]] == "Diamond")
    {
        sprite_card[i] = sprite_card_diamond;
        sprite_suit[i] = sprite_suit_diamond;
    }
    else if (suit[i][side[i]] == "Heart")
    {
        sprite_card[i] = sprite_card_heart;
        sprite_suit[i] = sprite_suit_heart;
    }
    else if (suit[i][side[i]] == "Spade")
    {
        sprite_card[i] = sprite_card_spade;
        sprite_suit[i] = sprite_suit_spade;
    }
}
