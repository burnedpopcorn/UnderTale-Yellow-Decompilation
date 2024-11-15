function d3d_transform_set_rotation_axis(argument0, argument1, argument2, argument3)
{
    var c, s, omc, xx, yy, zz, length2, length, m;
    
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
    m[0] = (omc * xx * xx) + c;
    m[1] = (omc * xx * yy) + (s * zz);
    m[2] = (omc * xx * zz) - (s * yy);
    m[3] = 0;
    m[4] = (omc * xx * yy) - (s * zz);
    m[5] = (omc * yy * yy) + c;
    m[6] = (omc * yy * zz) + (s * xx);
    m[7] = 0;
    m[8] = (omc * xx * zz) + (s * yy);
    m[9] = (omc * yy * zz) - (s * xx);
    m[10] = (omc * zz * zz) + c;
    m[11] = 0;
    m[12] = 0;
    m[13] = 0;
    m[14] = 0;
    m[15] = 1;
    matrix_set(2, m);
}
