if (global.sworks_flag[12] >= 1)
{
    instance_destroy();
    exit;
}

scene = 0;
cutscene_timer = 0;
event_music = 0;
axis_is_running = false;
npc_axis_run_speed = 5.5;
instance_create_depth(1840, 130, 0, obj_axis_npc);
