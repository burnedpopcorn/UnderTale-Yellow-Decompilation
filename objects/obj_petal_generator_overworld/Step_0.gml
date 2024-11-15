var new_petal;

cood_x = irandom_range(-10, room_width + 10);
current_delay++;

if (current_delay == generation_speed)
{
    current_delay = 0;
    new_petal = instance_create_depth(cood_x, cood_y, -9999, spawned_object);
    new_petal.image_xscale *= 0.5;
    new_petal.image_yscale *= 0.5;
}
