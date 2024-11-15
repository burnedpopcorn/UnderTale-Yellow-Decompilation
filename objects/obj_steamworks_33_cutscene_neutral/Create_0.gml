var pacifist_cutscene;

scene = 0;
cutscene_timer = 0;

if (global.route == 2)
{
    pacifist_cutscene = instance_create(x, y, obj_steamworks_33_cutscene_pacifist);
    pacifist_cutscene.image_xscale = image_xscale;
    pacifist_cutscene.image_yscale = image_yscale;
    instance_destroy();
    exit;
}

if (global.geno_complete[3] == true)
{
    obj_steamworks_33_bridge.x = 0;
    
    if (global.sworks_flag[28] == false)
        ds_list_clear(global.encounter_list);
    
    global.sworks_flag[28] = true;
    instance_destroy(105663);
    exit;
}

if (global.sworks_flag[28] >= 1)
{
    obj_steamworks_33_bridge.x = 0;
    instance_destroy(105663);
    exit;
}
