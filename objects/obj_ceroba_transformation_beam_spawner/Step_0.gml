var beam;

if (instance_exists(obj_ceroba_transformation_mask))
{
    x = obj_ceroba_transformation_mask.x;
    y = obj_ceroba_transformation_mask.y - 10;
}

spawn_timer--;

if (spawn_timer <= 0)
{
    beam = instance_create_depth(x, y, depth, obj_ceroba_transformation_beam);
    
    with (beam)
    {
        do
            direction = irandom_range(0, 360);
        until (angle_difference(direction, other.spawn_dir_last) > other.spawn_dir_offset);
    }
    
    spawn_dir_last = beam.direction;
    spawn_timer = spawn_timer_max;
}
