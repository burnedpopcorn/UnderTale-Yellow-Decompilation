function scr_portrait_counter_idle()
{
    if (characters == message_length && portrait[message_current] != -4)
    {
        if (portrait_counter_idle >= 1)
        {
            portrait_counter_idle -= 1;
            portrait_image_index_idle += 1;
            
            if (portrait_image_index_idle > portrait_image_index_max_idle)
                portrait_image_index_idle = 0;
        }
        
        portrait_counter_idle += (portrait_image_speed_idle * hold);
    }
    else
    {
        portrait_counter_idle = 0;
        portrait_image_index_idle = 0;
    }
}
