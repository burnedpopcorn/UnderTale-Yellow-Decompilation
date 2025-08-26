function collision_circle_all(arg0, arg1, arg2, arg3, arg4, arg5)
{
    var _a = undefined;
    var _n = 0;
    var _h = abs(arg2);
    var _id = collision_circle(arg0, arg1, arg2, arg3, arg4, arg5);
    
    while (_id)
    {
        with (_id)
        {
            _a[_n] = id;
            _n++;
            y -= (abs(sprite_height) + _h);
        }
        
        _id = collision_circle(arg0, arg1, arg2, arg3, arg4, arg5);
    }
    
    for (var _i = 0; _i < _n; _i++)
    {
        with (_a[_i])
            y += (abs(sprite_height) + _h);
    }
    
    return _a;
}
