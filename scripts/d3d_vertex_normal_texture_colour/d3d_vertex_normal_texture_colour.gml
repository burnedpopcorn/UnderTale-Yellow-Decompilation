function d3d_vertex_normal_texture_colour(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9)
{
    vertex_position_3d(global.__d3dPrimBuffer, argument0, argument1, argument2);
    vertex_normal(global.__d3dPrimBuffer, argument3, argument4, argument5);
    vertex_colour(global.__d3dPrimBuffer, argument8, argument9);
    vertex_texcoord(global.__d3dPrimBuffer, (argument6 * global.__d3dPrimTexW) + global.__d3dPrimTexX, (argument7 * global.__d3dPrimTexH) + global.__d3dPrimTexY);
}
