if (global.sworks_flag[3] > 0)
{
    tile_layer_hide(-1000);
    instance_destroy();
    instance_destroy(obj_axis_npc);
    exit;
}

scene = 0;
cutscene_timer = 0;
cutscene_music = 0;
axis_pitch = 1;
