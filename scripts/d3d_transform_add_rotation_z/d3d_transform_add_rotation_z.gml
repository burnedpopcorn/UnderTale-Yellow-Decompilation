function d3d_transform_add_rotation_z(argument0)
{
    var c, s, mT, m, mR;
    
    c = dcos(argument0);
    s = dsin(argument0);
    mT = matrix_build_identity();
    mT[0] = c;
    mT[1] = -s;
    mT[4] = s;
    mT[5] = c;
    m = matrix_get(2);
    mR = matrix_multiply(m, mT);
    matrix_set(2, mR);
}
