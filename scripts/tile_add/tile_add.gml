function tile_add(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7)
{
    var __back = arg0;
    var __left = arg1;
    var __top = arg2;
    var __width = arg3;
    var __height = arg4;
    var __x = arg5;
    var __y = arg6;
    var __depth = arg7;
    var __layers = layer_get_all();
    var __numlayers = array_length_1d(__layers);
    var __layertouse = -1;
    
    for (var __i = 0; __i < __numlayers; __i++)
    {
        if (layer_get_depth(__layers[__i]) == __depth)
        {
            __layertouse = __layers[__i];
            break;
        }
    }
    
    if (__layertouse == -1)
        __layertouse = layer_create(__depth);
    
    var __tile = layer_tile_create(__layertouse, __x, __y, __back, __left, __top, __width, __height);
    return __tile;
}
