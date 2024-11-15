if (live_call())
    return global.live_result;

if (instance_exists(obj_dialogue_flowey_ending))
{
    if (is_talking == true)
    {
        if (obj_dialogue_flowey_ending.cutoff == string_length(obj_dialogue_flowey_ending.message[obj_dialogue_flowey_ending.message_current]))
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
    
    if (obj_dialogue_flowey_ending.prt[obj_dialogue_flowey_ending.message_current] != 0)
        sprite_index = obj_dialogue_flowey_ending.prt[obj_dialogue_flowey_ending.message_current];
    
    if (sprite_index == -4)
        sprite_index = spr_flowey_nice;
}
