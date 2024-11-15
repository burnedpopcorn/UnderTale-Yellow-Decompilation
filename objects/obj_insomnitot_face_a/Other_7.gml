if (blink_state == "blinking")
{
    obj_insomnitot_body_a.awake_counter += 1;
    
    if (obj_insomnitot_body_a.awake_counter >= obj_insomnitot_body_a.awake_max)
    {
        image_speed = 0;
        image_index = 0;
    }
}
