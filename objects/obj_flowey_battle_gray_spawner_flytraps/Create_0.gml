spawn_count = 4;
spawn_point_x = [40, 60, 190, 320, 450, 580, 600];
spawn_point_y = [300, 440, 440, 440, 440, 440, 300];
spawn_point_angle = [0, 90, 90, 90, 90, 90, 180];
coordinate_list = ds_list_create();

for (var i = 0; i < array_length(spawn_point_x); i++)
    ds_list_add(coordinate_list, i);

while (ds_list_size(coordinate_list) > spawn_count)
{
    ds_list_shuffle(coordinate_list);
    ds_list_delete(coordinate_list, 0);
}

for (var i = 0; i < ds_list_size(coordinate_list); i++)
{
    var cur_val = ds_list_find_value(coordinate_list, i);
    var warning = instance_create_depth(spawn_point_x[cur_val], spawn_point_y[cur_val], -100, obj_flowey_battle_gray_fly_trap_warning);
    
    if (i == 0)
        warning.can_play_sound = true;
    
    warning.direction = spawn_point_angle[cur_val];
    warning.image_angle = spawn_point_angle[cur_val];
}

ds_list_clear(coordinate_list);
instance_destroy();
