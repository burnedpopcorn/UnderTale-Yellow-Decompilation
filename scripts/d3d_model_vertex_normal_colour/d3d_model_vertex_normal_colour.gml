function d3d_model_vertex_normal_colour(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
{
    __d3d_model_add_vertex(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7 + ((arg8 * 255) << 24), 0, 0);
}
