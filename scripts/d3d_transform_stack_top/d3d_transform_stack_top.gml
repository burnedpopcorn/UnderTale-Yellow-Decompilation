function d3d_transform_stack_top()
{
    var m;
    
    m = matrix_stack_top();
    matrix_set(2, m);
}
