instance_create(0, 0, obj_dialogue_buy_talk_shop);
instance_create(obj_main_screen_shop.x + 19, obj_main_screen_shop.y + 19, obj_heart_buy_screen_shop);

with (obj_text_buy_confirmation_shop)
    instance_destroy();

instance_destroy();
