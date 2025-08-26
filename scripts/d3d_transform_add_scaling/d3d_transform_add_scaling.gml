function d3d_transform_add_scaling(arg0, arg1, arg2)
{
    var mT = matrix_build_identity();
    mT[0] = arg0;
    mT[5] = arg1;
    mT[10] = arg2;
    var m = matrix_get(2);
    var mR = matrix_multiply(m, mT);
    matrix_set(2, mR);
}
