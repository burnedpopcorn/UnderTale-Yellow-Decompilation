function tile_layer_shift(argument0, argument1, argument2)
{
    var __depth, __x, __y, __layers, __numlayers, __i, __els, __numels, __j, __eltype;
    
    __depth = argument0;
    __x = argument1;
    __y = argument2;
    __layers = layer_get_all();
    __numlayers = array_length_1d(__layers);
    
    for (__i = 0; __i < __numlayers; __i++)
    {
        if (layer_get_depth(__layers[__i]) != __depth)
            continue;
        
        __els = layer_get_all_elements(__layers[__i]);
        __numels = array_length_1d(__els);
        
        for (__j = 0; __j < __numels; __j++)
        {
            __eltype = layer_get_element_type(__els[__j]);
            
            if (__eltype == 7)
            {
                layer_tile_x(__els[__j], layer_tile_get_x(__els[__j]) + __x);
                layer_tile_y(__els[__j], layer_tile_get_y(__els[__j]) + __y);
            }
        }
    }
}
