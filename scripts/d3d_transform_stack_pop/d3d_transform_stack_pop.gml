function d3d_transform_stack_pop()
{
    var m = matrix_stack_top();
    matrix_stack_pop();
    matrix_set(2, m);
}
