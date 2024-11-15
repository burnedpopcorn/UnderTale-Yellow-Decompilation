depth = -y;
kiosk_hsp = 0;
slide = 0;
image_speed = 0.2;

if (global.snowdin_flag[5] == 1)
{
    x = 160;
    slide = 3;
}

if (global.snowdin_flag[5] == 2 || global.geno_complete[2] || global.dunes_flag[0] > 0)
    instance_destroy();
