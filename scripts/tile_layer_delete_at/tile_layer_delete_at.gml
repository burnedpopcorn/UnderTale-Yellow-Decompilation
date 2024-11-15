function tile_layer_delete_at(argument0, argument1, argument2)
{
    var __depth, __x, __y, __tile_el;
    
    __depth = argument0;
    __x = argument1;
    __y = argument2;
    __tile_el = tile_layer_find(__depth, __x, __y);
    
    if (__tile_el != -1)
        layer_tile_destroy(__tile_el);
}
