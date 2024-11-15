function tile_layer_depth(argument0, argument1)
{
    var __depth, __newdepth, __layers, __numlayers, __numlayerstomove, __layertouse, __i, __layerdepth, __els, __numels, __j;
    
    __depth = argument0;
    __newdepth = argument1;
    __layers = layer_get_all();
    __numlayers = array_length_1d(__layers);
    __layerstomove[0] = -1;
    __numlayerstomove = 0;
    __layertouse = -1;
    
    for (__i = 0; __i < __numlayers; __i++)
    {
        __layerdepth = layer_get_depth(__layers[__i]);
        
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
    
    for (__i = 0; __i < __numlayerstomove; __i++)
    {
        __els = layer_get_all_elements(__layerstomove[__i]);
        __numels = array_length_1d(__els);
        
        for (__j = 0; __j < __numels; __j++)
        {
            if (layer_get_element_type(__els[__j]) == 7)
                layer_element_move(__els[__j], __layertouse);
        }
    }
}
