if (global.snowdin_flag[13] < 2)
    instance_destroy();

scene = 0;

if (global.snowdin_flag[14] >= 5 || global.dunes_flag[0] > 0)
{
    instance_destroy();
    exit;
}
