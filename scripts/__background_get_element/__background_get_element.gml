function __background_get_element(argument0)
{
    var __bind, __fgstring, __bgstring, __fglen, __bglen, __layerlist, __layerlistlength, __layerid, __isforeground, __i, __layername, __slotchr, __slot, __els, __elslength, __newback, __result;
    
    __bind = argument0;
    __result[0] = -1;
    __result[1] = -1;
    __result[2] = -1;
    __fgstring = "Compatibility_Foreground_";
    __bgstring = "Compatibility_Background_";
    __fglen = string_length(__fgstring);
    __bglen = string_length(__bgstring);
    __layerlist = layer_get_all();
    __layerlistlength = array_length_1d(__layerlist);
    __layerid = -1;
    __isforeground = false;
    
    for (__i = 0; __i < __layerlistlength; __i++)
    {
        __layername = layer_get_name(__layerlist[__i]);
        
        if (string_pos(__fgstring, __layername) > 0)
        {
            __slotchr = string_char_at(__layername, __fglen + 1);
            
            if (__slotchr == "")
                continue;
            
            __slot = real(__slotchr);
            
            if (__slot == __bind)
            {
                __layerid = __layerlist[__i];
                __isforeground = true;
                break;
            }
        }
        else if (string_pos(__bgstring, __layername) > 0)
        {
            __slotchr = string_char_at(__layername, __bglen + 1);
            
            if (__slotchr == "")
            {
            }
            else
            {
                __slot = real(__slotchr);
                
                if (__slot == __bind)
                {
                    __layerid = __layerlist[__i];
                    __isforeground = false;
                    break;
                }
            }
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
                __result[2] = __isforeground;
            }
        }
    }
    else
    {
        __newback = __background_set_element(__bind, false, false, -1, 0, 0, true, true, 1, 1, false, 0, 0, c_white, 1);
        __result[0] = __newback[0];
        __result[1] = __newback[1];
        __result[2] = false;
    }
    
    return __result;
}
