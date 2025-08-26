if (scr_interact() && keyboard_multicheck_pressed(vk_nokey))
{
    is_talking = true;
    scr_text();
    
    with (msg)
    {
        var i = array_length_1d(other.self_message) - 1;
        
        while (i >= 0)
        {
            message[i] = other.self_message[i];
            i--;
        }
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
