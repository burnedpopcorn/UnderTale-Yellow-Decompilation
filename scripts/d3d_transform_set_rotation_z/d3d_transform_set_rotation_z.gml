function d3d_transform_set_rotation_z(argument0)
{
    var c, s, m;
    
    c = dcos(argument0);
    s = dsin(argument0);
    m = matrix_build_identity();
    m[0] = c;
    m[1] = -s;
    m[4] = s;
    m[5] = c;
    matrix_set(2, m);
}
