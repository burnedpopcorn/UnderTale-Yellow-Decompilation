function tile_get_width(argument0)
{
    var __index, __reg;
    
    __index = argument0;
    __reg = layer_tile_get_region(__index);
    
    if (array_length_1d(__reg) == 0)
        return 0;
    
    return __reg[2];
}
