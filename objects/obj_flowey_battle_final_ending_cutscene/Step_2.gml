if (instance_exists(obj_dialogue))
{
    if (obj_dialogue.cutoff < string_length(obj_dialogue.message[obj_dialogue.message_current]))
        is_talking = true;
    else
        is_talking = false;
    
    if (is_talking == true)
    {
        image_speed = 0.2;
    }
    else
    {
        image_speed = 0;
        image_index = 0;
    }
}
