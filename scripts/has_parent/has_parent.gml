function has_parent(argument0, argument1)
{
    var _obj;
    
    _obj = argument0;
    
    if (!object_exists(_obj))
        _obj = argument0.object_index;
    
    if (_obj == argument1 || object_is_ancestor(_obj, argument1))
        return true;
    
    return false;
}
