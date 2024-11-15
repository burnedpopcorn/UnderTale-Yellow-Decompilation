function d3d_vertex_normal_colour(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7)
{
    vertex_position_3d(global.__d3dPrimBuffer, argument0, argument1, argument2);
    vertex_normal(global.__d3dPrimBuffer, argument3, argument4, argument5);
    vertex_colour(global.__d3dPrimBuffer, argument6, argument7);
    vertex_texcoord(global.__d3dPrimBuffer, 0, 0);
}
