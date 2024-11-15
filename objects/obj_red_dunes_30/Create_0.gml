event_inherited();
scene = 0;

if (global.geno_complete[3] == true && global.route == 3)
{
    instance_destroy();
    exit;
}

if (global.dunes_flag[41] >= 1)
{
    instance_destroy();
    exit;
}
