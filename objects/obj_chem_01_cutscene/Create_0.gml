scene = 0;
cutscene_timer = 0;

if (global.geno_complete[3])
{
    instance_create(x, y, obj_chem_01_cutscene_geno);
    instance_destroy();
    exit;
}

if (global.sworks_flag[26] >= 1)
    instance_destroy();

if (global.sworks_flag[26] >= 2)
{
    instance_destroy(105301);
    instance_destroy(105300);
    layer_set_visible("door_visible", false);
}
