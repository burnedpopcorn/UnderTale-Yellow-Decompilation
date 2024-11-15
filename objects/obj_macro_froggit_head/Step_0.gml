if (instance_exists(obj_macro_froggit_body) && obj_macro_froggit_body.sprite_index == spr_macro_froggit_body)
{
    image_alpha = obj_macro_froggit_body.image_alpha;
}
else
{
    image_alpha = 0;
    exit;
}
