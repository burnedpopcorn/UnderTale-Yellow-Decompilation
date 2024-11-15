instance_create_depth(camera_get_view_x(view_camera[0]) + 160, camera_get_view_y(view_camera[0]) + 80, obj_flowey_world_controller.depth - 1, obj_heart_flowey_world_split);

with (obj_flowey_world_stalagmites)
    instance_destroy();

obj_pl.image_alpha = 1;
instance_destroy(obj_flowey_world_clover_dead);
