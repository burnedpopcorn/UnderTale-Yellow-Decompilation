x += (smoke_speed * smoke_direction);
smoke_alpha -= smoke_alpha_dec;

if (smoke_alpha <= 0)
    instance_destroy();
else
    image_alpha = stage_master.image_alpha * smoke_alpha;
