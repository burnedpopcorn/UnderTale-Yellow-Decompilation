function instance_position_all(argument0, argument1, argument2)
{
    var _a, _n, _id, _i;
    
    _a = undefined;
    _n = 0;
    _id = instance_position(argument0, argument1, argument2);
    
    while (_id)
    {
        with (_id)
        {
            _a[_n] = id;
            _n++;
            y -= abs(sprite_height);
        }
        
        _id = instance_position(argument0, argument1, argument2);
    }
    
    for (_i = 0; _i < _n; _i++)
    {
        with (_a[_i])
            y += abs(sprite_height);
    }
    
    return _a;
}
