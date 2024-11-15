if (obj_insomnitot_body_b.animating == true)
{
    x = obj_insomnitot_body_b.x + x_offset;
    y = obj_insomnitot_body_b.face_displacement_y;
}
else
{
    x = starting_point_x;
    y = starting_point_y;
}

if (obj_insomnitot_body_b.state != "awake" || sleep == false)
{
    blink_state = "nothing";
    
    if (sprite_index == spr_insomnitot_face_blinking)
    {
        sprite_index = spr_insomnitot_face;
        image_index = 0;
    }
    else if (sprite_index == spr_insomnitot_face_critical_blinking)
    {
        sprite_index = spr_insomnitot_face_critical;
        image_index = 0;
    }
}

if (sleep == false)
{
    image_speed = 0;
    image_index = 0;
}
else if (obj_insomnitot_body_b.state == "asleep")
{
    image_speed = 0;
    image_index = 4;
}
else if (obj_insomnitot_body_b.state == "waking")
{
    image_speed = 0;
    image_index = 4 - ceil((obj_insomnitot_body_b.time_elapsed / (obj_insomnitot_body_b.time_max / 2)) * 4);
}
else if (obj_insomnitot_body_b.state == "awake")
{
    if (blink_state == "nothing")
    {
        image_speed = 0.5;
        blink_state = "blinking";
        
        if (sprite_index == spr_insomnitot_face)
        {
            sprite_index = spr_insomnitot_face_blinking;
            image_index = 0;
        }
        else if (sprite_index == spr_insomnitot_face_critical)
        {
            sprite_index = spr_insomnitot_face_critical_blinking;
            image_index = 0;
        }
    }
}
else if (obj_insomnitot_body_b.state == "sleep")
{
    image_speed = 0;
    image_index = ceil(((obj_insomnitot_body_b.time_elapsed - (obj_insomnitot_body_b.time_max / 2)) / (obj_insomnitot_body_b.time_max / 2)) * 4);
}
