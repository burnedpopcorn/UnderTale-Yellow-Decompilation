if (keyboard_multicheck_pressed(vk_nokey) && scr_interact())
{
    scr_text();
    is_talking = true;
    
    switch (global.dunes_flag[2])
    {
        case 0:
            with (msg)
            {
                portrait = false;
                sndfnt = sndfnt_default;
                message[0] = "* I can't standstorm this#  sandstorm.";
            }
            
            break;
        
        case 1:
            with (msg)
            {
                portrait = false;
                sndfnt = sndfnt_default;
                message[0] = "* I couldn't standstorm that#  sandstorm.";
            }
            
            break;
    }
}

if (instance_exists(obj_dialogue) && is_talking == true)
{
    if (obj_dialogue.cutoff == string_length(obj_dialogue.message[obj_dialogue.message_current]))
    {
        image_speed = 0;
        image_index = 0;
    }
    else
    {
        image_speed = 0.2;
    }
}
else
{
    image_speed = 0;
    is_talking = false;
}
