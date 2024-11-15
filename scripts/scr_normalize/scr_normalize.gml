function scr_normalize(argument0)
{
    vector_length = sqrt(sqr(argument0[0]) + sqr(argument0[1]));
    
    if (argument0[0] != 0)
        argument0[0] = argument0[0] / vector_length;
    
    if (argument0[1] != 0)
        argument0[1] = argument0[1] / vector_length;
    
    output_vector = [argument0[0], argument0[1]];
    return output_vector;
}
