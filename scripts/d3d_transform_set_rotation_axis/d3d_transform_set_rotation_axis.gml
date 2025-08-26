function d3d_transform_set_rotation_axis(arg0, arg1, arg2, arg3)
{
    var c = dcos(-arg3);
    var s = dsin(-arg3);
    var omc = 1 - c;
    var xx = arg0;
    var yy = arg1;
    var zz = arg2;
    var length2 = sqr(xx) + sqr(yy) + sqr(zz);
    var length = sqrt(length2);
    xx /= length;
    yy /= length;
    zz /= length;
    var m;
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
