function d3d_transform_add_rotation_y(argument0)
{
    var c, s, mT, m, mR;
    
    c = dcos(argument0);
    s = dsin(argument0);
    mT = matrix_build_identity();
    mT[0] = c;
    mT[2] = s;
    mT[8] = -s;
    mT[10] = c;
    m = matrix_get(2);
    mR = matrix_multiply(m, mT);
    matrix_set(2, mR);
}
