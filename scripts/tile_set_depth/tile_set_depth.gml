function tile_set_depth(arg0, arg1)
{
    var __index = arg0;
    var __depth = arg1;
    var __layerid = layer_get_element_layer(__index);
    
    if (__layerid == -1)
        return -1;
    
    var __currdepth = layer_get_depth(__layerid);
    
    if (__currdepth == __depth)
        return -1;
    
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
    
    layer_element_move(__index, __layertouse);
    return layer_get_depth(__layerid);
}
