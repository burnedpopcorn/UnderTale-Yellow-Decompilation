function d3d_vertex_texture(arg0, arg1, arg2, arg3, arg4)
{
    vertex_position_3d(global.__d3dPrimBuffer, arg0, arg1, arg2);
    vertex_normal(global.__d3dPrimBuffer, 0, 0, 0);
    vertex_colour(global.__d3dPrimBuffer, draw_get_colour(), draw_get_alpha());
    vertex_texcoord(global.__d3dPrimBuffer, (arg3 * global.__d3dPrimTexW) + global.__d3dPrimTexX, (arg4 * global.__d3dPrimTexH) + global.__d3dPrimTexY);
}
