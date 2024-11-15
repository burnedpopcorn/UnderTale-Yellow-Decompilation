mask_image_index += mask_image_speed;

if (mask_image_index >= (sprite_get_number(spr_mask_clock_transition) - 1))
{
    surface_free(surface_room_original);
    instance_destroy();
}
