function d3d_model_cone(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9, argument10)
{
    var __ind, __x1, __y1, __z1, __x2, __y2, __z2, __hrepeat, __vrepeat, __closed, __steps, __i, __rad, __mx, __my, __rx, __ry;
    
    __ind = argument0;
    __x1 = argument1;
    __y1 = argument2;
    __z1 = argument3;
    __x2 = argument4;
    __y2 = argument5;
    __z2 = argument6;
    __hrepeat = argument7;
    __vrepeat = argument8;
    __closed = argument9;
    __steps = argument10;
    
    if (__steps < 3)
        __steps = 3;
    
    if (__steps > 128)
        __steps = 128;
    
    __cc[__steps] = 0;
    __ss[__steps] = 0;
    
    for (__i = 0; __i <= __steps; __i++)
    {
        __rad = (__i * 2 * pi) / __steps;
        __cc[__i] = cos(__rad);
        __ss[__i] = sin(__rad);
    }
    
    __mx = (__x2 + __x1) / 2;
    __my = (__y2 + __y1) / 2;
    __rx = (__x2 - __x1) / 2;
    __ry = (__y2 - __y1) / 2;
    d3d_model_primitive_begin(__ind, 5);
    
    for (__i = 0; __i <= __steps; __i++)
    {
        d3d_model_vertex_normal_texture(__ind, __mx, __my, __z2, 0, 0, 1, (__hrepeat * __i) / __steps, __vrepeat);
        d3d_model_vertex_normal_texture(__ind, __mx + (__cc[__i] * __rx), __my + (__ss[__i] * __ry), __z1, __cc[__i], __ss[__i], 0, (__hrepeat * __i) / __steps, 0);
    }
    
    d3d_model_primitive_end(__ind);
    
    if (__closed == true)
    {
        d3d_model_primitive_begin(__ind, 6);
        d3d_model_vertex_normal_texture(__ind, __mx, __my, __z1, 0, 0, -1, 0, 0);
        
        for (__i = __steps; __i >= 0; __i--)
            d3d_model_vertex_normal_texture(__ind, __mx + (__cc[__i] * __rx), __my + (__ss[__i] * __ry), __z1, 0, 0, -1, 0, 0);
        
        d3d_model_primitive_end(__ind);
    }
}
