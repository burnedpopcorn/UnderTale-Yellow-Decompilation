function collision_circle_all(argument0, argument1, argument2, argument3, argument4, argument5)
{
    var _a, _n, _h, _id, _i;
    
    _a = undefined;
    _n = 0;
    _h = abs(argument2);
    _id = collision_circle(argument0, argument1, argument2, argument3, argument4, argument5);
    
    while (_id)
    {
        with (_id)
        {
            _a[_n] = id;
            _n++;
            y -= (abs(sprite_height) + _h);
        }
        
        _id = collision_circle(argument0, argument1, argument2, argument3, argument4, argument5);
    }
    
    for (_i = 0; _i < _n; _i++)
    {
        with (_a[_i])
            y += (abs(sprite_height) + _h);
    }
    
    return _a;
}
