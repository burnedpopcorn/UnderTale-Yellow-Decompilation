if (global.flag[23] == 1)
{
    instance_create(160, 145, obj_darkruins_01_rope);
    instance_destroy();
    exit;
}

if (global.flag[23] == 2)
    instance_destroy();

timer = 9000;
depth = -y;
