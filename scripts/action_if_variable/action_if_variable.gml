function action_if_variable(arg0, arg1, arg2)
{
    var ret = false;
    
    switch (arg2)
    {
        case 1:
            ret = arg0 < arg1;
            break;
        
        case 2:
            ret = arg0 > arg1;
            break;
        
        case 3:
            ret = arg0 <= arg1;
            break;
        
        case 4:
            ret = arg0 >= arg1;
            break;
        
        default:
            ret = arg0 == arg1;
            break;
    }
    
    return ret;
}
