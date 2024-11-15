function box_collision_all(argument0, argument1, argument2)
{
    var _x, _y, _hw, _hh, _a, _n;
    
    if (((bbox_right - bbox_left) * (bbox_bottom - bbox_top)) == 0)
        return undefined;
    
    _x = ((bbox_right + 1 + bbox_left) * 0.5) + (argument0 - x);
    _y = ((bbox_bottom + 1 + bbox_top) * 0.5) + (argument1 - y);
    _hw = ((bbox_right + 1) - bbox_left) * 0.5;
    _hh = ((bbox_bottom + 1) - bbox_top) * 0.5;
    _a = undefined;
    _n = 0;
    
    with (argument2)
    {
        if (id != other.id && ((bbox_right - bbox_left) * (bbox_bottom - bbox_top)) != 0 && (_hw + (((bbox_right + 1) - bbox_left) * 0.5)) > abs(((bbox_right + 1 + bbox_left) * 0.5) - _x) && (_hh + (((bbox_bottom + 1) - bbox_top) * 0.5)) > abs(((bbox_bottom + 1 + bbox_top) * 0.5) - _y))
        {
            _a[_n] = id;
            _n++;
        }
    }
    
    return _a;
}
