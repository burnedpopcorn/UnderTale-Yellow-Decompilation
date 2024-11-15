if (!instance_exists(obj_decibat_body) && !instance_exists(obj_decibat_body_intro))
{
    instance_destroy();
    exit;
}

if (instance_exists(obj_decibat_body))
{
    y = obj_decibat_body.y;
    image_angle = obj_decibat_body.image_angle;
}
else if (instance_exists(obj_decibat_body_intro))
{
    y = obj_decibat_body_intro.y;
    image_alpha = obj_decibat_body_intro.image_alpha;
    image_angle = obj_decibat_body_intro.image_angle;
}

if (instance_exists(obj_battle_fade_in_screen))
    depth = obj_battle_fade_in_screen.depth - 2;
else
    depth = 1;
