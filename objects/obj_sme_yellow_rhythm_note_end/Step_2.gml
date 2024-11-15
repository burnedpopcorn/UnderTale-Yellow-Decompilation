image_xscale += image_xscale_inc;
image_yscale += image_yscale_inc;
image_alpha_val -= image_alpha_dec;

if (image_alpha_val <= 0)
{
    instance_destroy();
    exit;
}

image_alpha = box.sc_dcurrent * image_alpha_val;
