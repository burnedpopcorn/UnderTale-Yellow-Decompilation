function room_tile_clear(arg0)
{
    var __ind = arg0;
    
    if (room_exists(__ind) == false)
        return -1;
    
    var __currroom = layer_get_target_room();
    layer_set_target_room(__ind);
    var __layers = layer_get_all();
    var __numlayers = array_length_1d(__layers);
    
    for (var __i = 0; __i < __numlayers; __i++)
    {
        var __els = layer_get_all_elements(__layers[__i]);
        var __numels = array_length_1d(__els);
        
        for (var __j = 0; __j < __numels; __j++)
        {
            var __eltype = layer_get_element_type(__els[__j]);
            
            if (__eltype == 7)
                layer_tile_destroy(__els[__j]);
        }
    }
    
    layer_set_target_room(__currroom);
}
