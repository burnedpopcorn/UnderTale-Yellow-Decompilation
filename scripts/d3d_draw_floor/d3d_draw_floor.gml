function d3d_draw_floor(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8)
{
    var __x1, __y1, __z1, __x2, __y2, __z2, __tex, __hrepeat, __vrepeat, __xdiff, __zdiff, __lsquared, __l, __nx, __nz, __oldrep;
    
    __x1 = argument0;
    __y1 = argument1;
    __z1 = argument2;
    __x2 = argument3;
    __y2 = argument4;
    __z2 = argument5;
    __tex = argument6;
    __hrepeat = argument7;
    __vrepeat = argument8;
    __xdiff = __x2 - __x1;
    __zdiff = __z2 - __z1;
    __lsquared = (__xdiff * __xdiff) + (__zdiff * __zdiff);
    
    if (__lsquared == 0)
        return 0;
    
    __l = sqrt(__lsquared);
    __nx = -__zdiff / __l;
    __nz = __xdiff / __l;
    __oldrep = gpu_get_texrepeat();
    gpu_set_texrepeat(true);
    d3d_primitive_begin_texture(6, __tex);
    d3d_vertex_normal_texture(__x1, __y1, __z1, __nx, 0, __nz, 0, 0);
    d3d_vertex_normal_texture(__x1, __y2, __z1, __nx, 0, __nz, 0, __vrepeat);
    d3d_vertex_normal_texture(__x2, __y2, __z2, __nx, 0, __nz, __hrepeat, __vrepeat);
    d3d_vertex_normal_texture(__x2, __y1, __z2, __nx, 0, __nz, __hrepeat, 0);
    d3d_primitive_end();
    gpu_set_texrepeat(__oldrep);
}
