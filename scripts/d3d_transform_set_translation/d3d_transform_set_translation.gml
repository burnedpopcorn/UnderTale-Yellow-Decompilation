function d3d_transform_set_translation(arg0, arg1, arg2)
{
    var m = matrix_build_identity();
    m[12] = arg0;
    m[13] = arg1;
    m[14] = arg2;
    matrix_set(2, m);
}
