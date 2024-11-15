if (!instance_exists(obj_insomnitot_body_a))
{
    instance_destroy();
    exit;
}
else if (obj_insomnitot_body_a.sprite_index != spr_insomnitot_body && obj_insomnitot_body_a.sprite_index != spr_insomnitot_body_critical)
{
    instance_destroy();
}
