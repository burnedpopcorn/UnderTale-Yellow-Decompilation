function scr_portrait_counter()
{
    if (can_talk == true && characters < message_length && portrait[message_current] != -4)
    {
        if (can_talk_no_loop == false)
        {
            portrait_counter = 1;
            can_talk_no_loop = true;
        }
        
        if (portrait_counter >= 1)
        {
            portrait_counter -= 1;
            portrait_image_index += 1;
            
            if (portrait_image_index > portrait_image_index_max)
                portrait_image_index = 0;
        }
        
        portrait_counter += (portrait_image_speed * hold);
    }
    else
    {
        portrait_counter = 0;
        portrait_image_index = 0;
        can_talk_no_loop = false;
    }
}
