function room_tile_add_ext(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9, argument10, argument11)
{
    var __ind, __back, __left, __top, __width, __height, __x, __y, __depth, __xscale, __yscale, __alpha, __currroom, __layers, __numlayers, __layertouse, __i, __tile;
    
    __ind = argument0;
    __back = argument1;
    __left = argument2;
    __top = argument3;
    __width = argument4;
    __height = argument5;
    __x = argument6;
    __y = argument7;
    __depth = argument8;
    __xscale = argument9;
    __yscale = argument10;
    __alpha = argument11;
    
    if (room_exists(__ind) == false)
        return -1;
    
    __currroom = layer_get_target_room();
    layer_set_target_room(__ind);
    __layers = layer_get_all();
    __numlayers = array_length_1d(__layers);
    __layertouse = -1;
    
    for (__i = 0; __i < __numlayers; __i++)
    {
        if (layer_get_depth(__layers[__i]) == __depth)
        {
            __layertouse = __layers[__i];
            break;
        }
    }
    
    if (__layertouse == -1)
        __layertouse = layer_create(__depth);
    
    __tile = layer_tile_create(__layertouse, __x, __y, __back, __left, __top, __width, __height);
    layer_tile_xscale(__tile, __xscale);
    layer_tile_yscale(__tile, __yscale);
    layer_tile_alpha(__tile, __alpha);
    layer_set_target_room(__currroom);
    return __tile;
}
