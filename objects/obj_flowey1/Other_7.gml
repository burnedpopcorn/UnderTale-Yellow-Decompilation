if (sprite_index == spr_floweyrise)
{
    sprite_index = spr_flowey;
    image_speed = 0;
    waiter = 1;
}

if (sprite_index == spr_floweyleave && global.flag[24] != 3)
{
    instance_destroy();
    instance_create(x, y, obj_determinationcutscene);
}

if (sprite_index == spr_floweyleave && global.flag[24] == 3)
{
    instance_destroy();
    instance_create(x, y, obj_determination);
}
