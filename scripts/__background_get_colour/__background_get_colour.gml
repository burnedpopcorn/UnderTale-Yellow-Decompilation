function __background_get_colour()
{
    var __colinfo, __col;
    
    __colinfo = __background_get_colour_element();
    
    if (__colinfo[0] == -1)
        return 0;
    
    __col = layer_background_get_blend(__colinfo[0]);
    return __col;
}
