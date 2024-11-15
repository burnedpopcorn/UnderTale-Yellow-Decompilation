function d3d_vertex_texture(argument0, argument1, argument2, argument3, argument4)
{
    vertex_position_3d(global.__d3dPrimBuffer, argument0, argument1, argument2);
    vertex_normal(global.__d3dPrimBuffer, 0, 0, 0);
    vertex_colour(global.__d3dPrimBuffer, draw_get_colour(), draw_get_alpha());
    vertex_texcoord(global.__d3dPrimBuffer, (argument3 * global.__d3dPrimTexW) + global.__d3dPrimTexX, (argument4 * global.__d3dPrimTexH) + global.__d3dPrimTexY);
}
