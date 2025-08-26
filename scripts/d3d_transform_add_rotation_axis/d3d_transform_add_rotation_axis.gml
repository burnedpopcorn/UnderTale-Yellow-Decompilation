function d3d_transform_add_rotation_axis(arg0, arg1, arg2, arg3)
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
    var mT;
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
    var m = matrix_get(2);
    var mR = matrix_multiply(m, mT);
    matrix_set(2, mR);
}
