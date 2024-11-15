function scr_shop_animation_override_wildeast_blackjack_raise()
{
    if (sprite_index != spr_wildeast_blackjack_raise_shop)
    {
        sprite_index = spr_wildeast_blackjack_raise_shop;
        image_speed = 1/3;
        image_index = 0;
    }
}
