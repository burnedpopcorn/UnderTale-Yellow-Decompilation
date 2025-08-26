function scr_normalize(arg0)
{
    vector_length = sqrt(sqr(arg0[0]) + sqr(arg0[1]));
    
    if (arg0[0] != 0)
        arg0[0] = arg0[0] / vector_length;
    
    if (arg0[1] != 0)
        arg0[1] = arg0[1] / vector_length;
    
    output_vector = [arg0[0], arg0[1]];
    return output_vector;
}
