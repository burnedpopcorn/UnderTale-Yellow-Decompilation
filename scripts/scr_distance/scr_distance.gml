function scr_distance(argument0, argument1)
{
    var dx, dy;
    
    dx = argument1[0] - argument0[0];
    dy = argument1[1] - argument0[1];
    return sqrt((dx * dx) + (dy * dy));
}
