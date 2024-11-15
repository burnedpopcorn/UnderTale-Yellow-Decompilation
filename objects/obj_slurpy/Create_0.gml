if (global.snowdin_flag[3] == 2)
{
    instance_destroy();
    instance_create(x, y, obj_lamppost);
}

talk = 0;
waiter = 0;
timer = -1;
image_speed = 0;
slurpy_menu_open = false;
slurpy_solution = "none";
