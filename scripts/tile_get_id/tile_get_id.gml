function tile_get_id(arg0)
{
    var __index = arg0;
    var __currtile = 0;
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
            {
                if (__currtile == __index)
                    return __els[__j];
                
                __currtile++;
            }
        }
    }
    
    return -1;
}
