function tile_set_depth(argument0, argument1)
{
    var __index, __depth, __layerid, __currdepth, __layers, __numlayers, __layertouse, __i;
    
    __index = argument0;
    __depth = argument1;
    __layerid = layer_get_element_layer(__index);
    
    if (__layerid == -1)
        return -1;
    
    __currdepth = layer_get_depth(__layerid);
    
    if (__currdepth == __depth)
        return -1;
    
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
    
    layer_element_move(__index, __layertouse);
    return layer_get_depth(__layerid);
}
