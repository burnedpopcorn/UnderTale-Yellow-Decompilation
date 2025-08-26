scene = -12;
cutscene_timer = 0;
est_timer = 108000;

if (global.sworks_flag[28] == 1)
    scene = 0;

if (global.sworks_flag[28] >= 2)
{
    obj_steamworks_33_bridge.x = 0;
    instance_destroy(105664);
    exit;
}
