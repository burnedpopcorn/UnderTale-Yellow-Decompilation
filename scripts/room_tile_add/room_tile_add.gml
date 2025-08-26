function room_tile_add(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
{
    var __ind = arg0;
    var __back = arg1;
    var __left = arg2;
    var __top = arg3;
    var __width = arg4;
    var __height = arg5;
    var __x = arg6;
    var __y = arg7;
    var __depth = arg8;
    
    if (room_exists(__ind) == false)
        return -1;
    
    var __currroom = layer_get_target_room();
    layer_set_target_room(__ind);
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
    layer_set_target_room(__currroom);
    return __tile;
}
