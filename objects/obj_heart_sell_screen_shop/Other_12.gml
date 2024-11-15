instance_create(obj_talk_screen_shop.x, obj_talk_screen_shop.y, obj_main_screen_shop);
instance_destroy(obj_talk_screen_shop);
instance_destroy(obj_text_item_sell_shop);
instance_destroy();
instance_create(obj_main_screen_shop.x + 210, obj_main_screen_shop.y, obj_item_description_screen_shop);
instance_create(0, 0, obj_dialogue_main_screen_shop);
instance_create(0, 0, obj_text_main_screen_shop);
instance_create(obj_main_screen_shop.x + 229, obj_main_screen_shop.y + 19, obj_heart_main_screen_shop);
