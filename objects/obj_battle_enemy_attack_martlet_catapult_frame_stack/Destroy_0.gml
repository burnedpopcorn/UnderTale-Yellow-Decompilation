for (i = 0; i < random_frames; i++)
{
    with (id_frame_middle[i])
        instance_destroy();
}

with (id_frame_center)
    instance_destroy();
