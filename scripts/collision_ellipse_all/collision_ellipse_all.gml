function collision_ellipse_all(arg0, arg1, arg2, arg3, arg4, arg5, arg6)
{
    var _a = undefined;
    var _n = 0;
    var _h = abs(arg1 - arg3);
    var _id = collision_ellipse(arg0, arg1, arg2, arg3, arg4, arg5, arg6);
    
    while (_id)
    {
        with (_id)
        {
            _a[_n] = id;
            _n++;
            y -= (abs(sprite_height) + _h);
        }
        
        _id = collision_ellipse(arg0, arg1, arg2, arg3, arg4, arg5, arg6);
    }
    
    for (var _i = 0; _i < _n; _i++)
    {
        with (_a[_i])
            y += (abs(sprite_height) + _h);
    }
    
    return _a;
}
