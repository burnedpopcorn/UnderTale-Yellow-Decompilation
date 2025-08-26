function tile_get_height(arg0)
{
    var __index = arg0;
    var __reg = layer_tile_get_region(__index);
    
    if (array_length_1d(__reg) == 0)
        return 0;
    
    return __reg[3];
}
