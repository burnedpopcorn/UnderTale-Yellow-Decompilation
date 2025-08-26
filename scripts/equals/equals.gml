function equals()
{
    var _dt;
    
    if (is_ptr(argument[0]))
        _dt = 3;
    else if (is_array(argument[0]))
        _dt = 2;
    else if (is_string(argument[0]))
        _dt = 1;
    else if (is_real(argument[0]))
        _dt = 0;
    else if (is_undefined(argument[0]))
        _dt = -1;
    
    for (var _i = 1; _i < argument_count; _i++)
    {
        if ((is_ptr(argument[_i]) && _dt == 3) || (is_array(argument[_i]) && _dt == 2) || (is_string(argument[_i]) && _dt == 1) || (is_real(argument[_i]) && _dt == 0) || (is_undefined(argument[_i]) && _dt == -1))
        {
            if (argument[0] != argument[_i])
                return false;
        }
        else
        {
            return false;
        }
    }
    
    return true;
}
