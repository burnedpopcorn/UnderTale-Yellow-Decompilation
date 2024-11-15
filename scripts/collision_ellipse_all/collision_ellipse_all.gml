function collision_ellipse_all(argument0, argument1, argument2, argument3, argument4, argument5, argument6)
{
    var _a, _n, _h, _id, _i;
    
    _a = undefined;
    _n = 0;
    _h = abs(argument1 - argument3);
    _id = collision_ellipse(argument0, argument1, argument2, argument3, argument4, argument5, argument6);
    
    while (_id)
    {
        with (_id)
        {
            _a[_n] = id;
            _n++;
            y -= (abs(sprite_height) + _h);
        }
        
        _id = collision_ellipse(argument0, argument1, argument2, argument3, argument4, argument5, argument6);
    }
    
    for (_i = 0; _i < _n; _i++)
    {
        with (_a[_i])
            y += (abs(sprite_height) + _h);
    }
    
    return _a;
}
