function d3d_transform_add_translation(argument0, argument1, argument2)
{
    var mT, m, mR;
    
    mT = matrix_build_identity();
    mT[12] = argument0;
    mT[13] = argument1;
    mT[14] = argument2;
    m = matrix_get(2);
    mR = matrix_multiply(m, mT);
    matrix_set(2, mR);
}
