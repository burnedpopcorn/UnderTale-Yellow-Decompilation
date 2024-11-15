scene = 0;
cutscene_timer = 0;
cutscene_music = 0;

if (global.sworks_flag[37] == 0.5)
    scene = 11;

if (global.sworks_flag[37] > 0.5 && global.sworks_flag[37] < 3)
{
    scene = 49;
    instance_create_depth(0, 0, -100, obj_factory_03_minigame);
    instance_create_depth(370, 760, 0, obj_axis_npc);
    instance_create_depth(370, 760, -room_height, obj_factory_03_axis_flashlight);
    obj_factory_03_axis_flashlight.active = 1;
}

if (global.sworks_flag[37] == 3)
{
    instance_destroy(obj_factory_03_numpad);
    instance_destroy();
    layer_set_visible("door_visible", true);
    exit;
}
