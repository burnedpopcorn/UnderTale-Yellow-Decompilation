if (global.dunes_flag[16] >= 1)
    instance_destroy();

if ((global.route == 1 && global.snowdin_flag[13] == 2) && global.geno_complete[2] == false)
{
    instance_destroy();
    instance_create(0, 0, obj_dunes_29b_controller_neutral);
}
else if (global.snowdin_flag[13] == 3 && global.snowdin_flag[21] == 1 && global.geno_complete[3] == true)
{
    instance_destroy();
    instance_create(0, 0, obj_dunes_29b_controller_geno);
}
else if ((global.snowdin_flag[13] == 3 && global.snowdin_flag[21] == 0) || (global.geno_complete[2] == true && (global.geno_complete[3] == false || global.route == 1)))
{
    instance_destroy();
    instance_create(0, 0, obj_dunes_29b_controller_neutral_geno);
}

scene = 0;
