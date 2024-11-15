if (live_call())
    return global.live_result;

image_xscale -= image_dec;
image_yscale -= image_dec;
image_dec += 0.05;
image_alpha = 5 - (image_xscale / 4);

if (image_xscale <= 1)
{
    obj_newhome_03_cutscene_clover_soul.flash_alpha = 1;
    instance_destroy();
}
