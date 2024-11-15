function d3d_transform_add_scaling(argument0, argument1, argument2)
{
    var mT, m, mR;
    
    mT = matrix_build_identity();
    mT[0] = argument0;
    mT[5] = argument1;
    mT[10] = argument2;
    m = matrix_get(2);
    mR = matrix_multiply(m, mT);
    matrix_set(2, mR);
}
