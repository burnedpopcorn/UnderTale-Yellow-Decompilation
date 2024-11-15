if (!instance_exists(id_bull))
{
    instance_destroy();
    exit;
}

image_xscale += image_xscale_inc;
image_yscale += image_yscale_inc;
imagea_normal -= 0.05;

if (imagea_normal <= 0)
{
    instance_destroy();
    exit;
}

image_alpha = imagea_normal * id_bull.image_alpha;
depth = depth_default - image_xscale;
