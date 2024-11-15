var dialogue, i;

if (live_call())
    return global.live_result;

if (message_noloop == false && obj_pl.x > (x - activation_distance))
{
    dialogue = instance_create_depth(x - 40, y - 40, -9999, obj_dialogue_withered_floweys);
    
    with (dialogue)
    {
        for (i = 0; i < array_length(other.message); i++)
            message[i] = other.message[i];
    }
    
    message_noloop = true;
}
