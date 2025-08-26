function d3d_transform_vertex(arg0, arg1, arg2)
{
    var m = matrix_get(2);
    return matrix_transform_vertex(m, arg0, arg1, arg2);
}
