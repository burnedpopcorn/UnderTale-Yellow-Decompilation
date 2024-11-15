function d3d_model_ellipsoid(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9)
{
    var __ind, __x1, __y1, __z1, __x2, __y2, __z2, __hrepeat, __vrepeat, __steps, __i, __rad, __mx, __my, __mz, __rx, __ry, __rz, __rows, __j, __row1rad, __row2rad, __rh1, __rd1, __rh2, __rd2;
    
    __ind = argument0;
    __x1 = argument1;
    __y1 = argument2;
    __z1 = argument3;
    __x2 = argument4;
    __y2 = argument5;
    __z2 = argument6;
    __hrepeat = argument7;
    __vrepeat = argument8;
    __steps = argument9;
    
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
    __mz = (__z2 + __z1) / 2;
    __rx = (__x2 - __x1) / 2;
    __ry = (__y2 - __y1) / 2;
    __rz = (__z2 - __z1) / 2;
    __rows = (__steps + 1) / 2;
    
    for (__j = 0; __j <= (__rows - 1); __j++)
    {
        __row1rad = (__j * pi) / __rows;
        __row2rad = ((__j + 1) * pi) / __rows;
        __rh1 = cos(__row1rad);
        __rd1 = sin(__row1rad);
        __rh2 = cos(__row2rad);
        __rd2 = sin(__row2rad);
        d3d_model_primitive_begin(__ind, 5);
        
        for (__i = 0; __i <= __steps; __i++)
        {
            d3d_model_vertex_normal_texture(__ind, __mx + (__rx * __rd1 * __cc[__i]), __my + (__ry * __rd1 * __ss[__i]), __mz + (__rz * __rh1), __rd1 * __cc[__i], __rd1 * __ss[__i], __rh1, (__hrepeat * __i) / __steps, (__j * __vrepeat) / __rows);
            d3d_model_vertex_normal_texture(__ind, __mx + (__rx * __rd2 * __cc[__i]), __my + (__ry * __rd2 * __ss[__i]), __mz + (__rz * __rh2), __rd2 * __cc[__i], __rd2 * __ss[__i], __rh2, (__hrepeat * __i) / __steps, ((__j + 1) * __vrepeat) / __rows);
        }
        
        d3d_model_primitive_end(__ind);
    }
}
