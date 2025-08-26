function tile_layer_find(arg0, arg1, arg2)
{
    var __depth = arg0;
    var __x = arg1;
    var __y = arg2;
    var __layers = layer_get_all();
    var __numlayers = array_length_1d(__layers);
    
    for (var __i = 0; __i < __numlayers; __i++)
    {
        if (layer_get_depth(__layers[__i]) != __depth)
            continue;
        
        var __els = layer_get_all_elements(__layers[__i]);
        var __numels = array_length_1d(__els);
        
        for (var __j = 0; __j < __numels; __j++)
        {
            var __eltype = layer_get_element_type(__els[__j]);
            
            if (__eltype == 7)
            {
                var __tileXscale = layer_tile_get_xscale(__els[__j]);
                var __tileYscale = layer_tile_get_yscale(__els[__j]);
                
                if (__tileXscale >= 0 && __tileYscale >= 0)
                {
                    var __tileX = layer_tile_get_x(__els[__j]);
                    
                    if (__x < __tileX)
                        continue;
                    
                    var __tileY = layer_tile_get_y(__els[__j]);
                    
                    if (__y < __tileY)
                        continue;
                    
                    var __tileReg = layer_tile_get_region(__els[__j]);
                    var __tileRight = __tileX + (__tileXscale * __tileReg[2]);
                    
                    if (__x >= __tileRight)
                        continue;
                    
                    var __tileBottom = __tileY + (__tileYscale * __tileReg[3]);
                    
                    if (__y >= __tileBottom)
                        continue;
                    
                    return __els[__j];
                }
                else
                {
                    var __tileReg = layer_tile_get_region(__els[__j]);
                    var __minx = layer_tile_get_x(__els[__j]);
                    var __maxx = __minx + (__tileXscale * __tileReg[2]);
                    
                    if (__minx > __maxx)
                    {
                        var __temp = __minx;
                        __minx = __maxx;
                        __maxx = __temp;
                    }
                    
                    if (__x < __minx)
                    {
                    }
                    else if (__x >= __maxx)
                    {
                    }
                    else
                    {
                        var __miny = layer_tile_get_y(__els[__j]);
                        var __maxy = __miny + (__tileYscale * __tileReg[3]);
                        
                        if (__miny > __maxy)
                        {
                            var __temp = __miny;
                            __miny = __maxy;
                            __maxy = __temp;
                        }
                        
                        if (__y < __miny)
                        {
                        }
                        else if (__y >= __maxy)
                        {
                        }
                        else
                        {
                            return __els[__j];
                        }
                    }
                }
            }
        }
    }
    
    return -1;
}
