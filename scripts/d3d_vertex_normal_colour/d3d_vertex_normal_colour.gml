function d3d_vertex_normal_colour(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7)
{
    vertex_position_3d(global.__d3dPrimBuffer, arg0, arg1, arg2);
    vertex_normal(global.__d3dPrimBuffer, arg3, arg4, arg5);
    vertex_colour(global.__d3dPrimBuffer, arg6, arg7);
    vertex_texcoord(global.__d3dPrimBuffer, 0, 0);
}
