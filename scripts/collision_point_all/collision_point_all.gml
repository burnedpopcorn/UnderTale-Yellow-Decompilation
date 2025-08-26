function collision_point_all(arg0, arg1, arg2, arg3, arg4)
{
    var _a = undefined;
    var _n = 0;
    var _id = collision_point(arg0, arg1, arg2, arg3, arg4);
    
    while (_id)
    {
        with (_id)
        {
            _a[_n] = id;
            _n++;
            y -= abs(sprite_height);
        }
        
        _id = collision_point(arg0, arg1, arg2, arg3, arg4);
    }
    
    for (var _i = 0; _i < _n; _i++)
    {
        with (_a[_i])
            y += abs(sprite_height);
    }
    
    return _a;
}
