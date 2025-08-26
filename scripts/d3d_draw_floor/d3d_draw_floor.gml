function d3d_draw_floor(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
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
    var __zdiff = __z2 - __z1;
    var __lsquared = (__xdiff * __xdiff) + (__zdiff * __zdiff);
    
    if (__lsquared == 0)
        return 0;
    
    var __l = sqrt(__lsquared);
    var __nx = -__zdiff / __l;
    var __nz = __xdiff / __l;
    var __oldrep = gpu_get_texrepeat();
    gpu_set_texrepeat(true);
    d3d_primitive_begin_texture(6, __tex);
    d3d_vertex_normal_texture(__x1, __y1, __z1, __nx, 0, __nz, 0, 0);
    d3d_vertex_normal_texture(__x1, __y2, __z1, __nx, 0, __nz, 0, __vrepeat);
    d3d_vertex_normal_texture(__x2, __y2, __z2, __nx, 0, __nz, __hrepeat, __vrepeat);
    d3d_vertex_normal_texture(__x2, __y1, __z2, __nx, 0, __nz, __hrepeat, 0);
    d3d_primitive_end();
    gpu_set_texrepeat(__oldrep);
}
