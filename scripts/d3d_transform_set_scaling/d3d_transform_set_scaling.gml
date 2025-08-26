function d3d_transform_set_scaling(arg0, arg1, arg2)
{
    var m = matrix_build_identity();
    m[0] = arg0;
    m[5] = arg1;
    m[10] = arg2;
    matrix_set(2, m);
}
