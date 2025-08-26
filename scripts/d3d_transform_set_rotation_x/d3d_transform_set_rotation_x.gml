function d3d_transform_set_rotation_x(arg0)
{
    var c = dcos(arg0);
    var s = dsin(arg0);
    var m = matrix_build_identity();
    m[5] = c;
    m[6] = -s;
    m[9] = s;
    m[10] = c;
    matrix_set(2, m);
}
