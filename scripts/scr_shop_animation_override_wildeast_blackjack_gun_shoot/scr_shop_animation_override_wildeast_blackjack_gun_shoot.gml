function scr_shop_animation_override_wildeast_blackjack_gun_shoot()
{
    if (sprite_index != spr_wildeast_blackjack_gun_shoot_shop)
    {
        sprite_index = spr_wildeast_blackjack_gun_shoot_shop;
        image_speed = 1/3;
        image_index = 0;
    }
    else if (floor(image_index) == 19)
    {
        if (!audio_is_playing(snd_revolver_shoot))
            audio_play_sound(snd_revolver_shoot, 1, 0);
    }
}
