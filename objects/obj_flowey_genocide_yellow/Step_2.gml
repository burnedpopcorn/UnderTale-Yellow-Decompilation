if (sprite_index != spr_flowey_enter)
{
    if (instance_exists(obj_quote_battle_flowey_genocide_yellow) && instance_exists(obj_quote_bubble_battle))
    {
        if (sprite_index != obj_quote_battle_flowey_genocide_yellow.portrait[obj_quote_battle_flowey_genocide_yellow.message_current])
            sprite_index = obj_quote_battle_flowey_genocide_yellow.portrait[obj_quote_battle_flowey_genocide_yellow.message_current];
    }
    else
    {
        sprite_index = spr_flowey_nice;
    }
    
    if (instance_exists(obj_quote_battle_flowey_genocide_yellow) && instance_exists(obj_quote_bubble_battle))
    {
        if (obj_quote_battle_flowey_genocide_yellow.can_talk == true)
        {
            if (can_talk_no_loop == false)
            {
                image_index = 1;
                can_talk_no_loop = true;
            }
            
            image_speed = global.text_speed * global.talk_speed_flowey * obj_quote_battle_flowey_genocide_yellow.hold;
        }
        else
        {
            can_talk_no_loop = false;
            image_speed = 0;
            image_index = 0;
        }
    }
    else
    {
        can_talk_no_loop = false;
        image_speed = 0;
        image_index = 0;
    }
}
