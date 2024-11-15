if (!instance_exists(obj_bowll_body_a))
{
    instance_destroy();
    exit;
}

if (obj_bowll_body_a.animating == true)
{
    if (sprite_index == spr_bowll_tail_normal && image_speed == 0)
    {
        image_speed = image_speed_tail;
        image_index = 0;
    }
    else if (sprite_index != spr_bowll_tail_normal)
    {
        image_speed = 0;
        image_index = 0;
    }
}
else
{
    image_speed = 0;
    image_index = 0;
}

with (obj_bowll_tail_shadow_a)
    event_user(0);
