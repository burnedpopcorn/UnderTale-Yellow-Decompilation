card_is_active = false;
card_is_selected = false;
card_original_x = 83;
card_original_y = 41;
card_number = 0;
card_success = false;
card_row = 0;
card_column = 0;
card_type = irandom_range(0, 5);
obj_card_game_controller.cardg_card_type_number[card_type] += 1;

while (obj_card_game_controller.cardg_card_type_number[card_type] > 6)
{
    obj_card_game_controller.cardg_card_type_number[card_type] -= 1;
    card_type = irandom_range(0, 5);
    obj_card_game_controller.cardg_card_type_number[card_type] += 1;
}

switch (card_type)
{
    case 0:
        sprite_index = spr_card_ace;
        break;
    
    case 1:
        sprite_index = spr_card_ceroba;
        break;
    
    case 2:
        sprite_index = spr_card_ed;
        break;
    
    case 3:
        sprite_index = spr_card_moray;
        break;
    
    case 5:
        sprite_index = spr_card_starlo;
        break;
    
    case 4:
        sprite_index = spr_card_mooch;
        break;
}
