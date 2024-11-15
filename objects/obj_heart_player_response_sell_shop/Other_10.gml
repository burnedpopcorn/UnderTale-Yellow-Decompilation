instance_create(obj_talk_screen_shop.x + 19, obj_talk_screen_shop.y + 19, obj_heart_sell_screen_shop);
instance_create(0, 0, obj_text_item_sell_shop);

with (obj_text_sell_confirmation_shop)
    instance_destroy();

instance_destroy();
