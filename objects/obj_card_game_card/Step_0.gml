if (obj_card_game_controller.cardg_failure)
    image_alpha = 0;

if (card_success)
{
    image_xscale = lerp(image_xscale, 0, 0.4);
    image_yscale = lerp(image_yscale, 0, 0.4);
    image_angle += 15;
    
    if (image_xscale <= 0.1)
        instance_destroy();
    
    exit;
}

if (card_is_selected == true)
{
    depth = -1000099;
    image_xscale = lerp(image_xscale, 1.25, 0.3);
    image_yscale = lerp(image_yscale, 1.25, 0.3);
}
else
{
    image_xscale = lerp(image_xscale, 1, 0.3);
    image_yscale = lerp(image_yscale, 1, 0.3);
}

if (!card_is_active || card_number >= 20)
{
    card_is_active = false;
    exit;
}

depth = -999999 - card_number;
card_row = card_number div 5;
card_column = card_number % 5;
card_target_x = card_original_x + (38 * card_column);
card_target_y = card_original_y + (47 * card_row);
x = lerp(x, card_target_x, 0.3);
y = lerp(y, card_target_y, 0.3);

if (round(x) == card_target_x && round(y) == card_target_y)
    card_is_active = false;

card_is_selected = false;
