function tile_add(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7)
{
    var __back, __left, __top, __width, __height, __x, __y, __depth, __layers, __numlayers, __layertouse, __i, __tile;
    
    __back = argument0;
    __left = argument1;
    __top = argument2;
    __width = argument3;
    __height = argument4;
    __x = argument5;
    __y = argument6;
    __depth = argument7;
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
    return __tile;
}
