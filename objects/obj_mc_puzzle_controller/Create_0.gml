puzzle_count = 0;
puzzle_finished = false;
timer[0] = -1;
timer[1] = -1;

if (global.route == 3)
    global.dunes_flag[6] = 1;

if (global.dunes_flag[6] >= 1)
{
    instance_destroy(obj_mc_cart);
    obj_mc_path_blocker.image_index = 1;
}
