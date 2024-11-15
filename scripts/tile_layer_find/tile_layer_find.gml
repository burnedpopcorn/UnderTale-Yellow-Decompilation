function tile_layer_find(argument0, argument1, argument2)
{
    var __depth, __x, __y, __layers, __numlayers, __i, __els, __numels, __j, __eltype, __tileXscale, __tileYscale, __tileX, __tileY, __tileReg, __tileRight, __tileBottom, __minx, __maxx, __temp, __miny, __maxy;
    
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
                __tileXscale = layer_tile_get_xscale(__els[__j]);
                __tileYscale = layer_tile_get_yscale(__els[__j]);
                
                if (__tileXscale >= 0 && __tileYscale >= 0)
                {
                    __tileX = layer_tile_get_x(__els[__j]);
                    
                    if (__x < __tileX)
                        continue;
                    
                    __tileY = layer_tile_get_y(__els[__j]);
                    
                    if (__y < __tileY)
                        continue;
                    
                    __tileReg = layer_tile_get_region(__els[__j]);
                    __tileRight = __tileX + (__tileXscale * __tileReg[2]);
                    
                    if (__x >= __tileRight)
                        continue;
                    
                    __tileBottom = __tileY + (__tileYscale * __tileReg[3]);
                    
                    if (__y >= __tileBottom)
                        continue;
                    
                    return __els[__j];
                }
                else
                {
                    __tileReg = layer_tile_get_region(__els[__j]);
                    __minx = layer_tile_get_x(__els[__j]);
                    __maxx = __minx + (__tileXscale * __tileReg[2]);
                    
                    if (__minx > __maxx)
                    {
                        __temp = __minx;
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
                        __miny = layer_tile_get_y(__els[__j]);
                        __maxy = __miny + (__tileYscale * __tileReg[3]);
                        
                        if (__miny > __maxy)
                        {
                            __temp = __miny;
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
