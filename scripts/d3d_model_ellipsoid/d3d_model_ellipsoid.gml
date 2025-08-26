function d3d_model_ellipsoid(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
{
    var __ind = arg0;
    var __x1 = arg1;
    var __y1 = arg2;
    var __z1 = arg3;
    var __x2 = arg4;
    var __y2 = arg5;
    var __z2 = arg6;
    var __hrepeat = arg7;
    var __vrepeat = arg8;
    var __steps = arg9;
    
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
    var __mz = (__z2 + __z1) / 2;
    var __rx = (__x2 - __x1) / 2;
    var __ry = (__y2 - __y1) / 2;
    var __rz = (__z2 - __z1) / 2;
    var __rows = (__steps + 1) / 2;
    
    for (var __j = 0; __j <= (__rows - 1); __j++)
    {
        var __row1rad = (__j * pi) / __rows;
        var __row2rad = ((__j + 1) * pi) / __rows;
        var __rh1 = cos(__row1rad);
        var __rd1 = sin(__row1rad);
        var __rh2 = cos(__row2rad);
        var __rd2 = sin(__row2rad);
        d3d_model_primitive_begin(__ind, 5);
        
        for (var __i = 0; __i <= __steps; __i++)
        {
            d3d_model_vertex_normal_texture(__ind, __mx + (__rx * __rd1 * __cc[__i]), __my + (__ry * __rd1 * __ss[__i]), __mz + (__rz * __rh1), __rd1 * __cc[__i], __rd1 * __ss[__i], __rh1, (__hrepeat * __i) / __steps, (__j * __vrepeat) / __rows);
            d3d_model_vertex_normal_texture(__ind, __mx + (__rx * __rd2 * __cc[__i]), __my + (__ry * __rd2 * __ss[__i]), __mz + (__rz * __rh2), __rd2 * __cc[__i], __rd2 * __ss[__i], __rh2, (__hrepeat * __i) / __steps, ((__j + 1) * __vrepeat) / __rows);
        }
        
        d3d_model_primitive_end(__ind);
    }
}
