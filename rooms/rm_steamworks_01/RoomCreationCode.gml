var shadow;

shadow = instance_create(0, 0, obj_shadow_master);
instance_create(0, 0, obj_steamworks_footsteps);
instance_create(0, 0, obj_steamworks_metal_sounds);
instance_create(0, 0, obj_vignette);

with (shadow)
    reverse = true;
