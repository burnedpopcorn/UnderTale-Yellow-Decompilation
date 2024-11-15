if (sprite_index == spr_floweyrise)
{
    sprite_index = spr_flowey;
    image_speed = 0;
    image_index = 0;
    waiter++;
}

if (sprite_index == spr_floweyleave)
{
    instance_create(144, 188, obj_dalvExit_blocker);
    waiter++;
    image_alpha = 0;
}
