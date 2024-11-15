function d3d_vertex_normal(argument0, argument1, argument2, argument3, argument4, argument5)
{
    vertex_position_3d(global.__d3dPrimBuffer, argument0, argument1, argument2);
    vertex_normal(global.__d3dPrimBuffer, argument3, argument4, argument5);
    vertex_colour(global.__d3dPrimBuffer, draw_get_colour(), draw_get_alpha());
    vertex_texcoord(global.__d3dPrimBuffer, 0, 0);
}
