function __background_set_element(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9, argument10, argument11, argument12, argument13, argument14)
{
    var __bind, __vis, __fore, __back, __x, __y, __htiled, __vtiled, __xscale, __yscale, __stretch, __hspeed, __vspeed, __blend, __alpha, __nearestdepth, __farthestdepth, __depthinc, __fgstring, __bgstring, __colstring, __fglen, __bglen, __layerlist, __layerlistlength, __collayer, __i, __layername, __slotchr, __slot, __currdepth, __depth, __layerdepth, __layerid, __backel, __result;
    
    __bind = argument0;
    __vis = argument1;
    __fore = argument2;
    __back = argument3;
    __x = argument4;
    __y = argument5;
    __htiled = argument6;
    __vtiled = argument7;
    __xscale = argument8;
    __yscale = argument9;
    __stretch = argument10;
    __hspeed = argument11;
    __vspeed = argument12;
    __blend = argument13;
    __alpha = argument14;
    __nearestdepth = 1000000000;
    __farthestdepth = -1000000000;
    __depthinc = 100;
    __result[0] = -1;
    __result[1] = -1;
    __fgstring = "Compatibility_Foreground_";
    __bgstring = "Compatibility_Background_";
    __colstring = "Compatibility_Colour";
    __fglen = string_length(__fgstring);
    __bglen = string_length(__bgstring);
    __layerlist = layer_get_all();
    __layerlistlength = array_length_1d(__layerlist);
    __collayer = -1;
    
    for (__i = 0; __i < 8; __i++)
    {
        __slots[__i] = -1;
        __isforeground[__i] = false;
    }
    
    for (__i = 0; __i < __layerlistlength; __i++)
    {
        __layername = layer_get_name(__layerlist[__i]);
        
        if (string_pos(__fgstring, __layername) > 0)
        {
            __slotchr = string_char_at(__layername, __fglen + 1);
            
            if (__slotchr == "")
                continue;
            
            __slot = real(__slotchr);
            __slots[__slot] = __layerlist[__i];
            __isforeground[__slot] = true;
        }
        else if (string_pos(__bgstring, __layername) > 0)
        {
            __slotchr = string_char_at(__layername, __bglen + 1);
            
            if (__slotchr == "")
                continue;
            
            __slot = real(__slotchr);
            __slots[__slot] = __layerlist[__i];
            __isforeground[__slot] = false;
        }
        else if (string_pos(__colstring, __layername) > 0)
        {
            __collayer = __layerlist[__i];
            layer_depth(__layerlist[__i], __farthestdepth);
        }
        else
        {
            __currdepth = layer_get_depth(__layerlist[__i]);
            
            if (__currdepth < __nearestdepth)
                __nearestdepth = __currdepth;
            
            if (__currdepth > __farthestdepth)
                __farthestdepth = __currdepth;
        }
    }
    
    __farthestdepth += (__depthinc + 1000);
    __nearestdepth -= __depthinc;
    __farthestdepth = max(__farthestdepth, 2147483600);
    __nearestdepth = min(__nearestdepth, -2147482000);
    
    for (__i = 0; __i < 8; __i++)
    {
        if (__slots[__i] != -1)
        {
            __depth = 0;
            
            if (__isforeground[__i] == true)
                __depth = __nearestdepth - (__i * __depthinc);
            else
                __depth = __farthestdepth - __depthinc - (__slot * __depthinc);
            
            layer_depth(__slots[__i], __depth);
        }
    }
    
    if (__collayer != -1)
        layer_depth(__collayer, __farthestdepth);
    
    if (__bind == -1)
    {
        __layername = __colstring;
        __layerdepth = __farthestdepth;
    }
    else if (__fore == true)
    {
        __layername = __fgstring + string(__bind);
        __layerdepth = __nearestdepth - (__bind * __depthinc);
    }
    else
    {
        __layername = __bgstring + string(__bind);
        __layerdepth = __farthestdepth - __depthinc - (__bind * __depthinc);
    }
    
    if (__bind == -1)
        __layerid = __collayer;
    else
        __layerid = __slots[__bind];
    
    if (__layerid != -1)
        layer_destroy(__layerid);
    
    __layerid = layer_create(__layerdepth, __layername);
    layer_x(__layerid, __x);
    layer_y(__layerid, __y);
    layer_hspeed(__layerid, __hspeed);
    layer_vspeed(__layerid, __vspeed);
    __backel = layer_background_create(__layerid, __back);
    layer_background_visible(__backel, __vis);
    layer_background_htiled(__backel, __htiled);
    layer_background_vtiled(__backel, __vtiled);
    layer_background_xscale(__backel, __xscale);
    layer_background_yscale(__backel, __yscale);
    layer_background_stretch(__backel, __stretch);
    layer_background_blend(__backel, __blend);
    layer_background_alpha(__backel, __alpha);
    __result[0] = __backel;
    __result[1] = __layerid;
    return __result;
}
