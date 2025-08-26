function tile_layer_depth(arg0, arg1)
{
    var __depth = arg0;
    var __newdepth = arg1;
    var __layers = layer_get_all();
    var __numlayers = array_length_1d(__layers);
    var __layerstomove;
    __layerstomove[0] = -1;
    var __numlayerstomove = 0;
    var __layertouse = -1;
    
    for (var __i = 0; __i < __numlayers; __i++)
    {
        var __layerdepth = layer_get_depth(__layers[__i]);
        
        if (__layerdepth == __depth)
        {
            __layerstomove[__numlayerstomove] = __layers[__i];
            __numlayerstomove++;
        }
        else if (layer_get_depth(__layers[__i]) == __newdepth)
        {
            __layertouse = __layers[__i];
            break;
        }
    }
    
    if (__layertouse == -1)
        __layertouse = layer_create(__newdepth);
    
    for (var __i = 0; __i < __numlayerstomove; __i++)
    {
        var __els = layer_get_all_elements(__layerstomove[__i]);
        var __numels = array_length_1d(__els);
        
        for (var __j = 0; __j < __numels; __j++)
        {
            if (layer_get_element_type(__els[__j]) == 7)
                layer_element_move(__els[__j], __layertouse);
        }
    }
}
