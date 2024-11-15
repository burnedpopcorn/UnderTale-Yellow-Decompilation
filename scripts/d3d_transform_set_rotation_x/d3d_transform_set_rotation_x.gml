function d3d_transform_set_rotation_x(argument0)
{
    var c, s, m;
    
    c = dcos(argument0);
    s = dsin(argument0);
    m = matrix_build_identity();
    m[5] = c;
    m[6] = -s;
    m[9] = s;
    m[10] = c;
    matrix_set(2, m);
}
