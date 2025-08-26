var shop_name = global.shop_name;

if (action[message_current] != "Override")
{
    script_execute(scr_controls_text);
    
    if (key_revert_pressed)
    {
        if (shop_name == "Hotel Shop")
        {
            var message_og_length = string_length(message[message_current]);
            
            if (characters < message_og_length)
                characters = message_og_length;
            else
                characters = message_length;
            
            message_draw_alt = string_copy(message_alt[message_current], 0, characters);
        }
        else
        {
            characters = message_length;
        }
        
        message_draw = string_copy(message[message_current], 0, characters);
    }
    
    if (characters < message_length)
    {
        if (counter == 0)
        {
            script_execute(scr_text_increase);
            
            if (shop_name == "Hotel Shop")
            {
                message_draw_alt = string_copy(message_alt[message_current], 0, characters);
                var message_alt_length = string_length(message_alt[message_current]);
                var message_og_length = string_length(message[message_current]);
                
                if (message_alt_length > message_og_length)
                    current_char = string_char_at(message_draw_alt, characters);
            }
            
            script_execute(talk_script[message_current]);
        }
        else
        {
            can_talk = false;
        }
    }
    else
    {
        can_talk = false;
        
        if (key_select_pressed)
        {
            if (message_current < message_end)
            {
                message_current += 1;
                message_length = string_length(message[message_current]);
                characters = 0;
                message_draw = "";
                
                if (shop_name == "Hotel Shop")
                {
                    var message_alt_length = string_length(message_alt[message_current]);
                    
                    if (message_alt_length > message_length)
                        message_length = message_alt_length;
                    
                    message_draw_alt = "";
                }
            }
            else
            {
                instance_create(0, 120, obj_main_screen_shop);
                instance_create(obj_main_screen_shop.x + 210, obj_main_screen_shop.y, obj_item_description_screen_shop);
                instance_create(0, 0, obj_dialogue_buy_talk_shop);
                instance_create(0, 0, obj_text_item_talk_shop);
                instance_create(obj_main_screen_shop.x + 19, obj_main_screen_shop.y + 19, obj_heart_buy_screen_shop);
                
                with (obj_talk_screen_shop)
                    instance_destroy();
                
                instance_destroy();
                
                if (autoskip == true)
                {
                    with (obj_heart_buy_screen_shop)
                    {
                        event_user(2);
                        event_user(0);
                    }
                }
                
                exit;
            }
        }
    }
    
    script_execute(scr_text_counter);
}
