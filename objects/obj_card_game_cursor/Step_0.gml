scr_get_input();
var confirm_key = keyboard_multicheck_pressed(vk_nokey);
var cancel_key = keyboard_multicheck_pressed(vk_anykey);
x += ((global.right_key - global.left_key) * 4);
y += ((global.down_key - global.up_key) * 4);
x = clamp(x, 60, 260);
y = clamp(y, 20, 210);
var cards_moving = false;

with (obj_card_game_card)
{
    if (card_is_active == true || card_success == true || alarm[0] > -1)
        cards_moving = true;
}

if (cardg_selected_card[0] != -1 && cardg_selected_card[1] != -1)
{
    if (!alarm[0])
        alarm[0] = 15;
    
    image_alpha = 0.5;
    exit;
}

if (cards_moving)
    image_alpha = 0.5;
else
    image_alpha = 1;

if (confirm_key && !cards_moving)
{
    var nearest_card = instance_nearest(x, y, obj_card_game_card);
    
    if (nearest_card.card_is_active == false)
    {
        if (cardg_selected_card[0] == -1)
        {
            cardg_selected_card[0] = nearest_card;
            nearest_card.card_is_selected = true;
            
            with (obj_card_game_card)
            {
                if (!point_in_rectangle(x, y, other.cardg_selected_card[0].x - 55, other.cardg_selected_card[0].y - 70, other.cardg_selected_card[0].x + 55, other.cardg_selected_card[0].y + 70))
                    image_alpha = 0.4;
            }
            
            audio_play_sound(snd_card_game_select, 1, 0);
        }
        else if (nearest_card == cardg_selected_card[0])
        {
            cancel_key = true;
        }
        else if (nearest_card != cardg_selected_card[0] && point_in_rectangle(nearest_card.x, nearest_card.y, cardg_selected_card[0].x - 55, cardg_selected_card[0].y - 70, cardg_selected_card[0].x + 55, cardg_selected_card[0].y + 70))
        {
            cardg_selected_card[1] = nearest_card;
            nearest_card.card_is_selected = true;
            audio_play_sound(snd_card_game_select, 1, 0);
        }
    }
}

if (cancel_key || cards_moving)
{
    if (cardg_selected_card[0] != -1)
        alarm[0] = 1;
}
