var i, item;

for (i = 0; i < global.sworks_robot_count; i++)
{
    item = instance_create_depth(x + global.sworks_robot_x[i], y + global.sworks_robot_y[i], global.sworks_robot_depth[i], obj_robot_build_finished_robot_item);
    item.sprite_index = global.sworks_robot_sprite[i];
    item.image_angle = global.sworks_robot_angle[i];
    item.image_xscale = global.sworks_robot_scale[i];
    item.image_yscale = global.sworks_robot_scale[i];
}
