function d3d_transform_stack_push()
{
    var m;
    
    m = matrix_get(2);
    matrix_stack_push();
    matrix_stack_set(m);
    return true;
}
