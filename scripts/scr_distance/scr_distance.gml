function scr_distance(arg0, arg1)
{
    var dx = arg1[0] - arg0[0];
    var dy = arg1[1] - arg0[1];
    return sqrt((dx * dx) + (dy * dy));
}
