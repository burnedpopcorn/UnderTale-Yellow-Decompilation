function map()
{
    var __val = argument[0];
    __val -= argument[1];
    
    if (argument[1] != argument[2] && argument[3] != argument[4])
        __val = (__val / (argument[2] - argument[1])) * (argument[4] - argument[3]);
    
    __val += argument[3];
    
    if (argument_count > 5 && argument[5])
        __val = clamp(__val, min(argument[3], argument[4]), max(argument[3], argument[4]));
    
    return __val;
}
