var battle_box, card_width, card_height;

battle_box = 3154;
card_width = 41;
card_height = 61;

with (instance_create(320, -card_height, obj_attack_ace_cards))
{
    card_target_x = 320 - (card_width * 0.5) - 25;
    card_target_y = battle_box.bbox_top - card_height - 10;
}

with (instance_create(320, -card_height, obj_attack_ace_cards))
{
    card_target_x = (320 - (card_width * 0.5)) + 25;
    card_target_y = battle_box.bbox_top - card_height - 10;
}

scr_enable_battle_box_surface();
attack_coin_spawn_timer = 13;
alarm[0] = 1;
last_number = 0;
same_number_amount = 0;
exc_number = 0;
