var times_caught = global.sworks_flag[43];

if (global.geno_complete[3] == true)
{
    instance_destroy();
    instance_create(x, y, obj_steamworks_21_controller_geno);
    exit;
}

if (global.sworks_flag[12] >= 2)
{
    instance_destroy();
    exit;
}

scene = 0;
cutscene_timer = 0;
event_music = 0;
axis_is_running = false;
npc_axis_run_speed = clamp(5.6 - (times_caught * 0.15) - (global.using_gamepad * 0.1), 5, 5.6);
ceroba_is_running = false;
shadow_axis_image_alpha = 0;

if (global.sworks_flag[12] == 1 && global.route == 2)
{
    instance_create(270, 700, obj_ceroba_npc);
    obj_ceroba_npc.npc_direction = "up";
}

check_point_current = 2;
check_point_current_axis = 2;
checkpoint_x = path_get_point_x(pt_steamworks_21_axis_chase, check_point_current);
checkpoint_y = path_get_point_y(pt_steamworks_21_axis_chase, check_point_current);
checkpoint_x_axis = path_get_point_x(pt_steamworks_21_axis_chase, check_point_current_axis);
checkpoint_y_axis = path_get_point_y(pt_steamworks_21_axis_chase, check_point_current_axis);
