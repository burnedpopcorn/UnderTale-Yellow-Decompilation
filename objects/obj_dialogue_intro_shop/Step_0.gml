if (action[message_current] != "Override")
{
    script_execute(scr_controls_text);
    
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
        
        if (key_select_pressed && skippable == true)
            message_advance = true;
        
        if (message_advance == true)
        {
            if (message_current < message_end)
            {
                message_current += 1;
                message_length = string_length(message[message_current]);
                characters = 0;
                message_draw = "";
                message_advance = false;
            }
            else
            {
                global.sworks_flag[16] = 1;
                instance_create(0, 120, obj_main_screen_shop);
                instance_create(obj_main_screen_shop.x + 210, obj_main_screen_shop.y, obj_item_description_screen_shop);
                
                if (global.route != 3)
                {
                    instance_create(obj_main_screen_shop.x + 240, obj_main_screen_shop.y + 10, obj_text_main_screen_shop);
                    instance_create(obj_main_screen_shop.x + 229, obj_main_screen_shop.y + 19, obj_heart_main_screen_shop);
                    instance_create(obj_main_screen_shop.x + 20, obj_main_screen_shop.y + 10, obj_dialogue_main_screen_shop);
                }
                else
                {
                    instance_create(obj_main_screen_shop.x + 240, obj_main_screen_shop.y + 10, obj_text_main_screen_shop_geno);
                    instance_create(obj_main_screen_shop.x + 229, obj_main_screen_shop.y + 19, obj_heart_main_screen_shop_geno);
                    instance_create(obj_main_screen_shop.x + 20, obj_main_screen_shop.y + 10, obj_dialogue_main_screen_shop_geno);
                }
                
                with (obj_talk_screen_shop)
                    instance_destroy();
                
                instance_destroy();
                exit;
            }
        }
    }
    
    script_execute(scr_text_counter);
}
