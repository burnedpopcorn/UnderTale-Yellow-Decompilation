if (index < max_index)
{
    with (instance_create_depth((room_width / 2) - (room_width / (index + 1)), (room_height / 2) - (room_height / (index + 1)), -index, obj_barrier))
        y -= (2000 / index);
}
