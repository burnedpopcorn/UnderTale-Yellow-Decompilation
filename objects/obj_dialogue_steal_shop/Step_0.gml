var shop_name;

if (action[message_current] != "Override")
{
    script_execute(scr_controls_text);
    
    if (key_revert_pressed)
    {
        characters = message_length;
        message_draw = string_copy(message[message_current], 0, characters);
    }
    
    if (characters < message_length)
    {
        if (counter == 0)
        {
            script_execute(scr_text_increase);
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
            }
            else
            {
                shop_name = global.shop_name;
                
                if (shop_name == "Honeydew Resort Geno")
                {
                    if (global.snowdin_flag[19] == 0)
                        global.snowdin_flag[19] = 1;
                }
                
                if (shop_name == "Wild East Gunshop Geno")
                {
                    if (global.dunes_flag[37] == 0)
                        global.dunes_flag[37] = 1;
                }
                
                if (shop_name == "Wild East Saloon Geno")
                {
                    if (global.dunes_flag[38] == 0)
                        global.dunes_flag[38] = 1;
                }
                
                instance_create(0, 0, obj_dialogue_main_screen_shop_geno);
                instance_create(0, 0, obj_text_main_screen_shop_geno);
                instance_create(obj_main_screen_shop.x + 229, obj_main_screen_shop.y + 19, obj_heart_main_screen_shop_geno);
                
                with (obj_talk_screen_shop)
                    instance_destroy();
                
                instance_destroy();
                exit;
            }
        }
    }
    
    script_execute(scr_text_counter);
}
