function d3d_transform_add_rotation_axis(argument0, argument1, argument2, argument3)
{
    var c, s, omc, xx, yy, zz, length2, length, m, mT, mR;
    
    c = dcos(-argument3);
    s = dsin(-argument3);
    omc = 1 - c;
    xx = argument0;
    yy = argument1;
    zz = argument2;
    length2 = sqr(xx) + sqr(yy) + sqr(zz);
    length = sqrt(length2);
    xx /= length;
    yy /= length;
    zz /= length;
    mT[0] = (omc * xx * xx) + c;
    mT[1] = (omc * xx * yy) + (s * zz);
    mT[2] = (omc * xx * zz) - (s * yy);
    mT[3] = 0;
    mT[4] = (omc * xx * yy) - (s * zz);
    mT[5] = (omc * yy * yy) + c;
    mT[6] = (omc * yy * zz) + (s * xx);
    mT[7] = 0;
    mT[8] = (omc * xx * zz) + (s * yy);
    mT[9] = (omc * yy * zz) - (s * xx);
    mT[10] = (omc * zz * zz) + c;
    mT[11] = 0;
    mT[12] = 0;
    mT[13] = 0;
    mT[14] = 0;
    mT[15] = 1;
    m = matrix_get(2);
    mR = matrix_multiply(m, mT);
    matrix_set(2, mR);
}
