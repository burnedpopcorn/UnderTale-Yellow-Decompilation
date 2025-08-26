function d3d_draw_wall(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
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
    var __xdiff = __x2 - __x1;
    var __ydiff = __y2 - __y1;
    var __lsquared = (__xdiff * __xdiff) + (__ydiff * __ydiff);
    
    if (__lsquared == 0)
        return 0;
    
    var __l = sqrt(__lsquared);
    var __nx = __ydiff / __l;
    var __ny = -__xdiff / __l;
    var __oldrep = gpu_get_texrepeat();
    gpu_set_texrepeat(true);
    d3d_primitive_begin_texture(6, __tex);
    d3d_vertex_normal_texture(__x1, __y1, __z1, __nx, __ny, 0, 0, 0);
    d3d_vertex_normal_texture(__x2, __y2, __z1, __nx, __ny, 0, __hrepeat, 0);
    d3d_vertex_normal_texture(__x2, __y2, __z2, __nx, __ny, 0, __hrepeat, __vrepeat);
    d3d_vertex_normal_texture(__x1, __y1, __z2, __nx, __ny, 0, 0, __vrepeat);
    d3d_primitive_end();
    gpu_set_texrepeat(__oldrep);
}
