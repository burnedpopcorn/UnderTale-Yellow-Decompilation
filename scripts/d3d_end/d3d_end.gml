function d3d_end()
{
    var ret;
    
    ret = global.__d3d;
    global.__d3d = false;
    gpu_set_ztestenable(false);
    gpu_set_zwriteenable(false);
    return ret;
}
