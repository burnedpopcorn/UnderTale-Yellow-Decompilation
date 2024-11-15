function __background_set_internal(argument0, argument1, argument2, argument3)
{
    var __prop, __bind, __val, __backinfo, __backid, __layerid, __isfore, __visible, __index, __htiled, __vtiled, __stretch, __blend, __alpha, __xscale, __yscale, __x, __y, __hspeed, __vspeed;
    
    __prop = argument0;
    __bind = argument1;
    __val = argument2;
    __backinfo = argument3;
    
    if (__backinfo[0] == -1)
        return -1;
    
    __backid = __backinfo[0];
    __layerid = __backinfo[1];
    __isfore = __backinfo[2];
    
    if (__prop == e__BG.Foreground)
    {
        if (round(__val) != round(__isfore))
        {
            __visible = layer_get_visible(__layerid);
            __index = layer_background_get_sprite(__backid);
            __htiled = layer_background_get_htiled(__backid);
            __vtiled = layer_background_get_vtiled(__backid);
            __stretch = layer_background_get_stretch(__backid);
            __blend = layer_background_get_blend(__backid);
            __alpha = layer_background_get_alpha(__backid);
            __xscale = layer_background_get_xscale(__backid);
            __yscale = layer_background_get_yscale(__backid);
            __x = layer_get_x(__layerid);
            __y = layer_get_y(__layerid);
            __hspeed = layer_get_hspeed(__layerid);
            __vspeed = layer_get_vspeed(__layerid);
            __background_set_element(__bind, __visible, __val, __index, __x, __y, __htiled, __vtiled, __xscale, __yscale, __stretch, __hspeed, __vspeed, __blend, __alpha);
        }
    }
    else
    {
        switch (__prop)
        {
            case e__BG.Visible:
                layer_set_visible(__layerid, __val);
                layer_background_visible(__backid, __val);
                break;
            
            case e__BG.Index:
                layer_background_change(__backid, __val);
                
                if (sprite_exists(__val))
                {
                    layer_background_blend(__backid, c_white);
                    layer_background_alpha(__backid, 1);
                }
                
                break;
            
            case e__BG.X:
                layer_x(__layerid, __val);
                break;
            
            case e__BG.Y:
                layer_y(__layerid, __val);
                break;
            
            case e__BG.HTiled:
                layer_background_htiled(__backid, __val);
                break;
            
            case e__BG.VTiled:
                layer_background_vtiled(__backid, __val);
                break;
            
            case e__BG.XScale:
                layer_background_xscale(__backid, __val);
                break;
            
            case e__BG.YScale:
                layer_background_yscale(__backid, __val);
                break;
            
            case e__BG.HSpeed:
                layer_hspeed(__layerid, __val);
                break;
            
            case e__BG.VSpeed:
                layer_vspeed(__layerid, __val);
                break;
            
            case e__BG.Blend:
                layer_background_blend(__backid, __val);
                break;
            
            case e__BG.Alpha:
                layer_background_alpha(__backid, __val);
                break;
            
            default:
                break;
        }
    }
    
    return -1;
}
