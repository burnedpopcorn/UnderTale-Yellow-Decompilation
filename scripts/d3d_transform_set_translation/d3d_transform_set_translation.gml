function d3d_transform_set_translation(argument0, argument1, argument2)
{
    var m;
    
    m = matrix_build_identity();
    m[12] = argument0;
    m[13] = argument1;
    m[14] = argument2;
    matrix_set(2, m);
}
