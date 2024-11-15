function __background_get_colour_element()
{
    var __nearestdepth, __farthestdepth, __depthinc, __colstring, __layerlist, __layerlistlength, __layerid, __isforeground, __i, __layername, __els, __elslength, __newback, __result;
    
    __nearestdepth = -15000;
    __farthestdepth = 15999;
    __depthinc = 100;
    __result[0] = -1;
    __result[1] = -1;
    __colstring = "Compatibility_Colour";
    __layerlist = layer_get_all();
    __layerlistlength = array_length_1d(__layerlist);
    __layerid = -1;
    __isforeground = false;
    
    for (__i = 0; __i < __layerlistlength; __i++)
    {
        __layername = layer_get_name(__layerlist[__i]);
        
        if (string_pos(__colstring, __layername) > 0)
        {
            __layerid = __layerlist[__i];
            break;
        }
    }
    
    if (__layerid != -1)
    {
        __els = layer_get_all_elements(__layerid);
        __elslength = array_length_1d(__els);
        
        for (__i = 0; __i < __elslength; __i++)
        {
            if (layer_get_element_type(__els[__i]) == 1)
            {
                __result[0] = __els[__i];
                __result[1] = __layerid;
            }
        }
    }
    else
    {
        __newback = __background_set_element(-1, false, false, -1, 0, 0, true, true, 1, 1, true, 0, 0, 0, 1);
        __result[0] = __newback[0];
        __result[1] = __newback[1];
    }
    
    return __result;
}
