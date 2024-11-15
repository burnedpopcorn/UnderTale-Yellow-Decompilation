if (sprite_index == spr_martlet_sit || sprite_index == spr_martlet_sit_book)
{
    if (instance_exists(obj_dialogue))
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
}
