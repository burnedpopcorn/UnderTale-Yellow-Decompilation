function array_pack()
{
    var array, i;
    
    array = array_create(argument_count);
    
    for (i = 0; i < argument_count; i++)
        array[i] = argument[i];
    
    return array;
}
