function array_pack()
{
    var array = array_create(argument_count);
    
    for (var i = 0; i < argument_count; i++)
        array[i] = argument[i];
    
    return array;
}
