function d3d_draw_cone(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
{
    var __x1 = arg0;
    var __y1 = arg1;
    var __z1 = arg2;
    var __x2 = arg3;
    var __y2 = arg4;
    var __z2 = arg5;
    var __tex = arg6;
    var __hrepeat = arg7;
    var __vrepeat = arg8;
    var __closed = arg9;
    var __steps = arg10;
    
    if (__steps < 3)
        __steps = 3;
    
    if (__steps > 128)
        __steps = 128;
    
    var __cc;
    __cc[__steps] = 0;
    var __ss;
    __ss[__steps] = 0;
    
    for (var __i = 0; __i <= __steps; __i++)
    {
        var __rad = (__i * 2 * pi) / __steps;
        __cc[__i] = cos(__rad);
        __ss[__i] = sin(__rad);
    }
    
    var __mx = (__x2 + __x1) / 2;
    var __my = (__y2 + __y1) / 2;
    var __rx = (__x2 - __x1) / 2;
    var __ry = (__y2 - __y1) / 2;
    var __oldrep = gpu_get_texrepeat();
    gpu_set_texrepeat(true);
    d3d_primitive_begin_texture(5, __tex);
    
    for (var __i = 0; __i <= __steps; __i++)
    {
        d3d_vertex_normal_texture(__mx, __my, __z2, 0, 0, 1, (__hrepeat * __i) / __steps, __vrepeat);
        d3d_vertex_normal_texture(__mx + (__cc[__i] * __rx), __my + (__ss[__i] * __ry), __z1, __cc[__i], __ss[__i], 0, (__hrepeat * __i) / __steps, 0);
    }
    
    d3d_primitive_end();
    
    if (__closed == true)
    {
        d3d_primitive_begin_texture(6, __tex);
        d3d_vertex_normal_texture(__mx, __my, __z1, 0, 0, -1, 0, 0);
        
        for (var __i = __steps; __i >= 0; __i--)
            d3d_vertex_normal_texture(__mx + (__cc[__i] * __rx), __my + (__ss[__i] * __ry), __z1, 0, 0, -1, 0, 0);
        
        d3d_primitive_end();
    }
    
    gpu_set_texrepeat(__oldrep);
}
