if (live_call())
    return global.live_result;

event_inherited();

if (spawner != -4)
{
    if (!instance_exists(spawner))
    {
        instance_destroy();
    }
    else
    {
        x = spawner.x;
        y = spawner.y;
        image_index = spawner.image_index;
        sprite_index = spawner.sprite_index;
        image_xscale = spawner.image_xscale;
        image_yscale = spawner.image_yscale;
        mask_index = spawner.mask_index;
    }
}
