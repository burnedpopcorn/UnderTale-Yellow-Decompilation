function d3d_vertex_normal_texture_colour(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
{
    vertex_position_3d(global.__d3dPrimBuffer, arg0, arg1, arg2);
    vertex_normal(global.__d3dPrimBuffer, arg3, arg4, arg5);
    vertex_colour(global.__d3dPrimBuffer, arg8, arg9);
    vertex_texcoord(global.__d3dPrimBuffer, (arg6 * global.__d3dPrimTexW) + global.__d3dPrimTexX, (arg7 * global.__d3dPrimTexH) + global.__d3dPrimTexY);
}
