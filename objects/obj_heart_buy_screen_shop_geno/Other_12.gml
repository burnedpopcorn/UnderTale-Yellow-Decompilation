instance_create(0, 0, obj_dialogue_main_screen_shop_geno);
instance_create(0, 0, obj_text_main_screen_shop_geno);
instance_create(obj_main_screen_shop.x + 229, obj_main_screen_shop.y + 19, obj_heart_main_screen_shop_geno);

if (instance_exists(obj_text_item_buy_shop))
{
    with (obj_text_item_buy_shop)
        instance_destroy();
}

if (instance_exists(obj_text_item_talk_shop))
{
    with (obj_text_item_talk_shop)
        instance_destroy();
}
