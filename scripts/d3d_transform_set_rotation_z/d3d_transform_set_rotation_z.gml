function d3d_transform_set_rotation_z(arg0)
{
    var c = dcos(arg0);
    var s = dsin(arg0);
    var m = matrix_build_identity();
    m[0] = c;
    m[1] = -s;
    m[4] = s;
    m[5] = c;
    matrix_set(2, m);
}
