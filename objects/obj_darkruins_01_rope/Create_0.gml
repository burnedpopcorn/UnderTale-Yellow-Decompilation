waiter = 0;
clover_y = 160;
clover_image_index = 0;
depth = -y;
flowey_x = irandom(640);
flowey_y = irandom(480);
image_index = 0;
image_speed = 0.2;

if (global.flag[23] == 1)
{
    image_index = image_number - 2;
    image_speed = 0;
}

global.flag[23] = 1;
