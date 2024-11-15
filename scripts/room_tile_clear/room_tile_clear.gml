function room_tile_clear(argument0)
{
    var __ind, __currroom, __layers, __numlayers, __i, __els, __numels, __j, __eltype;
    
    __ind = argument0;
    
    if (room_exists(__ind) == false)
        return -1;
    
    __currroom = layer_get_target_room();
    layer_set_target_room(__ind);
    __layers = layer_get_all();
    __numlayers = array_length_1d(__layers);
    
    for (__i = 0; __i < __numlayers; __i++)
    {
        __els = layer_get_all_elements(__layers[__i]);
        __numels = array_length_1d(__els);
        
        for (__j = 0; __j < __numels; __j++)
        {
            __eltype = layer_get_element_type(__els[__j]);
            
            if (__eltype == 7)
                layer_tile_destroy(__els[__j]);
        }
    }
    
    layer_set_target_room(__currroom);
}
