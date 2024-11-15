function unstick_from()
{
    var _dir, _len, _x, _y, _offset;
    
    _dir = 0;
    _len = 0;
    _x = x;
    _y = y;
    _offset = round(irandom(359) / (360 / argument[0])) * (360 / argument[0]);
    
    while (place_meeting(x, y, argument[1]))
    {
        x = _x;
        y = _y;
        x += round(lengthdir_x(_len, _dir + _offset));
        y += round(lengthdir_y(_len, _dir + _offset));
        _dir += (360 / argument[0]);
        
        if (_dir >= 360)
        {
            _dir -= 360;
            _len++;
        }
    }
    
    if (argument_count > 2 && _len > argument[2])
    {
        _dir = point_direction(x, y, _x, _y);
        x = _x;
        y = _y;
        x += round(lengthdir_x(argument[2], _dir));
        y += round(lengthdir_y(argument[2], _dir));
    }
    
    return _len;
}
