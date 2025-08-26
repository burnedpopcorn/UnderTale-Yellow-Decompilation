function tile_layer_delete_at(arg0, arg1, arg2)
{
    var __depth = arg0;
    var __x = arg1;
    var __y = arg2;
    var __tile_el = tile_layer_find(__depth, __x, __y);
    
    if (__tile_el != -1)
        layer_tile_destroy(__tile_el);
}
