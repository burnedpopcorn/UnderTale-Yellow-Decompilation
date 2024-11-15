function tile_get_depth(argument0)
{
    var __index, __layerid;
    
    __index = argument0;
    __layerid = layer_get_element_layer(__index);
    return layer_get_depth(__layerid);
}
