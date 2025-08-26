function __background_get_showcolour()
{
    var __colinfo = __background_get_colour_element();
    
    if (__colinfo[0] == -1)
        return 0;
    
    var __visible = layer_background_get_visible(__colinfo[0]);
    return __visible;
}
