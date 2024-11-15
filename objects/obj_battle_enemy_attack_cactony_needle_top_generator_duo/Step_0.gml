if (bbox_top < (box.bbox_top + 5))
{
    for (y += y_speed; bbox_top > (box.bbox_top + 5); y -= 1)
    {
    }
    
    if (bbox_top == (box.bbox_top + 5))
    {
        in_box = true;
        alarm[0] = animate_alarm;
    }
}

if (animate_state == 1)
{
    image_xscale -= anim_in_speed;
    image_yscale -= anim_in_speed;
    
    if (image_xscale <= anim_min)
    {
        image_xscale = anim_min;
        image_yscale = anim_min;
        animate_state = 2;
    }
}
else if (animate_state == 2)
{
    image_xscale += anim_out_speed;
    image_yscale += anim_out_speed;
    
    if (image_xscale >= anim_max)
    {
        image_xscale = anim_max;
        image_yscale = anim_max;
        animate_state = 0;
        event_user(0);
    }
}
