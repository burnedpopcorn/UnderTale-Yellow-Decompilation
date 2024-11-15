function d3d_transform_set_rotation_y(argument0)
{
    var c, s, m;
    
    c = dcos(argument0);
    s = dsin(argument0);
    m = matrix_build_identity();
    m[0] = c;
    m[2] = s;
    m[8] = -s;
    m[10] = c;
    matrix_set(2, m);
}
