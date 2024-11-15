cood_x = irandom_range(-10, room_width + 10);
current_delay++;

if (current_delay == generation_speed)
{
    current_delay = 0;
    instance_create_depth(cood_x, cood_y, choose(999, 999, 0), spawned_object);
}
