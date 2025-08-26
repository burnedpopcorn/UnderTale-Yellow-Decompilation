function instance_position_all(arg0, arg1, arg2)
{
    var _a = undefined;
    var _n = 0;
    var _id = instance_position(arg0, arg1, arg2);
    
    while (_id)
    {
        with (_id)
        {
            _a[_n] = id;
            _n++;
            y -= abs(sprite_height);
        }
        
        _id = instance_position(arg0, arg1, arg2);
    }
    
    for (var _i = 0; _i < _n; _i++)
    {
        with (_a[_i])
            y += abs(sprite_height);
    }
    
    return _a;
}
