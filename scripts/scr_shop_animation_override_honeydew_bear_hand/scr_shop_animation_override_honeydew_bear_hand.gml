function scr_shop_animation_override_honeydew_bear_hand()
{
    if (sprite_index != spr_honeydew_bear_animation_hand_shop)
    {
        sprite_index = spr_honeydew_bear_animation_hand_shop;
        image_speed = 1/3;
        image_index = 0;
    }
}
