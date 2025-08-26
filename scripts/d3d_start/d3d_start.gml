function d3d_start()
{
    var ret = global.__d3d;
    global.__d3d = true;
    gpu_set_ztestenable(true);
    gpu_set_zwriteenable(true);
    return ret;
}
