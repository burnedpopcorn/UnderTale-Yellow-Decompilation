if (ds_map_find_value(event_data, "event_type") == "sprite event")
{
    switch (ds_map_find_value(event_data, "message"))
    {
        case "trapdoor_spawn_particles":
            instance_create_depth(x + 24, y + 17, depth - 1, obj_mansion_trapdoor_particles);
            break;
    }
}
