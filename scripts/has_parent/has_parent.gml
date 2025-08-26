function has_parent(arg0, arg1)
{
    var _obj = arg0;
    
    if (!object_exists(_obj))
        _obj = arg0.object_index;
    
    if (_obj == arg1 || object_is_ancestor(_obj, arg1))
        return true;
    
    return false;
}
