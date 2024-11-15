if (sprite_index == spr_steamworks_38_face_talking)
{
    if (instance_exists(obj_dialogue_special))
    {
        if (is_array(obj_dialogue_special.letter_array) && obj_dialogue_special.letter_current >= (array_length(obj_dialogue_special.letter_array) - 1))
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
    }
}
