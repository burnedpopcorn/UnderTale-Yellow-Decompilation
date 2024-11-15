var battle_box, card_width, card_height, stack_x, stack_y, stack_y2, x_target, y_target, i;

battle_box = 3154;
card_width = 41;
card_height = 61;
stack_x = battle_box.x - (card_width * 0.5);
stack_y = battle_box.bbox_top - card_height - 12;
stack_y2 = battle_box.bbox_bottom + 12;
x_target = battle_box.bbox_left + 4;
y_target = battle_box.bbox_top + 4;

for (i = 1; i <= 8; i++)
{
    card_target_x[i] = x_target + (7 * i) + (card_width * (i - 1));
    card_target_y[i] = 6 + y_target + (max(0, sign(i - 4)) * (8 + card_height));
}

for (i = 1; i <= 4; i++)
{
    card[i] = instance_create(stack_x, stack_y, obj_attack_ace_dealing_cards);
    
    with (card[i])
    {
        card_target_x = other.card_target_x[i];
        card_target_y = other.card_target_y[i];
        card_id = i;
    }
}

for (i = 1; i <= 4; i++)
{
    card[i + 4] = instance_create(stack_x, stack_y2, obj_attack_ace_dealing_cards);
    
    with (card[i + 4])
    {
        card_target_x = other.card_target_x[i];
        card_target_y = other.card_target_y[i + 4];
        card_id = i + 4;
    }
}

alarm[0] = 30;
attack_number = 3;
