if (variant == 0)
    sprite_index = spr_ztest;

if (variant == 1)
    sprite_index = spr_xtest;

if (variant == 2)
    sprite_index = spr_ctest;

if (variant == 0)
{
    if (keyboard_multicheck(0))
        image_index = 1;
    else
        image_index = 0;
}

if (variant == 1)
{
    if (keyboard_multicheck(1))
        image_index = 1;
    else
        image_index = 0;
}

if (variant == 2)
{
    if (keyboard_multicheck(2))
        image_index = 1;
    else
        image_index = 0;
}

if (obj_cconfig.control_test == true)
    image_alpha = 1;
else
    image_alpha = 0;
