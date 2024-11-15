var battle_box, card_width, card_height;

battle_box = 3154;
card_width = 41;
card_height = 61;

with (instance_create(320, -card_height, obj_attack_ace_cards))
{
    card_target_x = 320 - (card_width * 0.5) - 50;
    card_target_y = battle_box.bbox_top - card_height - 10;
}

with (instance_create(320, -card_height, obj_attack_ace_cards))
{
    card_target_x = 320 - (card_width * 0.5);
    card_target_y = battle_box.bbox_top - card_height - 10;
}

with (instance_create(320, -card_height, obj_attack_ace_cards))
{
    card_target_x = (320 - (card_width * 0.5)) + 50;
    card_target_y = battle_box.bbox_top - card_height - 10;
}
