for (i = 0; i <= 1; i++)
{
    for (j = 0; j <= 1; j++)
        draw_sprite_ext(sprite_card[i], 0, pos_card_x[i][j], pos_card_y[i][j], xscale[i], 1, 0, c_white, image_alpha);
}

for (i = 0; i <= 1; i++)
{
    for (j = 0; j <= 1; j++)
    {
        for (k = i; k <= max_suit_total; k += 2)
            draw_sprite_clip_ext(sprite_suit[i], 0, pos_suit_x[j] + (k * dist_suit_x) + (dj_suit_x * dj_sign_x), pos_suit_y[j], xscale[i], 1, 16777215, image_alpha, suit_bnd_x[0], 0, suit_bnd_diff_x, 480);
    }
}
